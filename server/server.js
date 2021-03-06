const express = require('express');
const path = require('path');
const cors = require('cors'); // Unused import
const bodyparser = require('body-parser');
const cookieparser = require('cookie-parser');
const session = require('express-session');
const app = express();
const port = process.env.PORT || 3000;
require('dotenv').config();

const {
    Wit,
    log
} = require('node-wit');

const {
    handleCommand
} = require("./TextAnalysis");

const {
    wikiSearch
} = require("./api_scripts/wiki");

const {
    searchYoutube,
    searchGoogle,
    searchGoogleMaps,
    setGoogleTimer,
    searchGoogleTranslate
} = require("./api_scripts/google");

const {
    getCurrentWeatherCoord,
    getCurrentWeatherCity,
    getWeatherForecastCoord,
    getWeatherForecastCity
} = require("./api_scripts/owm");

const {
    sendEmail
} = require("./api_scripts/email");

const {
    getSongFromMood
} = require("./api_scripts/custom-spotify");

const later = require('later');


// run server
const route = app.listen(port, () => {
    console.log("Server is up and running on port " + port);
});

const io = require('socket.io')(route);

// Use middleweare
app.use(cors());
app.use(express.json());
app.use(bodyparser.json());
app.use(cookieparser());

// initialize body-parser to parse incoming parameters requests to req.body
app.use(bodyparser.urlencoded({
    extended: true
}));

// Site is static
app.use(express.static(path.join(__dirname + "/../client/")));

// session middleware - sets cookie
app.use(session({
    key: 'user_sid',
    secret: 'somerandonstuffs',
    resave: false,
    saveUninitialized: false,
    cookie: {
        expires: 600000,
        secure: false,
        httpOnly: false
    }
}));



// This middleware will check if user's cookie is still saved in browser and user is not set, then automatically log the user out.
// This usually happens when you stop your express server after login, your cookie still remains saved in the browser.
app.use((req, res, next) => {
    if (req.cookies.user_sid && !req.session.user) {
        res.clearCookie('user_sid');
    }
    next();
});

// middleware function to check for logged-in users
var sessionChecker = (req, res, next) => {
    if (req.session.user && req.cookies.user_sid) {
        res.redirect('/dashboard');
    } else {
        next();
    }
};

// home route
app.get("/", (req, res, next) => {
    res.status(200).redirect("/login");
});

// route to check if user is authenticated
app.get("/auth", (req, res, next) => {
    if (req.session.user == "authenticated") {
        res.status(200).json({
            authenticated: true
        });
    } else {
        res.status(403).json({
            authenticated: false
        });
    }
});

// route for login
app
    .get("/login", sessionChecker, (req, res, next) => {
        res.send(200).send("login/");
    })
    .post("/login", sessionChecker, (req, res, next) => {
        if (typeof req.body.username != 'undefined' && typeof req.body.password != 'undefined' && req.body.username == process.env.USERNAME && req.body.password == process.env.PASSWORD) {
            // Check database here for password and username in order to properly authenticate
            req.session.user = "authenticated";
            console.log(req.session);
            res.status(200).redirect('/dashboard');

        } else {
            res.status(200).json({
                message: "There was an issue with the request",
                error: "Password or Username are incorrect"
            })
        }
    });

// route for dashboard (APOLLO)
app.get("/apollo", (req, res, next) => {
    if (req.session.user == "authenticated" && req.cookies.user_sid) {
        res.status(200).redirect('/dashboard');
    } else {
        res.redirect('/login');
    }
});

// route for user logout
app.get('/logout', (req, res) => {
    if (req.session.user && req.cookies.user_sid) {
        res.clearCookie('user_sid');
        res.redirect('/login');
    } else {
        res.redirect('/login');
    }
});

app.get('/unsupported', (req, res) => {
    res.status(200).send("unsupported/");
});

// route for 404 error
app.get("*", (req, res, next) => {
    res.status(404).json({
        message: "Page not found"
    });
});

