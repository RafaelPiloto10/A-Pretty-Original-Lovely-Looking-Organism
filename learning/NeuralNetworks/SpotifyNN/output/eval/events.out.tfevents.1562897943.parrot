       ŁK"	  ŔűI×Abrain.Event:2/ŰrĐŚ     QÔuŰ	OüËűI×A"ĂÍ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
ś
enqueue_input/fifo_queueFIFOQueueV2"/device:CPU:0*
_output_shapes
: *
component_types
2	*
shapes

: : : : *
shared_name *
capacityč*
	container 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
shape:*
dtype0	*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
shape:*
dtype0*
_output_shapes
:

$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3"/device:CPU:0*
Tcomponents
2	*

timeout_ms˙˙˙˙˙˙˙˙˙
v
enqueue_input/fifo_queue_CloseQueueCloseV2enqueue_input/fifo_queue"/device:CPU:0*
cancel_pending_enqueues( 
x
 enqueue_input/fifo_queue_Close_1QueueCloseV2enqueue_input/fifo_queue"/device:CPU:0*
cancel_pending_enqueues(
m
enqueue_input/fifo_queue_SizeQueueSizeV2enqueue_input/fifo_queue"/device:CPU:0*
_output_shapes
: 
d
enqueue_input/sub/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
|
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
_output_shapes
: *
T0

enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
g
enqueue_input/mul/yConst"/device:CPU:0*
valueB
 *o:*
dtype0*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
ĺ
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst"/device:CPU:0*Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full*
dtype0*
_output_shapes
: 
ë
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
j
fifo_queue_DequeueUpTo/nConst"/device:CPU:0*
value
B :*
dtype0*
_output_shapes
: 
ů
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n"/device:CPU:0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
component_types
2	*

timeout_ms˙˙˙˙˙˙˙˙˙
Ň
=linear/linear_model/polarity/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0

+linear/linear_model/polarity/weights/part_0VarHandleOp*
	container *
shape
:*
dtype0*
_output_shapes
: *<
shared_name-+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
§
Llinear/linear_model/polarity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
˙
2linear/linear_model/polarity/weights/part_0/AssignAssignVariableOp+linear/linear_model/polarity/weights/part_0=linear/linear_model/polarity/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
ë
?linear/linear_model/polarity/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
Ú
Alinear/linear_model/subjectivity/weights/part_0/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:

/linear/linear_model/subjectivity/weights/part_0VarHandleOp*@
shared_name1/linear/linear_model/subjectivity/weights/part_0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: 
Ż
Plinear/linear_model/subjectivity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 

6linear/linear_model/subjectivity/weights/part_0/AssignAssignVariableOp/linear/linear_model/subjectivity/weights/part_0Alinear/linear_model/subjectivity/weights/part_0/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
÷
Clinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
Â
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
ó
'linear/linear_model/bias_weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
ď
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
Ű
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
î
Alinear/linear_model/linear_model/linear_model/polarity/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:1Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
×
;linear/linear_model/linear_model/linear_model/polarity/CastCastAlinear/linear_model/linear_model/linear_model/polarity/ExpandDims*

SrcT0*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
ˇ
<linear/linear_model/linear_model/linear_model/polarity/ShapeShape;linear/linear_model/linear_model/linear_model/polarity/Cast*
T0*
out_type0*
_output_shapes
:

Jlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Dlinear/linear_model/linear_model/linear_model/polarity/strided_sliceStridedSlice<linear/linear_model/linear_model/linear_model/polarity/ShapeJlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackLlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

Flinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

Dlinear/linear_model/linear_model/linear_model/polarity/Reshape/shapePackDlinear/linear_model/linear_model/linear_model/polarity/strided_sliceFlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

>linear/linear_model/linear_model/linear_model/polarity/ReshapeReshape;linear/linear_model/linear_model/linear_model/polarity/CastDlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

3linear/linear_model/polarity/weights/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:

$linear/linear_model/polarity/weightsIdentity3linear/linear_model/polarity/weights/ReadVariableOp*
T0*
_output_shapes

:

Clinear/linear_model/linear_model/linear_model/polarity/weighted_sumMatMul>linear/linear_model/linear_model/linear_model/polarity/Reshape$linear/linear_model/polarity/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ö
Elinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:2Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
ß
?linear/linear_model/linear_model/linear_model/subjectivity/CastCastElinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0
ż
@linear/linear_model/linear_model/linear_model/subjectivity/ShapeShape?linear/linear_model/linear_model/linear_model/subjectivity/Cast*
T0*
out_type0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
 
Hlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/subjectivity/ShapeNlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackPlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

Jlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
 
Hlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceJlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

Blinear/linear_model/linear_model/linear_model/subjectivity/ReshapeReshape?linear/linear_model/linear_model/linear_model/subjectivity/CastHlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
§
7linear/linear_model/subjectivity/weights/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:

(linear/linear_model/subjectivity/weightsIdentity7linear/linear_model/subjectivity/weights/ReadVariableOp*
T0*
_output_shapes

:

Glinear/linear_model/linear_model/linear_model/subjectivity/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshape(linear/linear_model/subjectivity/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNClinear/linear_model/linear_model/linear_model/polarity/weighted_sumGlinear/linear_model/linear_model/linear_model/subjectivity/weighted_sum*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
ô
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
f
linear/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ľ
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
_output_shapes
: *
T0

3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
f
$linear/zero_fraction/total_size/SizeConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ľ
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
¤
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1*
N*
_output_shapes
: *
T0	
g
%linear/zero_fraction/total_zero/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
_output_shapes
: *
T0	
Ź
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: : 

3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 

3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 

2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: 
Ť
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
Ö
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:

Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch+linear/linear_model/polarity/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: : 
ľ
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
Ŕ
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R˙˙˙˙*
dtype0	*
_output_shapes
: 
ő
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
ů
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
ť
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
š
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
_output_shapes
: *
T0

ś
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
ß
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
ť
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
ö
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
ë
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
:*
valueB"       
Ă
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
ĺ
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*
Truncate( *
_output_shapes
: *

DstT0	*

SrcT0
á
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
ż
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
ú
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*
Truncate( *
_output_shapes

:*

DstT0	*

SrcT0

í
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
É
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 

Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
ű
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
é
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ů
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ľ
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ă
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
ľ
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
ů
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
_output_shapes
: : *
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size
Í
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
T0*
_output_shapes
: 
Ç
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
˘
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
˛
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: : *
T0


5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
Ż
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Ú
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
¨
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch/linear/linear_model/subjectivity/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
_output_shapes
: : *
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
š
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
Ä
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R˙˙˙˙*
dtype0	*
_output_shapes
: 
ű
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
˙
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
ż
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

˝
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
ş
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
ă
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Á
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
ú
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*
Truncate( *
_output_shapes

:*

DstT0*

SrcT0

ď
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
É
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
é
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
ĺ
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
Ĺ
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:*
T0

_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
ţ
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
ń
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Ď
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0

Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	

Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
í
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ý
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ť
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ç
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
š
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	

;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
Ó
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
_output_shapes
: *
T0
Í
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
T0*
N*
_output_shapes
: : 
ź
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge*
N*
_output_shapes
: *
T0

)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ą
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
˘
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
_output_shapes
: *
T0

linear/head/logits/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
_output_shapes
:*
T0*
out_type0
n
,linear/head/logits/assert_rank_at_least/rankConst*
dtype0*
_output_shapes
: *
value	B :
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
l
!linear/head/labels/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ś
linear/head/labels/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:3!linear/head/labels/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
linear/head/labels/ShapeShapelinear/head/labels/ExpandDims*
T0*
out_type0*
_output_shapes
:

linear/head/labels/Shape_1Shape:linear/linear_model/linear_model/linear_model/weighted_sum*
_output_shapes
:*
T0*
out_type0
n
,linear/head/labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 

-linear/head/labels/assert_rank_at_least/ShapeShapelinear/head/labels/ExpandDims*
T0*
out_type0*
_output_shapes
:
^
Vlinear/head/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
ş
&linear/head/labels/strided_slice/stackConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
Ĺ
(linear/head/labels/strided_slice/stack_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ź
(linear/head/labels/strided_slice/stack_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
Ţ
 linear/head/labels/strided_sliceStridedSlicelinear/head/labels/Shape_1&linear/head/labels/strided_slice/stack(linear/head/labels/strided_slice/stack_1(linear/head/labels/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
ś
"linear/head/labels/concat/values_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB:
Ş
linear/head/labels/concat/axisConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *
value	B : 
Ĺ
linear/head/labels/concatConcatV2 linear/head/labels/strided_slice"linear/head/labels/concat/values_1linear/head/labels/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:

%linear/head/labels/assert_equal/EqualEquallinear/head/labels/concatlinear/head/labels/Shape*
T0*
_output_shapes
:
š
%linear/head/labels/assert_equal/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB: 
­
#linear/head/labels/assert_equal/AllAll%linear/head/labels/assert_equal/Equal%linear/head/labels/assert_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Î
,linear/head/labels/assert_equal/Assert/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *(
valueB Bexpected_labels_shape: 
Ç
.linear/head/labels/assert_equal/Assert/Const_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *
valueB Blabels_shape: 
Ö
4linear/head/labels/assert_equal/Assert/Assert/data_0ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Í
4linear/head/labels/assert_equal/Assert/Assert/data_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 

-linear/head/labels/assert_equal/Assert/AssertAssert#linear/head/labels/assert_equal/All4linear/head/labels/assert_equal/Assert/Assert/data_0linear/head/labels/concat4linear/head/labels/assert_equal/Assert/Assert/data_2linear/head/labels/Shape*
T
2*
	summarize
é
linear/head/labelsIdentitylinear/head/labels/ExpandDims.^linear/head/labels/assert_equal/Assert/AssertH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/head/ToFloatCastlinear/head/labels*

SrcT0*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
Č
0linear/head/mean_squared_error/SquaredDifferenceSquaredDifference:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloat*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;linear/head/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Alinear/head/mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

@linear/head/mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
°
@linear/head/mean_squared_error/assert_broadcastable/values/shapeShape0linear/head/mean_squared_error/SquaredDifference*
_output_shapes
:*
T0*
out_type0

?linear/head/mean_squared_error/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
W
Olinear/head/mean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
ź
%linear/head/mean_squared_error/Cast/xConstP^linear/head/mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
´
"linear/head/mean_squared_error/MulMul0linear/head/mean_squared_error/SquaredDifference%linear/head/mean_squared_error/Cast/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
6linear/head/weighted_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

<linear/head/weighted_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
}
;linear/head/weighted_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

;linear/head/weighted_loss/assert_broadcastable/values/shapeShape"linear/head/mean_squared_error/Mul*
_output_shapes
:*
T0*
out_type0
|
:linear/head/weighted_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
Jlinear/head/weighted_loss/assert_broadcastable/static_scalar_check_successNoOp
˛
 linear/head/weighted_loss/Cast/xConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

linear/head/weighted_loss/MulMul"linear/head/mean_squared_error/Mul linear/head/weighted_loss/Cast/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
linear/head/weighted_loss/ConstConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
:*
valueB"       
˘
linear/head/weighted_loss/SumSumlinear/head/weighted_loss/Mullinear/head/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

#linear/mean/total/Initializer/zerosConst*
valueB
 *    *$
_class
loc:@linear/mean/total*
dtype0*
_output_shapes
: 

linear/mean/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *$
_class
loc:@linear/mean/total*
	container *
shape: 
Ę
linear/mean/total/AssignAssignlinear/mean/total#linear/mean/total/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@linear/mean/total*
validate_shape(*
_output_shapes
: 
|
linear/mean/total/readIdentitylinear/mean/total*
_output_shapes
: *
T0*$
_class
loc:@linear/mean/total

#linear/mean/count/Initializer/zerosConst*
valueB
 *    *$
_class
loc:@linear/mean/count*
dtype0*
_output_shapes
: 

linear/mean/count
VariableV2*
shared_name *$
_class
loc:@linear/mean/count*
	container *
shape: *
dtype0*
_output_shapes
: 
Ę
linear/mean/count/AssignAssignlinear/mean/count#linear/mean/count/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@linear/mean/count*
validate_shape(*
_output_shapes
: 
|
linear/mean/count/readIdentitylinear/mean/count*
T0*$
_class
loc:@linear/mean/count*
_output_shapes
: 
V
linear/mean/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

@linear/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 

?linear/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ą
?linear/mean/broadcast_weights/assert_broadcastable/values/shapeShape"linear/head/mean_squared_error/Mul*
T0*
out_type0*
_output_shapes
:

>linear/mean/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
V
Nlinear/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
ŕ
-linear/mean/broadcast_weights/ones_like/ShapeShape"linear/head/mean_squared_error/MulO^linear/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ă
-linear/mean/broadcast_weights/ones_like/ConstConstO^linear/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ń
'linear/mean/broadcast_weights/ones_likeFill-linear/mean/broadcast_weights/ones_like/Shape-linear/mean/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/mean/broadcast_weightsMullinear/mean/Const'linear/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/mean/MulMul"linear/head/mean_squared_error/Mullinear/mean/broadcast_weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
linear/mean/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

linear/mean/SumSumlinear/mean/broadcast_weightslinear/mean/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
d
linear/mean/Const_2Const*
valueB"       *
dtype0*
_output_shapes
:
|
linear/mean/Sum_1Sumlinear/mean/Mullinear/mean/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
˘
linear/mean/AssignAdd	AssignAddlinear/mean/totallinear/mean/Sum_1*
use_locking( *
T0*$
_class
loc:@linear/mean/total*
_output_shapes
: 
´
linear/mean/AssignAdd_1	AssignAddlinear/mean/countlinear/mean/Sum^linear/mean/Mul*
use_locking( *
T0*$
_class
loc:@linear/mean/count*
_output_shapes
: 
Z
linear/mean/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
n
linear/mean/MaximumMaximumlinear/mean/count/readlinear/mean/Maximum/y*
T0*
_output_shapes
: 
k
linear/mean/valueDivNoNanlinear/mean/total/readlinear/mean/Maximum*
T0*
_output_shapes
: 
\
linear/mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
s
linear/mean/Maximum_1Maximumlinear/mean/AssignAdd_1linear/mean/Maximum_1/y*
T0*
_output_shapes
: 
p
linear/mean/update_opDivNoNanlinear/mean/AssignAddlinear/mean/Maximum_1*
_output_shapes
: *
T0
u
0linear/prediction/mean/broadcast_weights/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

Klinear/prediction/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Jlinear/prediction/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ä
Jlinear/prediction/mean/broadcast_weights/assert_broadcastable/values/shapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
out_type0*
_output_shapes
:

Ilinear/prediction/mean/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
a
Ylinear/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp

8linear/prediction/mean/broadcast_weights/ones_like/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sumZ^linear/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
Ů
8linear/prediction/mean/broadcast_weights/ones_like/ConstConstZ^linear/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ň
2linear/prediction/mean/broadcast_weights/ones_likeFill8linear/prediction/mean/broadcast_weights/ones_like/Shape8linear/prediction/mean/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
(linear/prediction/mean/broadcast_weightsMul0linear/prediction/mean/broadcast_weights/weights2linear/prediction/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
.linear/prediction/mean/total/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@linear/prediction/mean/total*
dtype0*
_output_shapes
: 
ą
linear/prediction/mean/total
VariableV2*
shared_name */
_class%
#!loc:@linear/prediction/mean/total*
	container *
shape: *
dtype0*
_output_shapes
: 
ö
#linear/prediction/mean/total/AssignAssignlinear/prediction/mean/total.linear/prediction/mean/total/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@linear/prediction/mean/total*
validate_shape(*
_output_shapes
: 

!linear/prediction/mean/total/readIdentitylinear/prediction/mean/total*
T0*/
_class%
#!loc:@linear/prediction/mean/total*
_output_shapes
: 
¤
.linear/prediction/mean/count/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@linear/prediction/mean/count*
dtype0*
_output_shapes
: 
ą
linear/prediction/mean/count
VariableV2*
shared_name */
_class%
#!loc:@linear/prediction/mean/count*
	container *
shape: *
dtype0*
_output_shapes
: 
ö
#linear/prediction/mean/count/AssignAssignlinear/prediction/mean/count.linear/prediction/mean/count/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@linear/prediction/mean/count*
validate_shape(*
_output_shapes
: 

!linear/prediction/mean/count/readIdentitylinear/prediction/mean/count*
T0*/
_class%
#!loc:@linear/prediction/mean/count*
_output_shapes
: 
ľ
Mlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape(linear/prediction/mean/broadcast_weights*
T0*
out_type0*
_output_shapes
:

Llinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ć
Llinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
_output_shapes
:*
T0*
out_type0

Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 

Ilinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualKlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ý
Wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityWlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ű
Wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityUlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Î
Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 

Wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*\
_classR
PNloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 

ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqual|linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch~linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Ž
|linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchKlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*^
_classT
RPloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 
˛
~linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank

olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityqlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityolinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

plinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

Č
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ĺ
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimslinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
Č
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::*
T0
¤
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchplinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
Ď
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
Ŕ
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ß
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFilllinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapelinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*

index_type0*
_output_shapes

:*
T0
ź
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ŕ
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimslinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likelinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
Ę
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ë
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimslinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
Ě
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchMlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*`
_classV
TRloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape
Š
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchplinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*`
_classV
TRloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
˛
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
validate_indices(*
T0*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
Ű
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizelinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
ą
{linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B : 
­
ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqual{linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankplinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_class~
|zloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeqlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
Ô
Tlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergenlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeYlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
­
Elinear/prediction/mean/broadcast_weights_1/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
˛
Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*;
value2B0 B*linear/prediction/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 

Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ä
Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*M
valueDBB B<linear/linear_model/linear_model/linear_model/weighted_sum:0*
dtype0*
_output_shapes
: 

Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ť
Rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
×
Tlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

Ő
Tlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityRlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Ö
Slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Ż
Plinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t

^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tQ^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*g
_class]
[Yloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
˙
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *;
value2B0 B*linear/prediction/mean/broadcast_weights:0
ţ
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
­
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*M
valueDBB B<linear/linear_model/linear_model/linear_model/weighted_sum:0*
dtype0*
_output_shapes
: 
ű
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertYlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchYlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*g
_class]
[Yloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchMlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*`
_classV
TRloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape

[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*\
_classR
PNloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Ą
`linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fS^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*g
_class]
[Yloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
Č
Qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMerge`linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 

:linear/prediction/mean/broadcast_weights_1/ones_like/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sumR^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ó
:linear/prediction/mean/broadcast_weights_1/ones_like/ConstConstR^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
ř
4linear/prediction/mean/broadcast_weights_1/ones_likeFill:linear/prediction/mean/broadcast_weights_1/ones_like/Shape:linear/prediction/mean/broadcast_weights_1/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
*linear/prediction/mean/broadcast_weights_1Mul(linear/prediction/mean/broadcast_weights4linear/prediction/mean/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
linear/prediction/mean/MulMul:linear/linear_model/linear_model/linear_model/weighted_sum*linear/prediction/mean/broadcast_weights_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
linear/prediction/mean/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Š
linear/prediction/mean/SumSum*linear/prediction/mean/broadcast_weights_1linear/prediction/mean/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
o
linear/prediction/mean/Const_1Const*
dtype0*
_output_shapes
:*
valueB"       

linear/prediction/mean/Sum_1Sumlinear/prediction/mean/Mullinear/prediction/mean/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Î
 linear/prediction/mean/AssignAdd	AssignAddlinear/prediction/mean/totallinear/prediction/mean/Sum_1*
T0*/
_class%
#!loc:@linear/prediction/mean/total*
_output_shapes
: *
use_locking( 
ë
"linear/prediction/mean/AssignAdd_1	AssignAddlinear/prediction/mean/countlinear/prediction/mean/Sum^linear/prediction/mean/Mul*
use_locking( *
T0*/
_class%
#!loc:@linear/prediction/mean/count*
_output_shapes
: 
e
 linear/prediction/mean/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    

linear/prediction/mean/MaximumMaximum!linear/prediction/mean/count/read linear/prediction/mean/Maximum/y*
T0*
_output_shapes
: 

linear/prediction/mean/valueDivNoNan!linear/prediction/mean/total/readlinear/prediction/mean/Maximum*
T0*
_output_shapes
: 
g
"linear/prediction/mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

 linear/prediction/mean/Maximum_1Maximum"linear/prediction/mean/AssignAdd_1"linear/prediction/mean/Maximum_1/y*
T0*
_output_shapes
: 

 linear/prediction/mean/update_opDivNoNan linear/prediction/mean/AssignAdd linear/prediction/mean/Maximum_1*
T0*
_output_shapes
: 

linear/mean_1/CastCastfifo_queue_DequeueUpTo:3*

SrcT0*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

%linear/mean_1/total/Initializer/zerosConst*
valueB
 *    *&
_class
loc:@linear/mean_1/total*
dtype0*
_output_shapes
: 

linear/mean_1/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *&
_class
loc:@linear/mean_1/total*
	container *
shape: 
Ň
linear/mean_1/total/AssignAssignlinear/mean_1/total%linear/mean_1/total/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@linear/mean_1/total*
validate_shape(*
_output_shapes
: 

linear/mean_1/total/readIdentitylinear/mean_1/total*
_output_shapes
: *
T0*&
_class
loc:@linear/mean_1/total

%linear/mean_1/count/Initializer/zerosConst*
valueB
 *    *&
_class
loc:@linear/mean_1/count*
dtype0*
_output_shapes
: 

linear/mean_1/count
VariableV2*
shared_name *&
_class
loc:@linear/mean_1/count*
	container *
shape: *
dtype0*
_output_shapes
: 
Ň
linear/mean_1/count/AssignAssignlinear/mean_1/count%linear/mean_1/count/Initializer/zeros*
T0*&
_class
loc:@linear/mean_1/count*
validate_shape(*
_output_shapes
: *
use_locking(

linear/mean_1/count/readIdentitylinear/mean_1/count*
_output_shapes
: *
T0*&
_class
loc:@linear/mean_1/count
X
linear/mean_1/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Blinear/mean_1/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Alinear/mean_1/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Alinear/mean_1/broadcast_weights/assert_broadcastable/values/shapeShapelinear/mean_1/Cast*
T0*
out_type0*
_output_shapes
:

@linear/mean_1/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
X
Plinear/mean_1/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ô
/linear/mean_1/broadcast_weights/ones_like/ShapeShapelinear/mean_1/CastQ^linear/mean_1/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ç
/linear/mean_1/broadcast_weights/ones_like/ConstConstQ^linear/mean_1/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ó
)linear/mean_1/broadcast_weights/ones_likeFill/linear/mean_1/broadcast_weights/ones_like/Shape/linear/mean_1/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/mean_1/broadcast_weightsMullinear/mean_1/Const)linear/mean_1/broadcast_weights/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
{
linear/mean_1/MulMullinear/mean_1/Castlinear/mean_1/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
linear/mean_1/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

linear/mean_1/SumSumlinear/mean_1/broadcast_weightslinear/mean_1/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
_
linear/mean_1/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

linear/mean_1/Sum_1Sumlinear/mean_1/Mullinear/mean_1/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Ş
linear/mean_1/AssignAdd	AssignAddlinear/mean_1/totallinear/mean_1/Sum_1*
use_locking( *
T0*&
_class
loc:@linear/mean_1/total*
_output_shapes
: 
ž
linear/mean_1/AssignAdd_1	AssignAddlinear/mean_1/countlinear/mean_1/Sum^linear/mean_1/Mul*
use_locking( *
T0*&
_class
loc:@linear/mean_1/count*
_output_shapes
: 
\
linear/mean_1/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
t
linear/mean_1/MaximumMaximumlinear/mean_1/count/readlinear/mean_1/Maximum/y*
T0*
_output_shapes
: 
q
linear/mean_1/valueDivNoNanlinear/mean_1/total/readlinear/mean_1/Maximum*
T0*
_output_shapes
: 
^
linear/mean_1/Maximum_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
y
linear/mean_1/Maximum_1Maximumlinear/mean_1/AssignAdd_1linear/mean_1/Maximum_1/y*
_output_shapes
: *
T0
v
linear/mean_1/update_opDivNoNanlinear/mean_1/AssignAddlinear/mean_1/Maximum_1*
T0*
_output_shapes
: 

mean/total/Initializer/zerosConst*
valueB
 *    *
_class
loc:@mean/total*
dtype0*
_output_shapes
: 


mean/total
VariableV2*
shared_name *
_class
loc:@mean/total*
	container *
shape: *
dtype0*
_output_shapes
: 
Ž
mean/total/AssignAssign
mean/totalmean/total/Initializer/zeros*
T0*
_class
loc:@mean/total*
validate_shape(*
_output_shapes
: *
use_locking(
g
mean/total/readIdentity
mean/total*
T0*
_class
loc:@mean/total*
_output_shapes
: 

mean/count/Initializer/zerosConst*
valueB
 *    *
_class
loc:@mean/count*
dtype0*
_output_shapes
: 


mean/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean/count*
	container *
shape: 
Ž
mean/count/AssignAssign
mean/countmean/count/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean/count*
validate_shape(*
_output_shapes
: 
g
mean/count/readIdentity
mean/count*
_output_shapes
: *
T0*
_class
loc:@mean/count
K
	mean/SizeConst*
dtype0*
_output_shapes
: *
value	B :
\
	mean/CastCast	mean/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
M

mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
x
mean/SumSumlinear/head/weighted_loss/Sum
mean/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
use_locking( *
T0*
_class
loc:@mean/total*
_output_shapes
: 
§
mean/AssignAdd_1	AssignAdd
mean/count	mean/Cast^linear/head/weighted_loss/Sum*
use_locking( *
T0*
_class
loc:@mean/count*
_output_shapes
: 
S
mean/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
mean/MaximumMaximummean/count/readmean/Maximum/y*
T0*
_output_shapes
: 
V

mean/valueDivNoNanmean/total/readmean/Maximum*
T0*
_output_shapes
: 
U
mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
mean/Maximum_1Maximummean/AssignAdd_1mean/Maximum_1/y*
T0*
_output_shapes
: 
[
mean/update_opDivNoNanmean/AssignAddmean/Maximum_1*
T0*
_output_shapes
: 
x

group_depsNoOp^linear/mean/update_op^linear/mean_1/update_op!^linear/prediction/mean/update_op^mean/update_op
{
eval_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@eval_step

	eval_step
VariableV2*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@eval_step
Ş
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
T0	*
_class
loc:@eval_step*
validate_shape(*
_output_shapes
: *
use_locking(
d
eval_step/readIdentity	eval_step*
_output_shapes
: *
T0	*
_class
loc:@eval_step
Q
AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@eval_step
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
T0	*
_output_shapes
: 
Ŕ
initNoOp^global_step/Assign/^linear/linear_model/bias_weights/part_0/Assign3^linear/linear_model/polarity/weights/part_0/Assign7^linear/linear_model/subjectivity/weights/part_0/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step

1report_uninitialized_variables/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 

3report_uninitialized_variables/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 

3report_uninitialized_variables/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
­
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlinear/mean/total*$
_class
loc:@linear/mean/total*
dtype0*
_output_shapes
: 
­
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlinear/mean/count*$
_class
loc:@linear/mean/count*
dtype0*
_output_shapes
: 
Ă
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlinear/prediction/mean/total*/
_class%
#!loc:@linear/prediction/mean/total*
dtype0*
_output_shapes
: 
Ă
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlinear/prediction/mean/count*/
_class%
#!loc:@linear/prediction/mean/count*
dtype0*
_output_shapes
: 
ą
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlinear/mean_1/total*&
_class
loc:@linear/mean_1/total*
dtype0*
_output_shapes
: 
ą
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlinear/mean_1/count*&
_class
loc:@linear/mean_1/count*
dtype0*
_output_shapes
: 

6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitialized
mean/total*
_class
loc:@mean/total*
dtype0*
_output_shapes
: 

6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitialized
mean/count*
_class
loc:@mean/count*
dtype0*
_output_shapes
: 

6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized	eval_step*
dtype0	*
_output_shapes
: *
_class
loc:@eval_step
Ŕ
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized1report_uninitialized_variables/VarIsInitializedOp3report_uninitialized_variables/VarIsInitializedOp_13report_uninitialized_variables/VarIsInitializedOp_26report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_9"/device:CPU:0*
T0
*

axis *
N*
_output_shapes
:

)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:
Ŕ
$report_uninitialized_variables/ConstConst"/device:CPU:0*Ř
valueÎBËBglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0Blinear/mean/totalBlinear/mean/countBlinear/prediction/mean/totalBlinear/prediction/mean/countBlinear/mean_1/totalBlinear/mean_1/countB
mean/totalB
mean/countB	eval_step*
dtype0*
_output_shapes
:

1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
č
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask 
ž
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
÷
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
Ú
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ę
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
_output_shapes
:*
T0
*
Tshape0
˛
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
×
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Tparams0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*

batch_dims *
Tindices0	
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ž
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
T0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
Ą
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step

3report_uninitialized_variables_1/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 

5report_uninitialized_variables_1/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 

5report_uninitialized_variables_1/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
Ň
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized3report_uninitialized_variables_1/VarIsInitializedOp5report_uninitialized_variables_1/VarIsInitializedOp_15report_uninitialized_variables_1/VarIsInitializedOp_2"/device:CPU:0*
T0
*

axis *
N*
_output_shapes
:

+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:

&report_uninitialized_variables_1/ConstConst"/device:CPU:0*Š
valueBBglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ň
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask 

5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
Â
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
ŕ
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
đ
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:
ś
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
*
T0	

;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ß
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Taxis0*

batch_dims *
Tindices0	*
Tparams0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
&report_uninitialized_resources_1/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
O
concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ć
concat_1ConcatV26report_uninitialized_variables_1/boolean_mask/GatherV2&report_uninitialized_resources_1/Constconcat_1/axis*
T0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

init_2NoOp^eval_step/Assign^linear/mean/count/Assign^linear/mean/total/Assign^linear/mean_1/count/Assign^linear/mean_1/total/Assign$^linear/prediction/mean/count/Assign$^linear/prediction/mean/total/Assign^mean/count/Assign^mean/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_2NoOp^init_2^init_3^init_all_tables
ť
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fulllinear/biaslinear/fraction_of_zero_weights*
N*
_output_shapes
: 
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
|
save/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes
:

save/Read_1/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:

save/Read_2/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes

:

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_08a18fd9f2f54c34af22f57bfab80ea3/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_3/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
k
save/Identity_6Identitysave/Read_3/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
`
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
_output_shapes
:*
T0

save/Read_4/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
o
save/Identity_8Identitysave/Read_4/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
_output_shapes

:*
T0

save/Read_5/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_10Identitysave/Read_5/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:
ă
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
value|BzB linear/linear_model/bias_weightsB$linear/linear_model/polarity/weightsB(linear/linear_model/subjectivity/weights*
dtype0*
_output_shapes
:

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*4
value+B)B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
Á
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_7save/Identity_9save/Identity_11"/device:CPU:0*
dtypes
2
¨
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
ŕ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
¨
save/Identity_12Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:* 
valueBBglobal_step
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:

save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
(
save/restore_shardNoOp^save/Assign
ć
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
value|BzB linear/linear_model/bias_weightsB$linear/linear_model/polarity/weightsB(linear/linear_model/subjectivity/weights*
dtype0*
_output_shapes
:

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*4
value+B)B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1
˝
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*.
_output_shapes
:::
b
save/Identity_13Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOpAssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_13"/device:CPU:0*
dtype0
h
save/Identity_14Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_1AssignVariableOp+linear/linear_model/polarity/weights/part_0save/Identity_14"/device:CPU:0*
dtype0
h
save/Identity_15Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_2AssignVariableOp/linear/linear_model/subjectivity/weights/part_0save/Identity_15"/device:CPU:0*
dtype0
w
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"&h˛ůA     ˝~	4MÎűI×AJě	
)ô(
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
š
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
Ž
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint˙˙˙˙˙˙˙˙˙"
	containerstring "
shared_namestring 
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	


LogicalNot
x

y

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( 

QueueDequeueUpToV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
&
QueueSizeV2

handle
size
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	
*1.14.02v1.14.0-rc1-22-gaf24dc9ĂÍ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
ś
enqueue_input/fifo_queueFIFOQueueV2"/device:CPU:0*
	container *
_output_shapes
: *
component_types
2	*
shapes

: : : : *
shared_name *
capacityč
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
shape:*
dtype0	*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
_output_shapes
:*
shape:*
dtype0

$enqueue_input/fifo_queue_EnqueueManyQueueEnqueueManyV2enqueue_input/fifo_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3"/device:CPU:0*
Tcomponents
2	*

timeout_ms˙˙˙˙˙˙˙˙˙
v
enqueue_input/fifo_queue_CloseQueueCloseV2enqueue_input/fifo_queue"/device:CPU:0*
cancel_pending_enqueues( 
x
 enqueue_input/fifo_queue_Close_1QueueCloseV2enqueue_input/fifo_queue"/device:CPU:0*
cancel_pending_enqueues(
m
enqueue_input/fifo_queue_SizeQueueSizeV2enqueue_input/fifo_queue"/device:CPU:0*
_output_shapes
: 
d
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
|
enqueue_input/subSubenqueue_input/fifo_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 

enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
g
enqueue_input/mul/yConst"/device:CPU:0*
valueB
 *o:*
dtype0*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
ĺ
Menqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsConst"/device:CPU:0*
dtype0*
_output_shapes
: *Y
valuePBN BHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full
ë
Henqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fullScalarSummaryMenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
j
fifo_queue_DequeueUpTo/nConst"/device:CPU:0*
value
B :*
dtype0*
_output_shapes
: 
ů
fifo_queue_DequeueUpToQueueDequeueUpToV2enqueue_input/fifo_queuefifo_queue_DequeueUpTo/n"/device:CPU:0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
component_types
2	*

timeout_ms˙˙˙˙˙˙˙˙˙
Ň
=linear/linear_model/polarity/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0

+linear/linear_model/polarity/weights/part_0VarHandleOp*
	container *
shape
:*
dtype0*
_output_shapes
: *<
shared_name-+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
§
Llinear/linear_model/polarity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
˙
2linear/linear_model/polarity/weights/part_0/AssignAssignVariableOp+linear/linear_model/polarity/weights/part_0=linear/linear_model/polarity/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
ë
?linear/linear_model/polarity/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
Ú
Alinear/linear_model/subjectivity/weights/part_0/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:

/linear/linear_model/subjectivity/weights/part_0VarHandleOp*
	container *
shape
:*
dtype0*
_output_shapes
: *@
shared_name1/linear/linear_model/subjectivity/weights/part_0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
Ż
Plinear/linear_model/subjectivity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 

6linear/linear_model/subjectivity/weights/part_0/AssignAssignVariableOp/linear/linear_model/subjectivity/weights/part_0Alinear/linear_model/subjectivity/weights/part_0/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
÷
Clinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
Â
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
ó
'linear/linear_model/bias_weights/part_0VarHandleOp*8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
: 

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
ď
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
Ű
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
î
Alinear/linear_model/linear_model/linear_model/polarity/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:1Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
×
;linear/linear_model/linear_model/linear_model/polarity/CastCastAlinear/linear_model/linear_model/linear_model/polarity/ExpandDims*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0
ˇ
<linear/linear_model/linear_model/linear_model/polarity/ShapeShape;linear/linear_model/linear_model/linear_model/polarity/Cast*
T0*
out_type0*
_output_shapes
:

Jlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

Dlinear/linear_model/linear_model/linear_model/polarity/strided_sliceStridedSlice<linear/linear_model/linear_model/linear_model/polarity/ShapeJlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackLlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

Flinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :

Dlinear/linear_model/linear_model/linear_model/polarity/Reshape/shapePackDlinear/linear_model/linear_model/linear_model/polarity/strided_sliceFlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 

>linear/linear_model/linear_model/linear_model/polarity/ReshapeReshape;linear/linear_model/linear_model/linear_model/polarity/CastDlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

3linear/linear_model/polarity/weights/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:

$linear/linear_model/polarity/weightsIdentity3linear/linear_model/polarity/weights/ReadVariableOp*
T0*
_output_shapes

:

Clinear/linear_model/linear_model/linear_model/polarity/weighted_sumMatMul>linear/linear_model/linear_model/linear_model/polarity/Reshape$linear/linear_model/polarity/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ö
Elinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:2Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
ß
?linear/linear_model/linear_model/linear_model/subjectivity/CastCastElinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims*

SrcT0*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
ż
@linear/linear_model/linear_model/linear_model/subjectivity/ShapeShape?linear/linear_model/linear_model/linear_model/subjectivity/Cast*
T0*
out_type0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
 
Hlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/subjectivity/ShapeNlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackPlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

Jlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
 
Hlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceJlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

Blinear/linear_model/linear_model/linear_model/subjectivity/ReshapeReshape?linear/linear_model/linear_model/linear_model/subjectivity/CastHlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
7linear/linear_model/subjectivity/weights/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:

(linear/linear_model/subjectivity/weightsIdentity7linear/linear_model/subjectivity/weights/ReadVariableOp*
T0*
_output_shapes

:

Glinear/linear_model/linear_model/linear_model/subjectivity/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshape(linear/linear_model/subjectivity/weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNClinear/linear_model/linear_model/linear_model/polarity/weighted_sumGlinear/linear_model/linear_model/linear_model/subjectivity/weighted_sum*
T0*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
ô
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ľ
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 

3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
f
$linear/zero_fraction/total_size/SizeConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ľ
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
h
&linear/zero_fraction/total_size/Size_1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
¤
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1*
T0	*
N*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 

%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
Ź
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: : 

3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 

3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
_output_shapes
: *
T0


2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: 
Ť
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Ö
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:

Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch+linear/linear_model/polarity/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: : 
ľ
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
dtype0	*
_output_shapes
: *
value	B	 R
Ŕ
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R˙˙˙˙*
dtype0	*
_output_shapes
: 
ő
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
ů
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
ť
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
š
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
ś
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
ß
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
ť
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
ö
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
ë
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
:*
valueB"       
Ă
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
ĺ
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
á
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
ż
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:*
T0

]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
ú
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
í
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
É
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	

Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
ű
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
é
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ů
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ľ
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ă
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
ľ
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
ů
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
_output_shapes
: : *
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size
Í
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
_output_shapes
: *
T0
Ç
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_1Const*
dtype0	*
_output_shapes
: *
value	B	 R 
˘
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
˛
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
Ż
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Ú
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
¨
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch/linear/linear_model/subjectivity/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: : 
š
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
Ä
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R˙˙˙˙*
dtype0	*
_output_shapes
: 
ű
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
˙
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
ż
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
˝
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
ş
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
ă
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Á
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
ú
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
ď
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
:*
valueB"       
É
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
é
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
ĺ
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
Ĺ
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
ţ
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
ń
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
Ď
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	

Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
_output_shapes
: *
T0	
í
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ý
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ť
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ç
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
š
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0

;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
Ó
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
_output_shapes
: *
T0
Í
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
T0*
N*
_output_shapes
: : 
ź
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge*
T0*
N*
_output_shapes
: 

)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Ą
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
_output_shapes
: *
T0
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
˘
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 

linear/head/logits/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
out_type0*
_output_shapes
:
n
,linear/head/logits/assert_rank_at_least/rankConst*
dtype0*
_output_shapes
: *
value	B :
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
l
!linear/head/labels/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ś
linear/head/labels/ExpandDims
ExpandDimsfifo_queue_DequeueUpTo:3!linear/head/labels/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
linear/head/labels/ShapeShapelinear/head/labels/ExpandDims*
T0*
out_type0*
_output_shapes
:

linear/head/labels/Shape_1Shape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
out_type0*
_output_shapes
:
n
,linear/head/labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 

-linear/head/labels/assert_rank_at_least/ShapeShapelinear/head/labels/ExpandDims*
_output_shapes
:*
T0*
out_type0
^
Vlinear/head/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
ş
&linear/head/labels/strided_slice/stackConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
Ĺ
(linear/head/labels/strided_slice/stack_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ź
(linear/head/labels/strided_slice/stack_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB:
Ţ
 linear/head/labels/strided_sliceStridedSlicelinear/head/labels/Shape_1&linear/head/labels/strided_slice/stack(linear/head/labels/strided_slice/stack_1(linear/head/labels/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
ś
"linear/head/labels/concat/values_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
Ş
linear/head/labels/concat/axisConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
value	B : *
dtype0*
_output_shapes
: 
Ĺ
linear/head/labels/concatConcatV2 linear/head/labels/strided_slice"linear/head/labels/concat/values_1linear/head/labels/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

%linear/head/labels/assert_equal/EqualEquallinear/head/labels/concatlinear/head/labels/Shape*
T0*
_output_shapes
:
š
%linear/head/labels/assert_equal/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
­
#linear/head/labels/assert_equal/AllAll%linear/head/labels/assert_equal/Equal%linear/head/labels/assert_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Î
,linear/head/labels/assert_equal/Assert/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Ç
.linear/head/labels/assert_equal/Assert/Const_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
Ö
4linear/head/labels/assert_equal/Assert/Assert/data_0ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
Í
4linear/head/labels/assert_equal/Assert/Assert/data_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 

-linear/head/labels/assert_equal/Assert/AssertAssert#linear/head/labels/assert_equal/All4linear/head/labels/assert_equal/Assert/Assert/data_0linear/head/labels/concat4linear/head/labels/assert_equal/Assert/Assert/data_2linear/head/labels/Shape*
T
2*
	summarize
é
linear/head/labelsIdentitylinear/head/labels/ExpandDims.^linear/head/labels/assert_equal/Assert/AssertH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/head/ToFloatCastlinear/head/labels*

SrcT0*
Truncate( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
Č
0linear/head/mean_squared_error/SquaredDifferenceSquaredDifference:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloat*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;linear/head/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Alinear/head/mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

@linear/head/mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
°
@linear/head/mean_squared_error/assert_broadcastable/values/shapeShape0linear/head/mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:

?linear/head/mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
W
Olinear/head/mean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
ź
%linear/head/mean_squared_error/Cast/xConstP^linear/head/mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
´
"linear/head/mean_squared_error/MulMul0linear/head/mean_squared_error/SquaredDifference%linear/head/mean_squared_error/Cast/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
6linear/head/weighted_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

<linear/head/weighted_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
}
;linear/head/weighted_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

;linear/head/weighted_loss/assert_broadcastable/values/shapeShape"linear/head/mean_squared_error/Mul*
T0*
out_type0*
_output_shapes
:
|
:linear/head/weighted_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
Jlinear/head/weighted_loss/assert_broadcastable/static_scalar_check_successNoOp
˛
 linear/head/weighted_loss/Cast/xConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

linear/head/weighted_loss/MulMul"linear/head/mean_squared_error/Mul linear/head/weighted_loss/Cast/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
linear/head/weighted_loss/ConstConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
˘
linear/head/weighted_loss/SumSumlinear/head/weighted_loss/Mullinear/head/weighted_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

#linear/mean/total/Initializer/zerosConst*
valueB
 *    *$
_class
loc:@linear/mean/total*
dtype0*
_output_shapes
: 

linear/mean/total
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *$
_class
loc:@linear/mean/total
Ę
linear/mean/total/AssignAssignlinear/mean/total#linear/mean/total/Initializer/zeros*
T0*$
_class
loc:@linear/mean/total*
validate_shape(*
_output_shapes
: *
use_locking(
|
linear/mean/total/readIdentitylinear/mean/total*
_output_shapes
: *
T0*$
_class
loc:@linear/mean/total

#linear/mean/count/Initializer/zerosConst*
valueB
 *    *$
_class
loc:@linear/mean/count*
dtype0*
_output_shapes
: 

linear/mean/count
VariableV2*
shared_name *$
_class
loc:@linear/mean/count*
	container *
shape: *
dtype0*
_output_shapes
: 
Ę
linear/mean/count/AssignAssignlinear/mean/count#linear/mean/count/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@linear/mean/count*
validate_shape(*
_output_shapes
: 
|
linear/mean/count/readIdentitylinear/mean/count*
T0*$
_class
loc:@linear/mean/count*
_output_shapes
: 
V
linear/mean/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

@linear/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

?linear/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ą
?linear/mean/broadcast_weights/assert_broadcastable/values/shapeShape"linear/head/mean_squared_error/Mul*
T0*
out_type0*
_output_shapes
:

>linear/mean/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
V
Nlinear/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
ŕ
-linear/mean/broadcast_weights/ones_like/ShapeShape"linear/head/mean_squared_error/MulO^linear/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ă
-linear/mean/broadcast_weights/ones_like/ConstConstO^linear/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ń
'linear/mean/broadcast_weights/ones_likeFill-linear/mean/broadcast_weights/ones_like/Shape-linear/mean/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/mean/broadcast_weightsMullinear/mean/Const'linear/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/mean/MulMul"linear/head/mean_squared_error/Mullinear/mean/broadcast_weights*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
linear/mean/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

linear/mean/SumSumlinear/mean/broadcast_weightslinear/mean/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
d
linear/mean/Const_2Const*
valueB"       *
dtype0*
_output_shapes
:
|
linear/mean/Sum_1Sumlinear/mean/Mullinear/mean/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
˘
linear/mean/AssignAdd	AssignAddlinear/mean/totallinear/mean/Sum_1*
_output_shapes
: *
use_locking( *
T0*$
_class
loc:@linear/mean/total
´
linear/mean/AssignAdd_1	AssignAddlinear/mean/countlinear/mean/Sum^linear/mean/Mul*
_output_shapes
: *
use_locking( *
T0*$
_class
loc:@linear/mean/count
Z
linear/mean/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
linear/mean/MaximumMaximumlinear/mean/count/readlinear/mean/Maximum/y*
T0*
_output_shapes
: 
k
linear/mean/valueDivNoNanlinear/mean/total/readlinear/mean/Maximum*
T0*
_output_shapes
: 
\
linear/mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
s
linear/mean/Maximum_1Maximumlinear/mean/AssignAdd_1linear/mean/Maximum_1/y*
T0*
_output_shapes
: 
p
linear/mean/update_opDivNoNanlinear/mean/AssignAddlinear/mean/Maximum_1*
_output_shapes
: *
T0
u
0linear/prediction/mean/broadcast_weights/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Klinear/prediction/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 

Jlinear/prediction/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ä
Jlinear/prediction/mean/broadcast_weights/assert_broadcastable/values/shapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
out_type0*
_output_shapes
:

Ilinear/prediction/mean/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
a
Ylinear/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp

8linear/prediction/mean/broadcast_weights/ones_like/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sumZ^linear/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ů
8linear/prediction/mean/broadcast_weights/ones_like/ConstConstZ^linear/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ň
2linear/prediction/mean/broadcast_weights/ones_likeFill8linear/prediction/mean/broadcast_weights/ones_like/Shape8linear/prediction/mean/broadcast_weights/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
(linear/prediction/mean/broadcast_weightsMul0linear/prediction/mean/broadcast_weights/weights2linear/prediction/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
.linear/prediction/mean/total/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@linear/prediction/mean/total
ą
linear/prediction/mean/total
VariableV2*
shared_name */
_class%
#!loc:@linear/prediction/mean/total*
	container *
shape: *
dtype0*
_output_shapes
: 
ö
#linear/prediction/mean/total/AssignAssignlinear/prediction/mean/total.linear/prediction/mean/total/Initializer/zeros*
T0*/
_class%
#!loc:@linear/prediction/mean/total*
validate_shape(*
_output_shapes
: *
use_locking(

!linear/prediction/mean/total/readIdentitylinear/prediction/mean/total*
T0*/
_class%
#!loc:@linear/prediction/mean/total*
_output_shapes
: 
¤
.linear/prediction/mean/count/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@linear/prediction/mean/count*
dtype0*
_output_shapes
: 
ą
linear/prediction/mean/count
VariableV2*
shared_name */
_class%
#!loc:@linear/prediction/mean/count*
	container *
shape: *
dtype0*
_output_shapes
: 
ö
#linear/prediction/mean/count/AssignAssignlinear/prediction/mean/count.linear/prediction/mean/count/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@linear/prediction/mean/count*
validate_shape(*
_output_shapes
: 

!linear/prediction/mean/count/readIdentitylinear/prediction/mean/count*
T0*/
_class%
#!loc:@linear/prediction/mean/count*
_output_shapes
: 
ľ
Mlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape(linear/prediction/mean/broadcast_weights*
T0*
out_type0*
_output_shapes
:

Llinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Ć
Llinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeShape:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
out_type0*
_output_shapes
:

Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 

Ilinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualKlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ý
Wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityWlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ű
Wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityUlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Î
Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 

Wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*\
_classR
PNloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 

ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqual|linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch~linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Ž
|linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchKlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*^
_classT
RPloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank
˛
~linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 

olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityqlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityolinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

plinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Č
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ĺ
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimslinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
Č
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
¤
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchplinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape
Ď
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
Ŕ
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ß
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFilllinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapelinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
ź
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ŕ
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimslinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likelinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
Ę
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ë
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimslinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
Ě
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchMlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeVlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*`
_classV
TRloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape
Š
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchplinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*`
_classV
TRloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
˛
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:*
set_operationa-b
Ű
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizelinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
ą
{linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstr^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
­
ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqual{linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankplinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*
_class~
|zloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank

nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeqlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

Ô
Tlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergenlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeYlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
_output_shapes
: : *
T0

­
Elinear/prediction/mean/broadcast_weights_1/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
˛
Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*;
value2B0 B*linear/prediction/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 

Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ä
Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*M
valueDBB B<linear/linear_model/linear_model/linear_model/weighted_sum:0*
dtype0*
_output_shapes
: 

Glinear/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
Ť
Rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

×
Tlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ő
Tlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityRlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Ö
Slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Ż
Plinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t

^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tQ^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*g
_class]
[Yloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
˙
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*;
value2B0 B*linear/prediction/mean/broadcast_weights:0*
dtype0*
_output_shapes
: 
ţ
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
­
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*M
valueDBB B<linear/linear_model/linear_model/linear_model/weighted_sum:0*
dtype0*
_output_shapes
: 
ű
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstU^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertYlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchYlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*g
_class]
[Yloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchMlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*`
_classV
TRloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchLlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*_
_classU
SQloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchIlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarSlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*\
_classR
PNloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Ą
`linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityTlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fS^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*g
_class]
[Yloc:@linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
Č
Qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMerge`linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 

:linear/prediction/mean/broadcast_weights_1/ones_like/ShapeShape:linear/linear_model/linear_model/linear_model/weighted_sumR^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ó
:linear/prediction/mean/broadcast_weights_1/ones_like/ConstConstR^linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ř
4linear/prediction/mean/broadcast_weights_1/ones_likeFill:linear/prediction/mean/broadcast_weights_1/ones_like/Shape:linear/prediction/mean/broadcast_weights_1/ones_like/Const*
T0*

index_type0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
*linear/prediction/mean/broadcast_weights_1Mul(linear/prediction/mean/broadcast_weights4linear/prediction/mean/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
linear/prediction/mean/MulMul:linear/linear_model/linear_model/linear_model/weighted_sum*linear/prediction/mean/broadcast_weights_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
linear/prediction/mean/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Š
linear/prediction/mean/SumSum*linear/prediction/mean/broadcast_weights_1linear/prediction/mean/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
o
linear/prediction/mean/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:

linear/prediction/mean/Sum_1Sumlinear/prediction/mean/Mullinear/prediction/mean/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Î
 linear/prediction/mean/AssignAdd	AssignAddlinear/prediction/mean/totallinear/prediction/mean/Sum_1*
_output_shapes
: *
use_locking( *
T0*/
_class%
#!loc:@linear/prediction/mean/total
ë
"linear/prediction/mean/AssignAdd_1	AssignAddlinear/prediction/mean/countlinear/prediction/mean/Sum^linear/prediction/mean/Mul*
T0*/
_class%
#!loc:@linear/prediction/mean/count*
_output_shapes
: *
use_locking( 
e
 linear/prediction/mean/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    

linear/prediction/mean/MaximumMaximum!linear/prediction/mean/count/read linear/prediction/mean/Maximum/y*
_output_shapes
: *
T0

linear/prediction/mean/valueDivNoNan!linear/prediction/mean/total/readlinear/prediction/mean/Maximum*
T0*
_output_shapes
: 
g
"linear/prediction/mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

 linear/prediction/mean/Maximum_1Maximum"linear/prediction/mean/AssignAdd_1"linear/prediction/mean/Maximum_1/y*
_output_shapes
: *
T0

 linear/prediction/mean/update_opDivNoNan linear/prediction/mean/AssignAdd linear/prediction/mean/Maximum_1*
T0*
_output_shapes
: 

linear/mean_1/CastCastfifo_queue_DequeueUpTo:3*

SrcT0*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

%linear/mean_1/total/Initializer/zerosConst*
valueB
 *    *&
_class
loc:@linear/mean_1/total*
dtype0*
_output_shapes
: 

linear/mean_1/total
VariableV2*
shared_name *&
_class
loc:@linear/mean_1/total*
	container *
shape: *
dtype0*
_output_shapes
: 
Ň
linear/mean_1/total/AssignAssignlinear/mean_1/total%linear/mean_1/total/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*&
_class
loc:@linear/mean_1/total

linear/mean_1/total/readIdentitylinear/mean_1/total*
T0*&
_class
loc:@linear/mean_1/total*
_output_shapes
: 

%linear/mean_1/count/Initializer/zerosConst*
valueB
 *    *&
_class
loc:@linear/mean_1/count*
dtype0*
_output_shapes
: 

linear/mean_1/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *&
_class
loc:@linear/mean_1/count
Ň
linear/mean_1/count/AssignAssignlinear/mean_1/count%linear/mean_1/count/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*&
_class
loc:@linear/mean_1/count

linear/mean_1/count/readIdentitylinear/mean_1/count*
T0*&
_class
loc:@linear/mean_1/count*
_output_shapes
: 
X
linear/mean_1/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Blinear/mean_1/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Alinear/mean_1/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 

Alinear/mean_1/broadcast_weights/assert_broadcastable/values/shapeShapelinear/mean_1/Cast*
T0*
out_type0*
_output_shapes
:

@linear/mean_1/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
X
Plinear/mean_1/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ô
/linear/mean_1/broadcast_weights/ones_like/ShapeShapelinear/mean_1/CastQ^linear/mean_1/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ç
/linear/mean_1/broadcast_weights/ones_like/ConstConstQ^linear/mean_1/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ó
)linear/mean_1/broadcast_weights/ones_likeFill/linear/mean_1/broadcast_weights/ones_like/Shape/linear/mean_1/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

linear/mean_1/broadcast_weightsMullinear/mean_1/Const)linear/mean_1/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
linear/mean_1/MulMullinear/mean_1/Castlinear/mean_1/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
linear/mean_1/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

linear/mean_1/SumSumlinear/mean_1/broadcast_weightslinear/mean_1/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
_
linear/mean_1/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

linear/mean_1/Sum_1Sumlinear/mean_1/Mullinear/mean_1/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Ş
linear/mean_1/AssignAdd	AssignAddlinear/mean_1/totallinear/mean_1/Sum_1*
_output_shapes
: *
use_locking( *
T0*&
_class
loc:@linear/mean_1/total
ž
linear/mean_1/AssignAdd_1	AssignAddlinear/mean_1/countlinear/mean_1/Sum^linear/mean_1/Mul*
use_locking( *
T0*&
_class
loc:@linear/mean_1/count*
_output_shapes
: 
\
linear/mean_1/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
t
linear/mean_1/MaximumMaximumlinear/mean_1/count/readlinear/mean_1/Maximum/y*
T0*
_output_shapes
: 
q
linear/mean_1/valueDivNoNanlinear/mean_1/total/readlinear/mean_1/Maximum*
T0*
_output_shapes
: 
^
linear/mean_1/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
y
linear/mean_1/Maximum_1Maximumlinear/mean_1/AssignAdd_1linear/mean_1/Maximum_1/y*
T0*
_output_shapes
: 
v
linear/mean_1/update_opDivNoNanlinear/mean_1/AssignAddlinear/mean_1/Maximum_1*
T0*
_output_shapes
: 

mean/total/Initializer/zerosConst*
valueB
 *    *
_class
loc:@mean/total*
dtype0*
_output_shapes
: 


mean/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean/total*
	container *
shape: 
Ž
mean/total/AssignAssign
mean/totalmean/total/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean/total*
validate_shape(*
_output_shapes
: 
g
mean/total/readIdentity
mean/total*
T0*
_class
loc:@mean/total*
_output_shapes
: 

mean/count/Initializer/zerosConst*
valueB
 *    *
_class
loc:@mean/count*
dtype0*
_output_shapes
: 


mean/count
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean/count*
	container 
Ž
mean/count/AssignAssign
mean/countmean/count/Initializer/zeros*
T0*
_class
loc:@mean/count*
validate_shape(*
_output_shapes
: *
use_locking(
g
mean/count/readIdentity
mean/count*
T0*
_class
loc:@mean/count*
_output_shapes
: 
K
	mean/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
\
	mean/CastCast	mean/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
M

mean/ConstConst*
valueB *
dtype0*
_output_shapes
: 
x
mean/SumSumlinear/head/weighted_loss/Sum
mean/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
use_locking( *
T0*
_class
loc:@mean/total*
_output_shapes
: 
§
mean/AssignAdd_1	AssignAdd
mean/count	mean/Cast^linear/head/weighted_loss/Sum*
T0*
_class
loc:@mean/count*
_output_shapes
: *
use_locking( 
S
mean/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
mean/MaximumMaximummean/count/readmean/Maximum/y*
T0*
_output_shapes
: 
V

mean/valueDivNoNanmean/total/readmean/Maximum*
T0*
_output_shapes
: 
U
mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
mean/Maximum_1Maximummean/AssignAdd_1mean/Maximum_1/y*
T0*
_output_shapes
: 
[
mean/update_opDivNoNanmean/AssignAddmean/Maximum_1*
T0*
_output_shapes
: 
x

group_depsNoOp^linear/mean/update_op^linear/mean_1/update_op!^linear/prediction/mean/update_op^mean/update_op
{
eval_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@eval_step*
dtype0	*
_output_shapes
: 

	eval_step
VariableV2*
shape: *
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@eval_step*
	container 
Ş
eval_step/AssignAssign	eval_stepeval_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@eval_step*
validate_shape(*
_output_shapes
: 
d
eval_step/readIdentity	eval_step*
T0	*
_class
loc:@eval_step*
_output_shapes
: 
Q
AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 

	AssignAdd	AssignAdd	eval_stepAssignAdd/value*
T0	*
_class
loc:@eval_step*
_output_shapes
: *
use_locking(
U
readIdentity	eval_step
^AssignAdd^group_deps*
T0	*
_output_shapes
: 
;
IdentityIdentityread*
T0	*
_output_shapes
: 
Ŕ
initNoOp^global_step/Assign/^linear/linear_model/bias_weights/part_0/Assign3^linear/linear_model/polarity/weights/part_0/Assign7^linear/linear_model/subjectivity/weights/part_0/Assign

init_1NoOp
$
group_deps_1NoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 

1report_uninitialized_variables/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 

3report_uninitialized_variables/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 

3report_uninitialized_variables/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
­
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedlinear/mean/total*$
_class
loc:@linear/mean/total*
dtype0*
_output_shapes
: 
­
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedlinear/mean/count*$
_class
loc:@linear/mean/count*
dtype0*
_output_shapes
: 
Ă
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedlinear/prediction/mean/total*/
_class%
#!loc:@linear/prediction/mean/total*
dtype0*
_output_shapes
: 
Ă
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedlinear/prediction/mean/count*/
_class%
#!loc:@linear/prediction/mean/count*
dtype0*
_output_shapes
: 
ą
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedlinear/mean_1/total*&
_class
loc:@linear/mean_1/total*
dtype0*
_output_shapes
: 
ą
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedlinear/mean_1/count*&
_class
loc:@linear/mean_1/count*
dtype0*
_output_shapes
: 

6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitialized
mean/total*
_class
loc:@mean/total*
dtype0*
_output_shapes
: 

6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitialized
mean/count*
dtype0*
_output_shapes
: *
_class
loc:@mean/count

6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitialized	eval_step*
_output_shapes
: *
_class
loc:@eval_step*
dtype0	
Ŕ
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized1report_uninitialized_variables/VarIsInitializedOp3report_uninitialized_variables/VarIsInitializedOp_13report_uninitialized_variables/VarIsInitializedOp_26report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_9"/device:CPU:0*
T0
*

axis *
N*
_output_shapes
:

)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:
Ŕ
$report_uninitialized_variables/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:*Ř
valueÎBËBglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0Blinear/mean/totalBlinear/mean/countBlinear/prediction/mean/totalBlinear/prediction/mean/countBlinear/mean_1/totalBlinear/mean_1/countB
mean/totalB
mean/countB	eval_step

1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
č
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 

0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask 

3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
đ
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0
ž
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
÷
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
N*
_output_shapes
:*

Tidx0*
T0
Ú
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
ę
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:
˛
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Ĺ
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
×
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*

batch_dims *
Tindices0	*
Tparams0
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ž
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
T0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
Ą
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step

3report_uninitialized_variables_1/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 

5report_uninitialized_variables_1/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 

5report_uninitialized_variables_1/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
Ň
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized3report_uninitialized_variables_1/VarIsInitializedOp5report_uninitialized_variables_1/VarIsInitializedOp_15report_uninitialized_variables_1/VarIsInitializedOp_2"/device:CPU:0*
T0
*

axis *
N*
_output_shapes
:

+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:

&report_uninitialized_variables_1/ConstConst"/device:CPU:0*Š
valueBBglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:

3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
ň
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask 

5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ú
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
Â
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
ŕ
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
đ
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:
ś
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

É
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims


;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ß
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*

batch_dims *
Tindices0	*
Tparams0
x
&report_uninitialized_resources_1/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
O
concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ć
concat_1ConcatV26report_uninitialized_variables_1/boolean_mask/GatherV2&report_uninitialized_resources_1/Constconcat_1/axis*

Tidx0*
T0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

init_2NoOp^eval_step/Assign^linear/mean/count/Assign^linear/mean/total/Assign^linear/mean_1/count/Assign^linear/mean_1/total/Assign$^linear/prediction/mean/count/Assign$^linear/prediction/mean/total/Assign^mean/count/Assign^mean/total/Assign

init_all_tablesNoOp

init_3NoOp
8
group_deps_2NoOp^init_2^init_3^init_all_tables
ť
Merge/MergeSummaryMergeSummaryHenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_fulllinear/biaslinear/fraction_of_zero_weights*
N*
_output_shapes
: 
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
|
save/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes
:

save/Read_1/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:

save/Read_2/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_4Identitysave/Read_2/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes

:

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_08a18fd9f2f54c34af22f57bfab80ea3/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_3/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
k
save/Identity_6Identitysave/Read_3/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
`
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes
:

save/Read_4/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
o
save/Identity_8Identitysave/Read_4/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes

:

save/Read_5/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
p
save/Identity_10Identitysave/Read_5/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:
ă
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
value|BzB linear/linear_model/bias_weightsB$linear/linear_model/polarity/weightsB(linear/linear_model/subjectivity/weights*
dtype0*
_output_shapes
:

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*4
value+B)B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
Á
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_7save/Identity_9save/Identity_11"/device:CPU:0*
dtypes
2
¨
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
ŕ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
¨
save/Identity_12Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:

save/AssignAssignglobal_stepsave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step
(
save/restore_shardNoOp^save/Assign
ć
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
value|BzB linear/linear_model/bias_weightsB$linear/linear_model/polarity/weightsB(linear/linear_model/subjectivity/weights*
dtype0*
_output_shapes
:

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*4
value+B)B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:
˝
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*.
_output_shapes
:::*
dtypes
2
b
save/Identity_13Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOpAssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_13"/device:CPU:0*
dtype0
h
save/Identity_14Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_1AssignVariableOp+linear/linear_model/polarity/weights/part_0save/Identity_14"/device:CPU:0*
dtype0
h
save/Identity_15Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_2AssignVariableOp/linear/linear_model/subjectivity/weights/part_0save/Identity_15"/device:CPU:0*
dtype0
w
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"&")
ready_for_local_init_op


concat_1:0"
init_op

group_deps_1"
	eval_step

eval_step:0"×ç
cond_contextĹçÁç
ˇ
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
ć.
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*¸
-linear/linear_model/polarity/weights/part_0:0
&linear/zero_fraction/total_size/Size:0
;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0
4linear/zero_fraction/total_zero/zero_count/ToFloat:0
0linear/zero_fraction/total_zero/zero_count/mul:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_f:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual:0
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
?linear/zero_fraction/total_zero/zero_count/zero_fraction/Size:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:1
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1:0
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv:0
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction:0e
&linear/zero_fraction/total_size/Size:0;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0
-linear/linear_model/polarity/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:02Ü

Ů

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *ř
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0Ş
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:02¤

Ą

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*Ŕ
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0Ź
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Ç
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0*
1linear/linear_model/subjectivity/weights/part_0:0
(linear/zero_fraction/total_size/Size_1:0
=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0
6linear/zero_fraction/total_zero/zero_count_1/ToFloat:0
2linear/zero_fraction/total_zero/zero_count_1/mul:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0i
(linear/zero_fraction/total_size/Size_1:0=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0
1linear/linear_model/subjectivity/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:02ţ

ű

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0Ž
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:02Ä

Á

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*Ú
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0°
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Ž
Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textXlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *
Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0¨
Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1´
Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
š^
Zlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*Ś,
plinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
plinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
qlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
}linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
{linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
~linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Ylinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Mlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0
Olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0´
Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Xlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0ŕ
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ó
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0ă
Olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ď
Mlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0~linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:02ě$
é$
rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textrlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *"
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
}linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
{linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0ĺ
Olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1¤
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0č
rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0 
linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0â
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0linear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12

tlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*¨
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0č
rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0rlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0î
wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0slinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Í
Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textUlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *Â
`linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0Ž
Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0

Wlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*ţ
[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
]linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
]linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
]linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
blinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0ľ
Vlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0[linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0°
Olinear/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0]linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ž
Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Ulinear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Ź
Klinear/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0]linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0Ż
Nlinear/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0]linear/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0"ú
metric_variablesĺâ
t
linear/mean/total:0linear/mean/total/Assignlinear/mean/total/read:02%linear/mean/total/Initializer/zeros:0@H
t
linear/mean/count:0linear/mean/count/Assignlinear/mean/count/read:02%linear/mean/count/Initializer/zeros:0@H
 
linear/prediction/mean/total:0#linear/prediction/mean/total/Assign#linear/prediction/mean/total/read:020linear/prediction/mean/total/Initializer/zeros:0@H
 
linear/prediction/mean/count:0#linear/prediction/mean/count/Assign#linear/prediction/mean/count/read:020linear/prediction/mean/count/Initializer/zeros:0@H
|
linear/mean_1/total:0linear/mean_1/total/Assignlinear/mean_1/total/read:02'linear/mean_1/total/Initializer/zeros:0@H
|
linear/mean_1/count:0linear/mean_1/count/Assignlinear/mean_1/count/read:02'linear/mean_1/count/Initializer/zeros:0@H
X
mean/total:0mean/total/Assignmean/total/read:02mean/total/Initializer/zeros:0@H
X
mean/count:0mean/count/Assignmean/count/read:02mean/count/Initializer/zeros:0@H"Ë
local_variablesˇ´
t
linear/mean/total:0linear/mean/total/Assignlinear/mean/total/read:02%linear/mean/total/Initializer/zeros:0@H
t
linear/mean/count:0linear/mean/count/Assignlinear/mean/count/read:02%linear/mean/count/Initializer/zeros:0@H
 
linear/prediction/mean/total:0#linear/prediction/mean/total/Assign#linear/prediction/mean/total/read:020linear/prediction/mean/total/Initializer/zeros:0@H
 
linear/prediction/mean/count:0#linear/prediction/mean/count/Assign#linear/prediction/mean/count/read:020linear/prediction/mean/count/Initializer/zeros:0@H
|
linear/mean_1/total:0linear/mean_1/total/Assignlinear/mean_1/total/read:02'linear/mean_1/total/Initializer/zeros:0@H
|
linear/mean_1/count:0linear/mean_1/count/Assignlinear/mean_1/count/read:02'linear/mean_1/count/Initializer/zeros:0@H
X
mean/total:0mean/total/Assignmean/total/read:02mean/total/Initializer/zeros:0@H
X
mean/count:0mean/count/Assignmean/count/read:02mean/count/Initializer/zeros:0@H
P
eval_step:0eval_step/Assigneval_step/read:02eval_step/Initializer/zeros:0"!
local_init_op

group_deps_2"Đ
	variablesÂż
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H

-linear/linear_model/polarity/weights/part_0:02linear/linear_model/polarity/weights/part_0/AssignAlinear/linear_model/polarity/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/polarity/weights  "(2?linear/linear_model/polarity/weights/part_0/Initializer/zeros:08
ł
1linear/linear_model/subjectivity/weights/part_0:06linear/linear_model/subjectivity/weights/part_0/AssignElinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/subjectivity/weights  "(2Clinear/linear_model/subjectivity/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"
ready_op


concat:0"M
saversCA
?
save/Const:0save/Identity_12:0save/restore_all (5 @F8"
queue_runners

enqueue_input/fifo_queue$enqueue_input/fifo_queue_EnqueueManyenqueue_input/fifo_queue_Close" enqueue_input/fifo_queue_Close_1*"S
lossesI
G
$linear/head/mean_squared_error/Mul:0
linear/head/weighted_loss/Sum:0"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"&

summary_op

Merge/MergeSummary:0"ţ
trainable_variablesćă

-linear/linear_model/polarity/weights/part_0:02linear/linear_model/polarity/weights/part_0/AssignAlinear/linear_model/polarity/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/polarity/weights  "(2?linear/linear_model/polarity/weights/part_0/Initializer/zeros:08
ł
1linear/linear_model/subjectivity/weights/part_0:06linear/linear_model/subjectivity/weights/part_0/AssignElinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/subjectivity/weights  "(2Clinear/linear_model/subjectivity/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"
	summaries
~
Jenqueue_input/queue/enqueue_input/fifo_queuefraction_over_0_of_1000_full:0
linear/bias:0
!linear/fraction_of_zero_weights:0ěÜ]\       ÉÍů	ľÎűI×A *M

average_loss`ł<


label/meanbC(?

lossMÔń?

prediction/mean+°&?r5?C       ą% 	xŹÎűI×A *4
2
checkpoint_pathB B./output/model.ckpt-20000˙qH