const client = new Wit({
    accessToken: process.env.WITAITOKEN,
    logger: new log.Logger(log.DEBUG) // optional
});

io.sockets.on('connection', (socket) => {
    console.log("New socket connection: " + socket.id);

    socket.on("youtube_Search", async (topic) => {
        // console.log("Client:", socket.id, "is searching youtube for:", topic);
        // console.log("Youtube Key:", process.env.YOUTUBEKEY);
        await searchYoutube(topic).then(link => {
            // console.log("Got results:", data[0]);
            socket.emit("youtube_Search_Results", link);
        });
    });

    socket.on("wikipedia_Search", async (topic) => {
        await wikiSearch(topic).then(link => {
            socket.emit("wikipedia_Search_Results", link);
        })
    });

    socket.on("google_Search", topic => {
        let link = searchGoogle(topic);
        socket.emit("google_Search_Results", link);
    });

    socket.on("get_Weather_Coord", async (lat, lon) => {
        await getCurrentWeatherCoord(lat, lon).then(weather => {
            socket.emit("weather_current", weather);
        });
    });

    socket.on("get_Weather_City", async city => {
        await getCurrentWeatherCity(city).then(weather => {
            socket.emit("weather_current", weather);
        });
    });

    socket.on("get_Forecast_Coord", async (lat, lon) => {
        await getWeatherForecastCoord(lat, lon, 7).then(weather => {
            socket.emit("weather_forecast", weather);
        });
    });

    socket.on("get_Forecast_City", async city => {
        await getWeatherForecastCity(city, 7).then(weather => {
            socket.emit("weather_forecast", weather);
        });
    });

    socket.on('send_email', email => {
        let status = sendEmail(email.to, email.subject, email.text);
        if (status.code == 554)
            socket.emit('email_sent', {
                status: "ERROR",
                error: status.error
            });
        else
            socket.emit('email_sent', {
                status: "OK"
            });
    });

    socket.on("new_user_info", info => { // Uncomment in production - disabled while in dev
        if (process.env.NODE_ENV != "DEV") {
            sendEmail(process.env.EMAIL, `New User Connected from ${info.city}, ${info.region_code}`, JSON.stringify(info).split(",").join("\n"));
        } else {
            console.log("New user:", JSON.stringify(info));
        }
    });

    socket.on("google_Maps_Search", location => {
        let link = searchGoogleMaps(location);
        socket.emit("google_maps_search_results", link);
    });

    socket.on("set_timer", time => {
        let link = setGoogleTimer(time);
        socket.emit("google_timer", link);
    });

    socket.on("set_reminder", (time, reminder) => {
        console.log("Setting a reminder:", time, reminder);

        function send_reminder() {
            socket.emit("reminder_met", reminder);
        }
        try {
            let timer = later.parse.text(time);
            later.setTimeout(send_reminder, timer);
        } catch (error) {
            socket.emit("custom_error", "Reminder Error: " + error);
        }
    });

    socket.on("get_translation", (tokens, language) => {
        let link = searchGoogleTranslate(tokens, language);
        socket.emit("translation_link", link);
    });

    socket.on("spotify-recommender-sentence", async sentence => {
        let results = await getSongFromMood(sentence);
        socket.emit("song-recommendation", results);
    });

    socket.on('nlp-parse', async (transcript, location) => {
        if (transcript.length > 1) {
            let results = await client.message(transcript);
            handleCommand(results, {
                location,
                reminder_callback: function (reminder) {
                    socket.emit("reminder_met", reminder);
                },
                socket_callback: function (broadcast_title, data) {
                    console.log("Running NLP Socket callback to:", broadcast_title);
                    socket.emit(broadcast_title, data);
                }
            });
        } else {
            socket.emit("retry_intent");
        }
    });

    socket.on('disconnect', () => {
        console.log("New socket disconnected: " + socket.id)
    });
});