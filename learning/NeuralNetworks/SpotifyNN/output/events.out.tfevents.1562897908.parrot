       �K"	   }�I�Abrain.Event:2��j7�#     �c�V	8?}�I�A"��

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
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
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_output_shapes
: *
_class
loc:@global_step*
dtype0	
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
_output_shapes
: : *
T0

a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
T0
*
_output_shapes
: 
_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
_output_shapes
: *
T0	
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
_output_shapes
: *
T0	
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
shared_name *
min_after_dequeue�*
capacity�*
seed2 *
	container *
_output_shapes
: *
component_types
2	*
shapes

: : : : *

seed 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
_output_shapes
:*
shape:
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
dtype0*
_output_shapes
:*
shape:
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3"/device:CPU:0*
Tcomponents
2	*

timeout_ms���������
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
value
B :�*
dtype0*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
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
�
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
g
enqueue_input/mul/yConst"/device:CPU:0*
_output_shapes
: *
valueB
 *>î:*
dtype0
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
dtype0*
_output_shapes
: *d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_ms���������*,
_output_shapes
::::*
component_types
2	
�
=linear/linear_model/polarity/weights/part_0/Initializer/zerosConst*
valueB*    *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
+linear/linear_model/polarity/weights/part_0VarHandleOp*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: *<
shared_name-+linear/linear_model/polarity/weights/part_0
�
Llinear/linear_model/polarity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
2linear/linear_model/polarity/weights/part_0/AssignAssignVariableOp+linear/linear_model/polarity/weights/part_0=linear/linear_model/polarity/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
?linear/linear_model/polarity/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
Alinear/linear_model/subjectivity/weights/part_0/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
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
�
Plinear/linear_model/subjectivity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
6linear/linear_model/subjectivity/weights/part_0/AssignAssignVariableOp/linear/linear_model/subjectivity/weights/part_0Alinear/linear_model/subjectivity/weights/part_0/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Clinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes

:*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
'linear/linear_model/bias_weights/part_0VarHandleOp*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0
�
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Alinear/linear_model/linear_model/linear_model/polarity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:1Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
�
;linear/linear_model/linear_model/linear_model/polarity/CastCastAlinear/linear_model/linear_model/linear_model/polarity/ExpandDims*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
<linear/linear_model/linear_model/linear_model/polarity/ShapeConst*
_output_shapes
:*
valueB"      *
dtype0
�
Jlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Dlinear/linear_model/linear_model/linear_model/polarity/strided_sliceStridedSlice<linear/linear_model/linear_model/linear_model/polarity/ShapeJlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackLlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
Flinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Dlinear/linear_model/linear_model/linear_model/polarity/Reshape/shapePackDlinear/linear_model/linear_model/linear_model/polarity/strided_sliceFlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
�
>linear/linear_model/linear_model/linear_model/polarity/ReshapeReshape;linear/linear_model/linear_model/linear_model/polarity/CastDlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
3linear/linear_model/polarity/weights/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
$linear/linear_model/polarity/weightsIdentity3linear/linear_model/polarity/weights/ReadVariableOp*
_output_shapes

:*
T0
�
Clinear/linear_model/linear_model/linear_model/polarity/weighted_sumMatMul>linear/linear_model/linear_model/linear_model/polarity/Reshape$linear/linear_model/polarity/weights*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Elinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:2Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
?linear/linear_model/linear_model/linear_model/subjectivity/CastCastElinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
@linear/linear_model/linear_model/linear_model/subjectivity/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Nlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/subjectivity/ShapeNlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackPlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
�
Jlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceJlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Blinear/linear_model/linear_model/linear_model/subjectivity/ReshapeReshape?linear/linear_model/linear_model/linear_model/subjectivity/CastHlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
7linear/linear_model/subjectivity/weights/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
(linear/linear_model/subjectivity/weightsIdentity7linear/linear_model/subjectivity/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Glinear/linear_model/linear_model/linear_model/subjectivity/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshape(linear/linear_model/subjectivity/weights*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
�
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNClinear/linear_model/linear_model/linear_model/polarity/weighted_sumGlinear/linear_model/linear_model/linear_model/subjectivity/weighted_sum*
N*
_output_shapes

:*
T0
�
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
�
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*
data_formatNHWC*
_output_shapes

:
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
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
�
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
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
�
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
�
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
�
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1*
T0	*
N*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
_output_shapes
: *
T0	
�
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: : 
�
3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
_output_shapes
: *
T0

�
3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
_output_shapes
: *
T0

�
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch+linear/linear_model/polarity/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: : 
�
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
�
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size*
_output_shapes
: : 
�
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
T0*
_output_shapes
: 
�
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
�
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: : 
�
5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch/linear/linear_model/subjectivity/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
dtype0	*
_output_shapes
: *
value	B	 R
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
�
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
T0*
N*
_output_shapes
: : 
�
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge*
T0*
N*
_output_shapes
: 
�
)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
�
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 
�
$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
�
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
i
linear/head/logits/ShapeConst*
valueB"      *
dtype0*
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
���������*
dtype0*
_output_shapes
: 
�
linear/head/labels/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:3!linear/head/labels/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
i
linear/head/labels/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
k
linear/head/labels/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
n
,linear/head/labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
~
-linear/head/labels/assert_rank_at_least/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
^
Vlinear/head/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
�
&linear/head/labels/strided_slice/stackConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB: 
�
(linear/head/labels/strided_slice/stack_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
���������*
dtype0*
_output_shapes
:
�
(linear/head/labels/strided_slice/stack_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
�
 linear/head/labels/strided_sliceStridedSlicelinear/head/labels/Shape_1&linear/head/labels/strided_slice/stack(linear/head/labels/strided_slice/stack_1(linear/head/labels/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
"linear/head/labels/concat/values_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
�
linear/head/labels/concat/axisConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
value	B : *
dtype0*
_output_shapes
: 
�
linear/head/labels/concatConcatV2 linear/head/labels/strided_slice"linear/head/labels/concat/values_1linear/head/labels/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
%linear/head/labels/assert_equal/EqualEquallinear/head/labels/concatlinear/head/labels/Shape*
T0*
_output_shapes
:
�
%linear/head/labels/assert_equal/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
�
#linear/head/labels/assert_equal/AllAll%linear/head/labels/assert_equal/Equal%linear/head/labels/assert_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
�
,linear/head/labels/assert_equal/Assert/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
�
.linear/head/labels/assert_equal/Assert/Const_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_0ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *(
valueB Bexpected_labels_shape: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
�
-linear/head/labels/assert_equal/Assert/AssertAssert#linear/head/labels/assert_equal/All4linear/head/labels/assert_equal/Assert/Assert/data_0linear/head/labels/concat4linear/head/labels/assert_equal/Assert/Assert/data_2linear/head/labels/Shape*
T
2*
	summarize
�
linear/head/labelsIdentitylinear/head/labels/ExpandDims.^linear/head/labels/assert_equal/Assert/AssertH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*
_output_shapes

:
w
linear/head/ToFloatCastlinear/head/labels*
Truncate( *
_output_shapes

:*

DstT0*

SrcT0
�
0linear/head/mean_squared_error/SquaredDifferenceSquaredDifference:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloat*
T0*
_output_shapes

:
�
;linear/head/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Alinear/head/mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
@linear/head/mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
�
@linear/head/mean_squared_error/assert_broadcastable/values/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
?linear/head/mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
W
Olinear/head/mean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
�
%linear/head/mean_squared_error/Cast/xConstP^linear/head/mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"linear/head/mean_squared_error/MulMul0linear/head/mean_squared_error/SquaredDifference%linear/head/mean_squared_error/Cast/x*
T0*
_output_shapes

:
{
6linear/head/weighted_loss/assert_broadcastable/weightsConst*
valueB
 *  �?*
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
�
;linear/head/weighted_loss/assert_broadcastable/values/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
:linear/head/weighted_loss/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
R
Jlinear/head/weighted_loss/assert_broadcastable/static_scalar_check_successNoOp
�
 linear/head/weighted_loss/Cast/xConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/weighted_loss/MulMul"linear/head/mean_squared_error/Mul linear/head/weighted_loss/Cast/x*
T0*
_output_shapes

:
�
linear/head/weighted_loss/ConstConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
�
linear/head/weighted_loss/SumSumlinear/head/weighted_loss/Mullinear/head/weighted_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
^
linear/head/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
linear/head/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
linear/head/gradients/FillFilllinear/head/gradients/Shapelinear/head/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
Flinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
@linear/head/gradients/linear/head/weighted_loss/Sum_grad/ReshapeReshapelinear/head/gradients/FillFlinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Sum_grad/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
�
=linear/head/gradients/linear/head/weighted_loss/Sum_grad/TileTile@linear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape>linear/head/gradients/linear/head/weighted_loss/Sum_grad/Const*

Tmultiples0*
T0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Nlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulMul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile linear/head/weighted_loss/Cast/x*
_output_shapes

:*
T0
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/SumSum<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulNlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeReshape<linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Mul"linear/head/mean_squared_error/Mul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile*
_output_shapes

:*
T0
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Plinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Blinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1Reshape>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Ilinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_depsNoOpA^linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeC^linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1
�
Qlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependencyIdentity@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeJ^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape*
_output_shapes

:
�
Slinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency_1IdentityBlinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1J^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1*
_output_shapes
: 
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Slinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulMulQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency%linear/head/mean_squared_error/Cast/x*
T0*
_output_shapes

:
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumSumAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulSlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeReshapeAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Mul0linear/head/mean_squared_error/SquaredDifferenceQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Ulinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Glinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1ReshapeClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Nlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_depsNoOpF^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeH^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1
�
Vlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependencyIdentityElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeO^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape*
_output_shapes

:
�
Xlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency_1IdentityGlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1O^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1*
_output_shapes
: 
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
�
alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeSlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Rlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarConstW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulMulRlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarVlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/subSub:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloatW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/sub*
T0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumSumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ReshapeReshapeOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1clinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
�
Ulinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1ReshapeQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegNegUlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1*
_output_shapes

:*
T0
�
\linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOpP^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegT^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
dlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentitySlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
flinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1IdentityOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*b
_classX
VTloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg*
_output_shapes

:
�
alinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradBiasAddGraddlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
�
flinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_depsNoOpe^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyb^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyIdentitydlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1Identityalinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*
T0*t
_classj
hfloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad*
_output_shapes
:
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_depsNoOpo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency
�
vlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependencyIdentitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
_output_shapes

:*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
xlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1Identitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
elinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulMatMulvlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency$linear/linear_model/polarity/weights*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
�
glinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1MatMul>linear/linear_model/linear_model/linear_model/polarity/Reshapevlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
olinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_depsNoOpf^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulh^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1
�
wlinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependencyIdentityelinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulp^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*
_output_shapes

:*
T0*x
_classn
ljloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul
�
ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1Identityglinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1p^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*
T0*z
_classp
nlloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1*
_output_shapes

:
�
ilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMulMatMulxlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1(linear/linear_model/subjectivity/weights*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
�
klinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1MatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshapexlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
slinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_depsNoOpj^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMull^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1
�
{linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependencyIdentityilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMult^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
T0*|
_classr
pnloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul*
_output_shapes

:
�
}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1Identityklinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1t^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
_output_shapes

:*
T0*~
_classt
rploc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1
�
linear/head/ConstConst*
valueB*���=*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
7linear/linear/linear_model/polarity/weights/part_0/FtrlVarHandleOp*
dtype0*
_output_shapes
: *H
shared_name97linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:
�
Xlinear/linear/linear_model/polarity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
>linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignAssignVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrllinear/head/Const*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zerosConst*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1VarHandleOp*J
shared_name;9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
Zlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
@linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignAssignVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
Mlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
linear/head/Const_1Const*
valueB*���=*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
;linear/linear/linear_model/subjectivity/weights/part_0/FtrlVarHandleOp*
dtype0*
_output_shapes
: *L
shared_name=;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container *
shape
:
�
\linear/linear/linear_model/subjectivity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
Blinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignAssignVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrllinear/head/Const_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *N
shared_name?=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container 
�
^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
Dlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/AssignAssignVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Qlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
dtype0*
_output_shapes

:*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
linear/head/Const_2Const*
valueB*���=*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
3linear/linear/linear_model/bias_weights/part_0/FtrlVarHandleOp*
shape:*
dtype0*
_output_shapes
: *D
shared_name53linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container 
�
Tlinear/linear/linear_model/bias_weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
_output_shapes
: *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
:linear/linear/linear_model/bias_weights/part_0/Ftrl/AssignAssignVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrllinear/head/Const_2*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
5linear/linear/linear_model/bias_weights/part_0/Ftrl_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *F
shared_name75linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container 
�
Vlinear/linear/linear_model/bias_weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
<linear/linear/linear_model/bias_weights/part_0/Ftrl_1/AssignAssignVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
Ilinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
c
linear/head/Ftrl/learning_rateConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
p
+linear/head/Ftrl/l1_regularization_strengthConst*
dtype0*
_output_shapes
: *
valueB
 *    
p
+linear/head/Ftrl/l2_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
5linear/head/Ftrl/l2_shrinkage_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$linear/head/Ftrl/learning_rate_powerConst*
valueB
 *   �*
dtype0*
_output_shapes
: 
�
Ulinear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl+linear/linear_model/polarity/weights/part_07linear/linear/linear_model/polarity/weights/part_0/Ftrl9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
use_locking( 
�
Ylinear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl/linear/linear_model/subjectivity/weights/part_0;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
Qlinear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlResourceApplyFtrl'linear/linear_model/bias_weights/part_03linear/linear/linear_model/bias_weights/part_0/Ftrl5linear/linear/linear_model/bias_weights/part_0/Ftrl_1plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
linear/head/Ftrl/updateNoOpR^linear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlV^linear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlZ^linear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrl
�
linear/head/Ftrl/valueConst^linear/head/Ftrl/update*
value	B	 R*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
linear/head/Ftrl	AssignAddglobal_steplinear/head/Ftrl/value*
_output_shapes
: *
use_locking( *
T0	*
_class
loc:@global_step
l
linear/head/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
`
linear/head/ones_like/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/ones_likeFilllinear/head/ones_like/Shapelinear/head/ones_like/Const*
T0*

index_type0*
_output_shapes

:
V
linear/head/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
i
linear/head/mulMullinear/head/mul/xlinear/head/ones_like*
T0*
_output_shapes

:
d
linear/head/Const_3Const*
valueB"       *
dtype0*
_output_shapes
:
z
linear/head/SumSumlinear/head/mullinear/head/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
o
linear/head/truedivRealDivlinear/head/weighted_loss/Sumlinear/head/Sum*
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
`
lossScalarSummary	loss/tagslinear/head/weighted_loss/Sum*
T0*
_output_shapes
: 
^
average_loss/tagsConst*
_output_shapes
: *
valueB Baverage_loss*
dtype0
f
average_lossScalarSummaryaverage_loss/tagslinear/head/truediv*
_output_shapes
: *
T0"&y�J�|     ���	��}�I�AJ��
�#�"
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
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
	summarizeint�
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype�
is_initialized
"
dtypetype�
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
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
�
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
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( �
�
QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint����������
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint����������
&
QueueSizeV2

handle
size�
�
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint���������"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring �
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"T�
pred

output_false"T�
output_true"T�"	
Ttype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceApplyFtrl
var	
accum

linear	
grad"T
lr"T
l1"T
l2"T
lr_power"T" 
Ttype:
2	"
use_lockingbool( �
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.14.02v1.14.0-rc1-22-gaf24dc9��

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step
�
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
_output_shapes
: : *
T0

a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
T0
*
_output_shapes
: 
_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
_output_shapes
: *
T0

h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
shapes

: : : : *

seed *
shared_name *
capacity�*
min_after_dequeue�*
	container *
seed2 *
_output_shapes
: *
component_types
2	
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
shape:*
dtype0*
_output_shapes
:
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3"/device:CPU:0*
Tcomponents
2	*

timeout_ms���������
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
value
B :�*
dtype0*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
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
�
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
g
enqueue_input/mul/yConst"/device:CPU:0*
valueB
 *>î:*
dtype0*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
_output_shapes
: *d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full*
dtype0
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
_output_shapes
: *
T0
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_ms���������*,
_output_shapes
::::*
component_types
2	
�
=linear/linear_model/polarity/weights/part_0/Initializer/zerosConst*
_output_shapes

:*
valueB*    *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
+linear/linear_model/polarity/weights/part_0VarHandleOp*
_output_shapes
: *<
shared_name-+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:*
dtype0
�
Llinear/linear_model/polarity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
2linear/linear_model/polarity/weights/part_0/AssignAssignVariableOp+linear/linear_model/polarity/weights/part_0=linear/linear_model/polarity/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
?linear/linear_model/polarity/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
Alinear/linear_model/subjectivity/weights/part_0/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
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
�
Plinear/linear_model/subjectivity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
6linear/linear_model/subjectivity/weights/part_0/AssignAssignVariableOp/linear/linear_model/subjectivity/weights/part_0Alinear/linear_model/subjectivity/weights/part_0/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Clinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
'linear/linear_model/bias_weights/part_0VarHandleOp*8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
: 
�
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Alinear/linear_model/linear_model/linear_model/polarity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:1Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
;linear/linear_model/linear_model/linear_model/polarity/CastCastAlinear/linear_model/linear_model/linear_model/polarity/ExpandDims*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
<linear/linear_model/linear_model/linear_model/polarity/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
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
�
Flinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Dlinear/linear_model/linear_model/linear_model/polarity/Reshape/shapePackDlinear/linear_model/linear_model/linear_model/polarity/strided_sliceFlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
>linear/linear_model/linear_model/linear_model/polarity/ReshapeReshape;linear/linear_model/linear_model/linear_model/polarity/CastDlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape*
_output_shapes

:*
T0*
Tshape0
�
3linear/linear_model/polarity/weights/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
$linear/linear_model/polarity/weightsIdentity3linear/linear_model/polarity/weights/ReadVariableOp*
_output_shapes

:*
T0
�
Clinear/linear_model/linear_model/linear_model/polarity/weighted_sumMatMul>linear/linear_model/linear_model/linear_model/polarity/Reshape$linear/linear_model/polarity/weights*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Elinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:2Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
?linear/linear_model/linear_model/linear_model/subjectivity/CastCastElinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
@linear/linear_model/linear_model/linear_model/subjectivity/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/subjectivity/ShapeNlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackPlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
Jlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceJlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N
�
Blinear/linear_model/linear_model/linear_model/subjectivity/ReshapeReshape?linear/linear_model/linear_model/linear_model/subjectivity/CastHlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
7linear/linear_model/subjectivity/weights/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes

:*
dtype0
�
(linear/linear_model/subjectivity/weightsIdentity7linear/linear_model/subjectivity/weights/ReadVariableOp*
_output_shapes

:*
T0
�
Glinear/linear_model/linear_model/linear_model/subjectivity/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshape(linear/linear_model/subjectivity/weights*
transpose_b( *
T0*
_output_shapes

:*
transpose_a( 
�
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNClinear/linear_model/linear_model/linear_model/polarity/weighted_sumGlinear/linear_model/linear_model/linear_model/subjectivity/weighted_sum*
_output_shapes

:*
T0*
N
�
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
�
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*
data_formatNHWC*
_output_shapes

:
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
�
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
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
�
3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
f
$linear/zero_fraction/total_size/SizeConst*
_output_shapes
: *
value	B	 R*
dtype0	
�
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
�
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1*
T0	*
N*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
_output_shapes
: *
T0	
�
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
_output_shapes
: : *
T0

�
3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
_output_shapes
: *
T0

�
3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: 
�
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch+linear/linear_model/polarity/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: : 
�
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
_output_shapes
: : *
T0

�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*
Truncate( *
_output_shapes

:*

DstT0*

SrcT0

�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*
Truncate( *
_output_shapes

:*

DstT0	*

SrcT0

�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
_output_shapes
: : *
T0	*
N
�
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
�
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
�
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size*
_output_shapes
: : 
�
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
T0*
_output_shapes
: 
�
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
�
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: : *
T0

�
5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
_output_shapes
: *
T0

�
5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: *
T0

�
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch/linear/linear_model/subjectivity/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
dtype0	*
_output_shapes
: *
value	B	 R
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*(
_output_shapes
::*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*
Truncate( *
_output_shapes

:*

DstT0*

SrcT0

�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
�
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:*
T0
�
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	
�
Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
�
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
�
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
N*
_output_shapes
: : *
T0
�
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge*
T0*
N*
_output_shapes
: 
�
)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 
�
$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
�
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
i
linear/head/logits/ShapeConst*
valueB"      *
dtype0*
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
���������*
dtype0*
_output_shapes
: 
�
linear/head/labels/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:3!linear/head/labels/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
i
linear/head/labels/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
k
linear/head/labels/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
n
,linear/head/labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
~
-linear/head/labels/assert_rank_at_least/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
^
Vlinear/head/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
�
&linear/head/labels/strided_slice/stackConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
�
(linear/head/labels/strided_slice/stack_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
���������*
dtype0*
_output_shapes
:
�
(linear/head/labels/strided_slice/stack_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
�
 linear/head/labels/strided_sliceStridedSlicelinear/head/labels/Shape_1&linear/head/labels/strided_slice/stack(linear/head/labels/strided_slice/stack_1(linear/head/labels/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
�
"linear/head/labels/concat/values_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB:
�
linear/head/labels/concat/axisConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
value	B : *
dtype0
�
linear/head/labels/concatConcatV2 linear/head/labels/strided_slice"linear/head/labels/concat/values_1linear/head/labels/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
%linear/head/labels/assert_equal/EqualEquallinear/head/labels/concatlinear/head/labels/Shape*
T0*
_output_shapes
:
�
%linear/head/labels/assert_equal/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
�
#linear/head/labels/assert_equal/AllAll%linear/head/labels/assert_equal/Equal%linear/head/labels/assert_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
�
,linear/head/labels/assert_equal/Assert/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
�
.linear/head/labels/assert_equal/Assert/Const_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_0ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
valueB Blabels_shape: *
dtype0
�
-linear/head/labels/assert_equal/Assert/AssertAssert#linear/head/labels/assert_equal/All4linear/head/labels/assert_equal/Assert/Assert/data_0linear/head/labels/concat4linear/head/labels/assert_equal/Assert/Assert/data_2linear/head/labels/Shape*
T
2*
	summarize
�
linear/head/labelsIdentitylinear/head/labels/ExpandDims.^linear/head/labels/assert_equal/Assert/AssertH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0*
_output_shapes

:
w
linear/head/ToFloatCastlinear/head/labels*
Truncate( *
_output_shapes

:*

DstT0*

SrcT0
�
0linear/head/mean_squared_error/SquaredDifferenceSquaredDifference:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloat*
T0*
_output_shapes

:
�
;linear/head/mean_squared_error/assert_broadcastable/weightsConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Alinear/head/mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
@linear/head/mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
�
@linear/head/mean_squared_error/assert_broadcastable/values/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
?linear/head/mean_squared_error/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0
W
Olinear/head/mean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
�
%linear/head/mean_squared_error/Cast/xConstP^linear/head/mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"linear/head/mean_squared_error/MulMul0linear/head/mean_squared_error/SquaredDifference%linear/head/mean_squared_error/Cast/x*
T0*
_output_shapes

:
{
6linear/head/weighted_loss/assert_broadcastable/weightsConst*
valueB
 *  �?*
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
;linear/head/weighted_loss/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
�
;linear/head/weighted_loss/assert_broadcastable/values/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
:linear/head/weighted_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
Jlinear/head/weighted_loss/assert_broadcastable/static_scalar_check_successNoOp
�
 linear/head/weighted_loss/Cast/xConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/weighted_loss/MulMul"linear/head/mean_squared_error/Mul linear/head/weighted_loss/Cast/x*
T0*
_output_shapes

:
�
linear/head/weighted_loss/ConstConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
�
linear/head/weighted_loss/SumSumlinear/head/weighted_loss/Mullinear/head/weighted_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
^
linear/head/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
linear/head/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/gradients/FillFilllinear/head/gradients/Shapelinear/head/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
Flinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Sum_grad/ReshapeReshapelinear/head/gradients/FillFlinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Sum_grad/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
�
=linear/head/gradients/linear/head/weighted_loss/Sum_grad/TileTile@linear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape>linear/head/gradients/linear/head/weighted_loss/Sum_grad/Const*

Tmultiples0*
T0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Nlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulMul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile linear/head/weighted_loss/Cast/x*
_output_shapes

:*
T0
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/SumSum<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulNlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeReshape<linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Mul"linear/head/mean_squared_error/Mul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile*
T0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Plinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Blinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1Reshape>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Ilinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_depsNoOpA^linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeC^linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1
�
Qlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependencyIdentity@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeJ^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape*
_output_shapes

:
�
Slinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency_1IdentityBlinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1J^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Slinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulMulQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency%linear/head/mean_squared_error/Cast/x*
T0*
_output_shapes

:
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumSumAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulSlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeReshapeAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Mul0linear/head/mean_squared_error/SquaredDifferenceQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Ulinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Glinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1ReshapeClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Nlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_depsNoOpF^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeH^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1
�
Vlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependencyIdentityElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeO^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*
_output_shapes

:*
T0*X
_classN
LJloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape
�
Xlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency_1IdentityGlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1O^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*Z
_classP
NLloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1*
_output_shapes
: *
T0
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
�
alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeSlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Rlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarConstW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulMulRlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarVlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/subSub:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloatW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
_output_shapes

:*
T0
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/sub*
_output_shapes

:*
T0
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumSumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ReshapeReshapeOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1clinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:
�
Ulinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1ReshapeQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegNegUlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1*
_output_shapes

:*
T0
�
\linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOpP^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegT^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
dlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentitySlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
flinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1IdentityOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
_output_shapes

:*
T0*b
_classX
VTloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg
�
alinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradBiasAddGraddlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
�
flinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_depsNoOpe^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyb^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyIdentitydlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*
_output_shapes

:*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1Identityalinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*
T0*t
_classj
hfloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad*
_output_shapes
:
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_depsNoOpo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency
�
vlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependencyIdentitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
xlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1Identitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
_output_shapes

:*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
elinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulMatMulvlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency$linear/linear_model/polarity/weights*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
�
glinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1MatMul>linear/linear_model/linear_model/linear_model/polarity/Reshapevlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
olinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_depsNoOpf^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulh^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1
�
wlinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependencyIdentityelinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulp^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*x
_classn
ljloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul*
_output_shapes

:*
T0
�
ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1Identityglinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1p^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*
_output_shapes

:*
T0*z
_classp
nlloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1
�
ilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMulMatMulxlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1(linear/linear_model/subjectivity/weights*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
�
klinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1MatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshapexlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
slinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_depsNoOpj^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMull^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1
�
{linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependencyIdentityilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMult^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
T0*|
_classr
pnloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul*
_output_shapes

:
�
}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1Identityklinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1t^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
T0*~
_classt
rploc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1*
_output_shapes

:
�
linear/head/ConstConst*
valueB*���=*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
7linear/linear/linear_model/polarity/weights/part_0/FtrlVarHandleOp*H
shared_name97linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
Xlinear/linear/linear_model/polarity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
>linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignAssignVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrllinear/head/Const*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
dtype0*
_output_shapes

:*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zerosConst*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *J
shared_name;9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container 
�
Zlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
@linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignAssignVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
Mlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
linear/head/Const_1Const*
valueB*���=*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
;linear/linear/linear_model/subjectivity/weights/part_0/FtrlVarHandleOp*
dtype0*
_output_shapes
: *L
shared_name=;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container *
shape
:
�
\linear/linear/linear_model/subjectivity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
Blinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignAssignVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrllinear/head/Const_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1VarHandleOp*
dtype0*
_output_shapes
: *N
shared_name?=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container *
shape
:
�
^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
Dlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/AssignAssignVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zeros*
dtype0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
Qlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
linear/head/Const_2Const*
dtype0*
_output_shapes
:*
valueB*���=*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
3linear/linear/linear_model/bias_weights/part_0/FtrlVarHandleOp*
dtype0*
_output_shapes
: *D
shared_name53linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:
�
Tlinear/linear/linear_model/bias_weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
:linear/linear/linear_model/bias_weights/part_0/Ftrl/AssignAssignVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrllinear/head/Const_2*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
5linear/linear/linear_model/bias_weights/part_0/Ftrl_1VarHandleOp*
dtype0*
_output_shapes
: *F
shared_name75linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:
�
Vlinear/linear/linear_model/bias_weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
<linear/linear/linear_model/bias_weights/part_0/Ftrl_1/AssignAssignVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
Ilinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
c
linear/head/Ftrl/learning_rateConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
p
+linear/head/Ftrl/l1_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
+linear/head/Ftrl/l2_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
5linear/head/Ftrl/l2_shrinkage_regularization_strengthConst*
_output_shapes
: *
valueB
 *    *
dtype0
i
$linear/head/Ftrl/learning_rate_powerConst*
valueB
 *   �*
dtype0*
_output_shapes
: 
�
Ulinear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl+linear/linear_model/polarity/weights/part_07linear/linear/linear_model/polarity/weights/part_0/Ftrl9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
Ylinear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl/linear/linear_model/subjectivity/weights/part_0;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
Qlinear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlResourceApplyFtrl'linear/linear_model/bias_weights/part_03linear/linear/linear_model/bias_weights/part_0/Ftrl5linear/linear/linear_model/bias_weights/part_0/Ftrl_1plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking( *
T0
�
linear/head/Ftrl/updateNoOpR^linear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlV^linear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlZ^linear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrl
�
linear/head/Ftrl/valueConst^linear/head/Ftrl/update*
value	B	 R*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
linear/head/Ftrl	AssignAddglobal_steplinear/head/Ftrl/value*
use_locking( *
T0	*
_class
loc:@global_step*
_output_shapes
: 
l
linear/head/ones_like/ShapeConst*
_output_shapes
:*
valueB"      *
dtype0
`
linear/head/ones_like/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/ones_likeFilllinear/head/ones_like/Shapelinear/head/ones_like/Const*
_output_shapes

:*
T0*

index_type0
V
linear/head/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
i
linear/head/mulMullinear/head/mul/xlinear/head/ones_like*
_output_shapes

:*
T0
d
linear/head/Const_3Const*
valueB"       *
dtype0*
_output_shapes
:
z
linear/head/SumSumlinear/head/mullinear/head/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
o
linear/head/truedivRealDivlinear/head/weighted_loss/Sumlinear/head/Sum*
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
`
lossScalarSummary	loss/tagslinear/head/weighted_loss/Sum*
_output_shapes
: *
T0
^
average_loss/tagsConst*
valueB Baverage_loss*
dtype0*
_output_shapes
: 
f
average_lossScalarSummaryaverage_loss/tagslinear/head/truediv*
_output_shapes
: *
T0"&"t
lossesj
h
$linear/head/mean_squared_error/Mul:0
linear/head/weighted_loss/Sum:0
linear/head/weighted_loss/Sum:0"�
queue_runners��
�
"enqueue_input/random_shuffle_queue.enqueue_input/random_shuffle_queue_EnqueueMany(enqueue_input/random_shuffle_queue_Close"*enqueue_input/random_shuffle_queue_Close_1*" 
train_op

linear/head/Ftrl"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"�k
cond_context�k�k
�
global_step/cond/cond_textglobal_step/cond/pred_id:0global_step/cond/switch_t:0 *�
global_step/cond/pred_id:0
global_step/cond/read/Switch:1
global_step/cond/read:0
global_step/cond/switch_t:0
global_step:08
global_step/cond/pred_id:0global_step/cond/pred_id:0/
global_step:0global_step/cond/read/Switch:1
�
global_step/cond/cond_text_1global_step/cond/pred_id:0global_step/cond/switch_f:0*�
global_step/Initializer/zeros:0
global_step/cond/Switch_1:0
global_step/cond/Switch_1:1
global_step/cond/pred_id:0
global_step/cond/switch_f:08
global_step/cond/pred_id:0global_step/cond/pred_id:0>
global_step/Initializer/zeros:0global_step/cond/Switch_1:0
�
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *�
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
�.
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*�
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
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0e
&linear/zero_fraction/total_size/Size:0;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0�
-linear/linear_model/polarity/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:02�

�

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:02�

�

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0*�
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
(linear/zero_fraction/total_size/Size_1:0=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0�
1linear/linear_model/subjectivity/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0"2
global_step_read_op_cache

global_step/add:0"�
trainable_variables��
�
-linear/linear_model/polarity/weights/part_0:02linear/linear_model/polarity/weights/part_0/AssignAlinear/linear_model/polarity/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/polarity/weights  "(2?linear/linear_model/polarity/weights/part_0/Initializer/zeros:08
�
1linear/linear_model/subjectivity/weights/part_0:06linear/linear_model/subjectivity/weights/part_0/AssignElinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/subjectivity/weights  "(2Clinear/linear_model/subjectivity/weights/part_0/Initializer/zeros:08
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"�
	summaries�
�
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full:0
linear/bias:0
!linear/fraction_of_zero_weights:0
loss:0
average_loss:0"�
	variables��
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
�
-linear/linear_model/polarity/weights/part_0:02linear/linear_model/polarity/weights/part_0/AssignAlinear/linear_model/polarity/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/polarity/weights  "(2?linear/linear_model/polarity/weights/part_0/Initializer/zeros:08
�
1linear/linear_model/subjectivity/weights/part_0:06linear/linear_model/subjectivity/weights/part_0/AssignElinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/subjectivity/weights  "(2Clinear/linear_model/subjectivity/weights/part_0/Initializer/zeros:08
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08
�
9linear/linear/linear_model/polarity/weights/part_0/Ftrl:0>linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignMlinear/linear/linear_model/polarity/weights/part_0/Ftrl/Read/ReadVariableOp:0">
0linear/linear_model/polarity/weights/part_0/Ftrl  "(2linear/head/Const:0
�
;linear/linear/linear_model/polarity/weights/part_0/Ftrl_1:0@linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignOlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Read/ReadVariableOp:0"@
2linear/linear_model/polarity/weights/part_0/Ftrl_1  "(2Mlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zeros:0
�
=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl:0Blinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignQlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/Read/ReadVariableOp:0"B
4linear/linear_model/subjectivity/weights/part_0/Ftrl  "(2linear/head/Const_1:0
�
?linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1:0Dlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/AssignSlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Read/ReadVariableOp:0"D
6linear/linear_model/subjectivity/weights/part_0/Ftrl_1  "(2Qlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zeros:0
�
5linear/linear/linear_model/bias_weights/part_0/Ftrl:0:linear/linear/linear_model/bias_weights/part_0/Ftrl/AssignIlinear/linear/linear_model/bias_weights/part_0/Ftrl/Read/ReadVariableOp:0"7
,linear/linear_model/bias_weights/part_0/Ftrl "(2linear/head/Const_2:0
�
7linear/linear/linear_model/bias_weights/part_0/Ftrl_1:0<linear/linear/linear_model/bias_weights/part_0/Ftrl_1/AssignKlinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Read/ReadVariableOp:0"9
.linear/linear_model/bias_weights/part_0/Ftrl_1 "(2Ilinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zeros:0"

savers ՉB���     �L�	C6}�I�A"��

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
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
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
_output_shapes
: : *
T0

a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
T0
*
_output_shapes
: 
_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
_output_shapes
: : *
T0	*
_class
loc:@global_step
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
T0	*
N*
_output_shapes
: : 
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
_output_shapes
: *
component_types
2	*
shapes

: : : : *

seed *
shared_name *
min_after_dequeue�*
capacity�*
	container *
seed2 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
_output_shapes
:*
shape:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
shape:*
dtype0*
_output_shapes
:
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
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3"/device:CPU:0*
Tcomponents
2	*

timeout_ms���������
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
value
B :�*
dtype0*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
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
�
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
g
enqueue_input/mul/yConst"/device:CPU:0*
valueB
 *>î:*
dtype0*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
dtype0*
_output_shapes
: *d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*,
_output_shapes
::::*
component_types
2	*

timeout_ms���������
�
=linear/linear_model/polarity/weights/part_0/Initializer/zerosConst*
valueB*    *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
+linear/linear_model/polarity/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *<
shared_name-+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container 
�
Llinear/linear_model/polarity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
2linear/linear_model/polarity/weights/part_0/AssignAssignVariableOp+linear/linear_model/polarity/weights/part_0=linear/linear_model/polarity/weights/part_0/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
?linear/linear_model/polarity/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
Alinear/linear_model/subjectivity/weights/part_0/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
/linear/linear_model/subjectivity/weights/part_0VarHandleOp*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: *@
shared_name1/linear/linear_model/subjectivity/weights/part_0
�
Plinear/linear_model/subjectivity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
6linear/linear_model/subjectivity/weights/part_0/AssignAssignVariableOp/linear/linear_model/subjectivity/weights/part_0Alinear/linear_model/subjectivity/weights/part_0/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Clinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
'linear/linear_model/bias_weights/part_0VarHandleOp*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0
�
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Alinear/linear_model/linear_model/linear_model/polarity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:1Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
;linear/linear_model/linear_model/linear_model/polarity/CastCastAlinear/linear_model/linear_model/linear_model/polarity/ExpandDims*
_output_shapes

:*

DstT0*

SrcT0*
Truncate( 
�
<linear/linear_model/linear_model/linear_model/polarity/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
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
�
Flinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Dlinear/linear_model/linear_model/linear_model/polarity/Reshape/shapePackDlinear/linear_model/linear_model/linear_model/polarity/strided_sliceFlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N
�
>linear/linear_model/linear_model/linear_model/polarity/ReshapeReshape;linear/linear_model/linear_model/linear_model/polarity/CastDlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
3linear/linear_model/polarity/weights/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
$linear/linear_model/polarity/weightsIdentity3linear/linear_model/polarity/weights/ReadVariableOp*
_output_shapes

:*
T0
�
Clinear/linear_model/linear_model/linear_model/polarity/weighted_sumMatMul>linear/linear_model/linear_model/linear_model/polarity/Reshape$linear/linear_model/polarity/weights*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
Elinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:2Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
�
?linear/linear_model/linear_model/linear_model/subjectivity/CastCastElinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
@linear/linear_model/linear_model/linear_model/subjectivity/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Nlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/subjectivity/ShapeNlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackPlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
Jlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceJlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
�
Blinear/linear_model/linear_model/linear_model/subjectivity/ReshapeReshape?linear/linear_model/linear_model/linear_model/subjectivity/CastHlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
7linear/linear_model/subjectivity/weights/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
(linear/linear_model/subjectivity/weightsIdentity7linear/linear_model/subjectivity/weights/ReadVariableOp*
T0*
_output_shapes

:
�
Glinear/linear_model/linear_model/linear_model/subjectivity/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshape(linear/linear_model/subjectivity/weights*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNClinear/linear_model/linear_model/linear_model/polarity/weighted_sumGlinear/linear_model/linear_model/linear_model/subjectivity/weighted_sum*
T0*
N*
_output_shapes

:
�
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
_output_shapes
:*
T0
�
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*
data_formatNHWC*
_output_shapes

:
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
linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
\
linear/bias/tagsConst*
dtype0*
_output_shapes
: *
valueB Blinear/bias
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 
�
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
�
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
�
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1*
T0	*
N*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
�
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
_output_shapes
: : *
T0

�
3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
_output_shapes
: *
T0

�
2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
_output_shapes
: *
T0

�
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
�
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch+linear/linear_model/polarity/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: : 
�
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
_output_shapes
: : *
T0

�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
_output_shapes
: *
T0

�
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::*
T0
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*
Truncate( *
_output_shapes

:*

DstT0	*

SrcT0

�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	
�
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size*
_output_shapes
: : 
�
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
_output_shapes
: *
T0
�
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
�
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
_output_shapes
: *
T0	
�
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: : *
T0

�
5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 
�
5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
_output_shapes
: *
T0

�
4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch/linear/linear_model/subjectivity/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
_output_shapes
: : *
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
_output_shapes
: *
T0

�
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
_output_shapes
: *
T0

�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*
_output_shapes

:*

DstT0*

SrcT0
*
Truncate( 
�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
�
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
_output_shapes
: *
T0
�
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
_output_shapes
: : *
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1
�
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
_output_shapes
: : *
T0*
N
�
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge*
_output_shapes
: *
T0*
N
�
)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
�
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
_output_shapes
: *
T0
�
$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
�
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
_output_shapes
: *
T0
i
linear/head/logits/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
,linear/head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
l
!linear/head/labels/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
linear/head/labels/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:3!linear/head/labels/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
i
linear/head/labels/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
k
linear/head/labels/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
n
,linear/head/labels/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
~
-linear/head/labels/assert_rank_at_least/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
^
Vlinear/head/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
�
&linear/head/labels/strided_slice/stackConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB: 
�
(linear/head/labels/strided_slice/stack_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:
���������*
dtype0*
_output_shapes
:
�
(linear/head/labels/strided_slice/stack_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
�
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
�
"linear/head/labels/concat/values_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB:
�
linear/head/labels/concat/axisConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
value	B : *
dtype0*
_output_shapes
: 
�
linear/head/labels/concatConcatV2 linear/head/labels/strided_slice"linear/head/labels/concat/values_1linear/head/labels/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
%linear/head/labels/assert_equal/EqualEquallinear/head/labels/concatlinear/head/labels/Shape*
T0*
_output_shapes
:
�
%linear/head/labels/assert_equal/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
�
#linear/head/labels/assert_equal/AllAll%linear/head/labels/assert_equal/Equal%linear/head/labels/assert_equal/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
�
,linear/head/labels/assert_equal/Assert/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *(
valueB Bexpected_labels_shape: 
�
.linear/head/labels/assert_equal/Assert/Const_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_0ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
valueB Blabels_shape: *
dtype0
�
-linear/head/labels/assert_equal/Assert/AssertAssert#linear/head/labels/assert_equal/All4linear/head/labels/assert_equal/Assert/Assert/data_0linear/head/labels/concat4linear/head/labels/assert_equal/Assert/Assert/data_2linear/head/labels/Shape*
	summarize*
T
2
�
linear/head/labelsIdentitylinear/head/labels/ExpandDims.^linear/head/labels/assert_equal/Assert/AssertH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes

:*
T0
w
linear/head/ToFloatCastlinear/head/labels*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
0linear/head/mean_squared_error/SquaredDifferenceSquaredDifference:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloat*
_output_shapes

:*
T0
�
;linear/head/mean_squared_error/assert_broadcastable/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
Alinear/head/mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
@linear/head/mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
�
@linear/head/mean_squared_error/assert_broadcastable/values/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
?linear/head/mean_squared_error/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
W
Olinear/head/mean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
�
%linear/head/mean_squared_error/Cast/xConstP^linear/head/mean_squared_error/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
"linear/head/mean_squared_error/MulMul0linear/head/mean_squared_error/SquaredDifference%linear/head/mean_squared_error/Cast/x*
T0*
_output_shapes

:
{
6linear/head/weighted_loss/assert_broadcastable/weightsConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 

<linear/head/weighted_loss/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 
}
;linear/head/weighted_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
�
;linear/head/weighted_loss/assert_broadcastable/values/shapeConst*
valueB"      *
dtype0*
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
�
 linear/head/weighted_loss/Cast/xConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/weighted_loss/MulMul"linear/head/mean_squared_error/Mul linear/head/weighted_loss/Cast/x*
_output_shapes

:*
T0
�
linear/head/weighted_loss/ConstConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
�
linear/head/weighted_loss/SumSumlinear/head/weighted_loss/Mullinear/head/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
^
linear/head/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
linear/head/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/gradients/FillFilllinear/head/gradients/Shapelinear/head/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
Flinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
@linear/head/gradients/linear/head/weighted_loss/Sum_grad/ReshapeReshapelinear/head/gradients/FillFlinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shape*
_output_shapes

:*
T0*
Tshape0
�
>linear/head/gradients/linear/head/weighted_loss/Sum_grad/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
�
=linear/head/gradients/linear/head/weighted_loss/Sum_grad/TileTile@linear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape>linear/head/gradients/linear/head/weighted_loss/Sum_grad/Const*
_output_shapes

:*

Tmultiples0*
T0
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Nlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulMul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile linear/head/weighted_loss/Cast/x*
_output_shapes

:*
T0
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/SumSum<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulNlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeReshape<linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Mul"linear/head/mean_squared_error/Mul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile*
T0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Plinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Blinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1Reshape>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Ilinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_depsNoOpA^linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeC^linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1
�
Qlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependencyIdentity@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeJ^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape*
_output_shapes

:
�
Slinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency_1IdentityBlinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1J^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1*
_output_shapes
: 
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Slinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulMulQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency%linear/head/mean_squared_error/Cast/x*
_output_shapes

:*
T0
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumSumAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulSlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeReshapeAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Mul0linear/head/mean_squared_error/SquaredDifferenceQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Ulinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Glinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1ReshapeClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Nlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_depsNoOpF^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeH^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1
�
Vlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependencyIdentityElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeO^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape*
_output_shapes

:
�
Xlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency_1IdentityGlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1O^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1*
_output_shapes
: 
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
�
alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeSlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Rlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarConstW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulMulRlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarVlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/subSub:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloatW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
_output_shapes

:*
T0
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/sub*
T0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumSumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ReshapeReshapeOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1clinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
�
Ulinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1ReshapeQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegNegUlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:
�
\linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOpP^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegT^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
dlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentitySlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
_output_shapes

:*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
flinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1IdentityOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*b
_classX
VTloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg*
_output_shapes

:
�
alinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradBiasAddGraddlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
�
flinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_depsNoOpe^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyb^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyIdentitydlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1Identityalinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*
T0*t
_classj
hfloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad*
_output_shapes
:
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_depsNoOpo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency
�
vlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependencyIdentitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
_output_shapes

:*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
xlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1Identitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
_output_shapes

:*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
elinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulMatMulvlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency$linear/linear_model/polarity/weights*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
�
glinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1MatMul>linear/linear_model/linear_model/linear_model/polarity/Reshapevlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
olinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_depsNoOpf^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulh^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1
�
wlinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependencyIdentityelinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulp^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*
T0*x
_classn
ljloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul*
_output_shapes

:
�
ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1Identityglinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1p^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*
T0*z
_classp
nlloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1*
_output_shapes

:
�
ilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMulMatMulxlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1(linear/linear_model/subjectivity/weights*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
klinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1MatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshapexlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
slinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_depsNoOpj^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMull^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1
�
{linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependencyIdentityilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMult^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
T0*|
_classr
pnloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul*
_output_shapes

:
�
}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1Identityklinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1t^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
T0*~
_classt
rploc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1*
_output_shapes

:
�
linear/head/ConstConst*
valueB*���=*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
7linear/linear/linear_model/polarity/weights/part_0/FtrlVarHandleOp*
shape
:*
dtype0*
_output_shapes
: *H
shared_name97linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container 
�
Xlinear/linear/linear_model/polarity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
_output_shapes
: *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
>linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignAssignVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrllinear/head/Const*
dtype0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zerosConst*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1VarHandleOp*J
shared_name;9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
Zlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
@linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignAssignVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zeros*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0
�
Mlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
linear/head/Const_1Const*
dtype0*
_output_shapes

:*
valueB*���=*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
;linear/linear/linear_model/subjectivity/weights/part_0/FtrlVarHandleOp*
shape
:*
dtype0*
_output_shapes
: *L
shared_name=;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container 
�
\linear/linear/linear_model/subjectivity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
Blinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignAssignVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrllinear/head/Const_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1VarHandleOp*N
shared_name?=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
_output_shapes
: *B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
Dlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/AssignAssignVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Qlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
linear/head/Const_2Const*
dtype0*
_output_shapes
:*
valueB*���=*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
3linear/linear/linear_model/bias_weights/part_0/FtrlVarHandleOp*D
shared_name53linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
: 
�
Tlinear/linear/linear_model/bias_weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
:linear/linear/linear_model/bias_weights/part_0/Ftrl/AssignAssignVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrllinear/head/Const_2*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    
�
5linear/linear/linear_model/bias_weights/part_0/Ftrl_1VarHandleOp*F
shared_name75linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
: 
�
Vlinear/linear/linear_model/bias_weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
_output_shapes
: *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
<linear/linear/linear_model/bias_weights/part_0/Ftrl_1/AssignAssignVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
Ilinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
c
linear/head/Ftrl/learning_rateConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
p
+linear/head/Ftrl/l1_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
+linear/head/Ftrl/l2_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
5linear/head/Ftrl/l2_shrinkage_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$linear/head/Ftrl/learning_rate_powerConst*
valueB
 *   �*
dtype0*
_output_shapes
: 
�
Ulinear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl+linear/linear_model/polarity/weights/part_07linear/linear/linear_model/polarity/weights/part_0/Ftrl9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
Ylinear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl/linear/linear_model/subjectivity/weights/part_0;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
Qlinear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlResourceApplyFtrl'linear/linear_model/bias_weights/part_03linear/linear/linear_model/bias_weights/part_0/Ftrl5linear/linear/linear_model/bias_weights/part_0/Ftrl_1plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
linear/head/Ftrl/updateNoOpR^linear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlV^linear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlZ^linear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrl
�
linear/head/Ftrl/valueConst^linear/head/Ftrl/update*
value	B	 R*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
linear/head/Ftrl	AssignAddglobal_steplinear/head/Ftrl/value*
use_locking( *
T0	*
_class
loc:@global_step*
_output_shapes
: 
l
linear/head/ones_like/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
`
linear/head/ones_like/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/ones_likeFilllinear/head/ones_like/Shapelinear/head/ones_like/Const*
T0*

index_type0*
_output_shapes

:
V
linear/head/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
i
linear/head/mulMullinear/head/mul/xlinear/head/ones_like*
T0*
_output_shapes

:
d
linear/head/Const_3Const*
valueB"       *
dtype0*
_output_shapes
:
z
linear/head/SumSumlinear/head/mullinear/head/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
o
linear/head/truedivRealDivlinear/head/weighted_loss/Sumlinear/head/Sum*
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
`
lossScalarSummary	loss/tagslinear/head/weighted_loss/Sum*
T0*
_output_shapes
: 
^
average_loss/tagsConst*
valueB Baverage_loss*
dtype0*
_output_shapes
: 
f
average_lossScalarSummaryaverage_loss/tagslinear/head/truediv*
T0*
_output_shapes
: 
�
initNoOp^global_step/Assign;^linear/linear/linear_model/bias_weights/part_0/Ftrl/Assign=^linear/linear/linear_model/bias_weights/part_0/Ftrl_1/Assign?^linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignA^linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignC^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignE^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Assign/^linear/linear_model/bias_weights/part_0/Assign3^linear/linear_model/polarity/weights/part_0/Assign7^linear/linear_model/subjectivity/weights/part_0/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
�
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
1report_uninitialized_variables/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_3VarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_4VarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_5VarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_6VarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_7VarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_8VarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
_output_shapes
: 
�
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized1report_uninitialized_variables/VarIsInitializedOp3report_uninitialized_variables/VarIsInitializedOp_13report_uninitialized_variables/VarIsInitializedOp_23report_uninitialized_variables/VarIsInitializedOp_33report_uninitialized_variables/VarIsInitializedOp_43report_uninitialized_variables/VarIsInitializedOp_53report_uninitialized_variables/VarIsInitializedOp_63report_uninitialized_variables/VarIsInitializedOp_73report_uninitialized_variables/VarIsInitializedOp_8"/device:CPU:0*
T0
*

axis *
N
*
_output_shapes
:

�
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:

�
$report_uninitialized_variables/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:
*�
value�B�
Bglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0B7linear/linear/linear_model/polarity/weights/part_0/FtrlB9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1B;linear/linear/linear_model/subjectivity/weights/part_0/FtrlB=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1B3linear/linear/linear_model/bias_weights/part_0/FtrlB5linear/linear/linear_model/bias_weights/part_0/Ftrl_1
�
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
valueB:
*
dtype0*
_output_shapes
:
�
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
�
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:
*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
�
3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:
*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0
�
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
�
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
�
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

�
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
�
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:

�
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������*
T0

�
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*
Tindices0	*
Tparams0*#
_output_shapes
:���������*
Taxis0*

batch_dims 
v
$report_uninitialized_resources/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*
T0*
N*#
_output_shapes
:���������*

Tidx0
�
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
�
3report_uninitialized_variables_1/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_3VarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_4VarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_5VarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_6VarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_7VarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_8VarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
_output_shapes
: 
�
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized3report_uninitialized_variables_1/VarIsInitializedOp5report_uninitialized_variables_1/VarIsInitializedOp_15report_uninitialized_variables_1/VarIsInitializedOp_25report_uninitialized_variables_1/VarIsInitializedOp_35report_uninitialized_variables_1/VarIsInitializedOp_45report_uninitialized_variables_1/VarIsInitializedOp_55report_uninitialized_variables_1/VarIsInitializedOp_65report_uninitialized_variables_1/VarIsInitializedOp_75report_uninitialized_variables_1/VarIsInitializedOp_8"/device:CPU:0*
T0
*

axis *
N
*
_output_shapes
:

�
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:

�
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:
*�
value�B�
Bglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0B7linear/linear/linear_model/polarity/weights/part_0/FtrlB9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1B;linear/linear/linear_model/subjectivity/weights/part_0/FtrlB=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1B3linear/linear/linear_model/bias_weights/part_0/FtrlB5linear/linear/linear_model/bias_weights/part_0/Ftrl_1
�
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

�
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
�
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
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
�
5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:

�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0
�
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 
�
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*

Tidx0*
T0*
N*
_output_shapes
:
�
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

�
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
�
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:

�
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������*
T0

�
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Taxis0*

batch_dims *
Tindices0	*
Tparams0*#
_output_shapes
:���������
x
&report_uninitialized_resources_1/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB 
O
concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
concat_1ConcatV26report_uninitialized_variables_1/boolean_mask/GatherV2&report_uninitialized_resources_1/Constconcat_1/axis*
N*#
_output_shapes
:���������*

Tidx0*
T0

init_2NoOp

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables
�
Merge/MergeSummaryMergeSummarySenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fulllinear/biaslinear/fraction_of_zero_weightslossaverage_loss*
N*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
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
�
save/Read_1/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
dtype0*
_output_shapes
:
\
save/Identity_2Identitysave/Read_1/ReadVariableOp*
_output_shapes
:*
T0
`
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
_output_shapes
:*
T0
�
save/Read_2/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
dtype0*
_output_shapes
:
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes
:
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:
�
save/Read_3/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_4/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
dtype0*
_output_shapes

:
`
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes

:
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
_output_shapes

:*
T0
�
save/Read_5/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*
dtype0*
_output_shapes

:
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_6/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
_output_shapes

:*
T0
�
save/Read_7/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*
dtype0*
_output_shapes

:
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_8/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
dtype0*
_output_shapes

:
a
save/Identity_16Identitysave/Read_8/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes

:
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_1e80436192d1423087ef7c85acef3abd/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
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
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/Read_9/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
l
save/Identity_18Identitysave/Read_9/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes
:
�
save/Read_10/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_20Identitysave/Read_10/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:
�
save/Read_11/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_22Identitysave/Read_11/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
_output_shapes
:*
T0
�
save/Read_12/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_24Identitysave/Read_12/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_13/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_26Identitysave/Read_13/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
_output_shapes

:*
T0
�
save/Read_14/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_28Identitysave/Read_14/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_15/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_30Identitysave/Read_15/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_16/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_32Identitysave/Read_16/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_17/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_34Identitysave/Read_17/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
_output_shapes

:*
T0
�
save/SaveV2_1/tensor_namesConst"/device:CPU:0*�
value�B�	B linear/linear_model/bias_weightsB,linear/linear_model/bias_weights/part_0/FtrlB.linear/linear_model/bias_weights/part_0/Ftrl_1B$linear/linear_model/polarity/weightsB0linear/linear_model/polarity/weights/part_0/FtrlB2linear/linear_model/polarity/weights/part_0/Ftrl_1B(linear/linear_model/subjectivity/weightsB4linear/linear_model/subjectivity/weights/part_0/FtrlB6linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
dtype0*
_output_shapes
:	
�
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*v
valuemBk	B1 0,1B1 0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:	
�
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_19save/Identity_21save/Identity_23save/Identity_25save/Identity_27save/Identity_29save/Identity_31save/Identity_33save/Identity_35"/device:CPU:0*
dtypes
2	
�
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/Identity_36Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
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
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
�
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
�
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*�
value�B�	B linear/linear_model/bias_weightsB,linear/linear_model/bias_weights/part_0/FtrlB.linear/linear_model/bias_weights/part_0/Ftrl_1B$linear/linear_model/polarity/weightsB0linear/linear_model/polarity/weights/part_0/FtrlB2linear/linear_model/polarity/weights/part_0/Ftrl_1B(linear/linear_model/subjectivity/weightsB4linear/linear_model/subjectivity/weights/part_0/FtrlB6linear/linear_model/subjectivity/weights/part_0/Ftrl_1
�
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*v
valuemBk	B1 0,1B1 0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2	*b
_output_shapesP
N:::::::::
b
save/Identity_37Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:
�
save/AssignVariableOpAssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_37"/device:CPU:0*
dtype0
d
save/Identity_38Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes
:
�
save/AssignVariableOp_1AssignVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrlsave/Identity_38"/device:CPU:0*
dtype0
d
save/Identity_39Identitysave/RestoreV2_1:2"/device:CPU:0*
_output_shapes
:*
T0
�
save/AssignVariableOp_2AssignVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1save/Identity_39"/device:CPU:0*
dtype0
h
save/Identity_40Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_3AssignVariableOp+linear/linear_model/polarity/weights/part_0save/Identity_40"/device:CPU:0*
dtype0
h
save/Identity_41Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_4AssignVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrlsave/Identity_41"/device:CPU:0*
dtype0
h
save/Identity_42Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_5AssignVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1save/Identity_42"/device:CPU:0*
dtype0
h
save/Identity_43Identitysave/RestoreV2_1:6"/device:CPU:0*
_output_shapes

:*
T0
�
save/AssignVariableOp_6AssignVariableOp/linear/linear_model/subjectivity/weights/part_0save/Identity_43"/device:CPU:0*
dtype0
h
save/Identity_44Identitysave/RestoreV2_1:7"/device:CPU:0*
_output_shapes

:*
T0
�
save/AssignVariableOp_7AssignVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrlsave/Identity_44"/device:CPU:0*
dtype0
h
save/Identity_45Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_8AssignVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1save/Identity_45"/device:CPU:0*
dtype0
�
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"&�BT�P     F�c	��6}�I�AJÎ
�+�+
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
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
	summarizeint�
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
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
ref"dtype�
is_initialized
"
dtypetype�
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
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
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
�
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
�
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
cancel_pending_enqueuesbool( �
�
QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint����������
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint����������
&
QueueSizeV2

handle
size�
�
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint���������"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring �
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"T�
pred

output_false"T�
output_true"T�"	
Ttype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceApplyFtrl
var	
accum

linear	
grad"T
lr"T
l1"T
l2"T
lr_power"T" 
Ttype:
2	"
use_lockingbool( �
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
�
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
E
Where

input"T	
index	"%
Ttype0
:
2	
*1.14.02v1.14.0-rc1-22-gaf24dc9��

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step
VariableV2*
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: *
shared_name 
�
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
�
!global_step/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/cond/SwitchSwitch!global_step/IsVariableInitialized!global_step/IsVariableInitialized*
_output_shapes
: : *
T0

a
global_step/cond/switch_tIdentityglobal_step/cond/Switch:1*
_output_shapes
: *
T0

_
global_step/cond/switch_fIdentityglobal_step/cond/Switch*
T0
*
_output_shapes
: 
h
global_step/cond/pred_idIdentity!global_step/IsVariableInitialized*
T0
*
_output_shapes
: 
b
global_step/cond/readIdentityglobal_step/cond/read/Switch:1*
T0	*
_output_shapes
: 
�
global_step/cond/read/Switch	RefSwitchglobal_stepglobal_step/cond/pred_id*
_class
loc:@global_step*
_output_shapes
: : *
T0	
�
global_step/cond/Switch_1Switchglobal_step/Initializer/zerosglobal_step/cond/pred_id*
T0	*
_class
loc:@global_step*
_output_shapes
: : 
}
global_step/cond/MergeMergeglobal_step/cond/Switch_1global_step/cond/read*
_output_shapes
: : *
T0	*
N
S
global_step/add/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
b
global_step/addAddglobal_step/cond/Mergeglobal_step/add/y*
T0	*
_output_shapes
: 
�
"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
min_after_dequeue�*
capacity�*
seed2 *
	container *
_output_shapes
: *
component_types
2	*
shapes

: : : : *

seed *
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
_output_shapes
:*
shape:*
dtype0	
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
shape:*
dtype0*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
�
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2enqueue_input/Placeholder_3"/device:CPU:0*
Tcomponents
2	*

timeout_ms���������
�
(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 
�
*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(
�
'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
value
B :�*
dtype0*
_output_shapes
: 
�
enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
_output_shapes
: *
T0
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
�
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
g
enqueue_input/mul/yConst"/device:CPU:0*
valueB
 *>î:*
dtype0*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
�
Xenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsConst"/device:CPU:0*
dtype0*
_output_shapes
: *d
value[BY BSenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full
�
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullScalarSummaryXenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
s
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*,
_output_shapes
::::*
component_types
2	*

timeout_ms���������
�
=linear/linear_model/polarity/weights/part_0/Initializer/zerosConst*
valueB*    *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
+linear/linear_model/polarity/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *<
shared_name-+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:
�
Llinear/linear_model/polarity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
2linear/linear_model/polarity/weights/part_0/AssignAssignVariableOp+linear/linear_model/polarity/weights/part_0=linear/linear_model/polarity/weights/part_0/Initializer/zeros*
dtype0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
?linear/linear_model/polarity/weights/part_0/Read/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
Alinear/linear_model/subjectivity/weights/part_0/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
/linear/linear_model/subjectivity/weights/part_0VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *@
shared_name1/linear/linear_model/subjectivity/weights/part_0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container 
�
Plinear/linear_model/subjectivity/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
6linear/linear_model/subjectivity/weights/part_0/AssignAssignVariableOp/linear/linear_model/subjectivity/weights/part_0Alinear/linear_model/subjectivity/weights/part_0/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Clinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
valueB*    *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
'linear/linear_model/bias_weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:
�
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dimConst*
_output_shapes
: *
valueB :
���������*
dtype0
�
Alinear/linear_model/linear_model/linear_model/polarity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:1Elinear/linear_model/linear_model/linear_model/polarity/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
;linear/linear_model/linear_model/linear_model/polarity/CastCastAlinear/linear_model/linear_model/linear_model/polarity/ExpandDims*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
<linear/linear_model/linear_model/linear_model/polarity/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Jlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Dlinear/linear_model/linear_model/linear_model/polarity/strided_sliceStridedSlice<linear/linear_model/linear_model/linear_model/polarity/ShapeJlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stackLlinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_1Llinear/linear_model/linear_model/linear_model/polarity/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
�
Flinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Dlinear/linear_model/linear_model/linear_model/polarity/Reshape/shapePackDlinear/linear_model/linear_model/linear_model/polarity/strided_sliceFlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape/1*
_output_shapes
:*
T0*

axis *
N
�
>linear/linear_model/linear_model/linear_model/polarity/ReshapeReshape;linear/linear_model/linear_model/linear_model/polarity/CastDlinear/linear_model/linear_model/linear_model/polarity/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
3linear/linear_model/polarity/weights/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
$linear/linear_model/polarity/weightsIdentity3linear/linear_model/polarity/weights/ReadVariableOp*
_output_shapes

:*
T0
�
Clinear/linear_model/linear_model/linear_model/polarity/weighted_sumMatMul>linear/linear_model/linear_model/linear_model/polarity/Reshape$linear/linear_model/polarity/weights*
transpose_b( *
T0*
_output_shapes

:*
transpose_a( 
�
Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Elinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:2Ilinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
?linear/linear_model/linear_model/linear_model/subjectivity/CastCastElinear/linear_model/linear_model/linear_model/subjectivity/ExpandDims*
Truncate( *
_output_shapes

:*

DstT0*

SrcT0
�
@linear/linear_model/linear_model/linear_model/subjectivity/ShapeConst*
_output_shapes
:*
valueB"      *
dtype0
�
Nlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceStridedSlice@linear/linear_model/linear_model/linear_model/subjectivity/ShapeNlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stackPlinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_1Plinear/linear_model/linear_model/linear_model/subjectivity/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
Jlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Hlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shapePackHlinear/linear_model/linear_model/linear_model/subjectivity/strided_sliceJlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
�
Blinear/linear_model/linear_model/linear_model/subjectivity/ReshapeReshape?linear/linear_model/linear_model/linear_model/subjectivity/CastHlinear/linear_model/linear_model/linear_model/subjectivity/Reshape/shape*
Tshape0*
_output_shapes

:*
T0
�
7linear/linear_model/subjectivity/weights/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
(linear/linear_model/subjectivity/weightsIdentity7linear/linear_model/subjectivity/weights/ReadVariableOp*
_output_shapes

:*
T0
�
Glinear/linear_model/linear_model/linear_model/subjectivity/weighted_sumMatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshape(linear/linear_model/subjectivity/weights*
transpose_b( *
T0*
_output_shapes

:*
transpose_a( 
�
Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNClinear/linear_model/linear_model/linear_model/polarity/weighted_sumGlinear/linear_model/linear_model/linear_model/subjectivity/weighted_sum*
_output_shapes

:*
T0*
N
�
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0
�
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
_output_shapes
:*
T0
�
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
data_formatNHWC*
_output_shapes

:*
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
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
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
�
3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
_output_shapes

:*
dtype0
f
$linear/zero_fraction/total_size/SizeConst*
dtype0	*
_output_shapes
: *
value	B	 R
�
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
�
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1*
T0	*
N*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
�
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: : 
�
3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
_output_shapes
: *
T0

�
3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
_output_shapes
: *
T0

�
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch+linear/linear_model/polarity/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
_output_shapes
: : *
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
_output_shapes
: *
T0

�
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
�
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:
�
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
N*
_output_shapes
: : *
T0	
�
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
_output_shapes
: *
T0
�
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count/ToFloatCast9linear/zero_fraction/total_zero/zero_count/ToFloat/Switch*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
�
9linear/zero_fraction/total_zero/zero_count/ToFloat/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size*
_output_shapes
: : 
�
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction2linear/zero_fraction/total_zero/zero_count/ToFloat*
_output_shapes
: *
T0
�
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
T0*
N*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
value	B	 R *
dtype0	
�
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
�
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
_output_shapes
: : *
T0

�
5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
_output_shapes
: *
T0

�
5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
dtype0*
_output_shapes

:
�
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch/linear/linear_model/subjectivity/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: : 
�
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
value	B	 R*
dtype0	*
_output_shapes
: 
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
valueB	 R����*
dtype0	*
_output_shapes
: 
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
_output_shapes
: *
T0	
�
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
_output_shapes
: : *
T0

�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
�
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
�
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
_output_shapes
: *
T0

�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
_output_shapes

:*
T0
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
::
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0
�
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
valueB"       *
dtype0*
_output_shapes
:
�
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
_output_shapes

:*
T0
�
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*(
_output_shapes
::*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

SrcT0
*
Truncate( *
_output_shapes

:*

DstT0	
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
�
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
T0	*
N*
_output_shapes
: : 
�
Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
�
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
�
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
�
4linear/zero_fraction/total_zero/zero_count_1/ToFloatCast;linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
�
;linear/zero_fraction/total_zero/zero_count_1/ToFloat/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
�
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction4linear/zero_fraction/total_zero/zero_count_1/ToFloat*
T0*
_output_shapes
: 
�
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
T0*
N*
_output_shapes
: : 
�
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge*
T0*
N*
_output_shapes
: 
�
)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
�
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
_output_shapes
: *
T0
�
$linear/fraction_of_zero_weights/tagsConst*
_output_shapes
: *0
value'B% Blinear/fraction_of_zero_weights*
dtype0
�
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
i
linear/head/logits/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
,linear/head/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
^
Vlinear/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
l
!linear/head/labels/ExpandDims/dimConst*
_output_shapes
: *
valueB :
���������*
dtype0
�
linear/head/labels/ExpandDims
ExpandDims"random_shuffle_queue_DequeueMany:3!linear/head/labels/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
i
linear/head/labels/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
k
linear/head/labels/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
n
,linear/head/labels/assert_rank_at_least/rankConst*
dtype0*
_output_shapes
: *
value	B :
~
-linear/head/labels/assert_rank_at_least/ShapeConst*
_output_shapes
:*
valueB"      *
dtype0
^
Vlinear/head/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
O
Glinear/head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
�
&linear/head/labels/strided_slice/stackConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
�
(linear/head/labels/strided_slice/stack_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
valueB:
���������*
dtype0
�
(linear/head/labels/strided_slice/stack_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
valueB:*
dtype0
�
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
�
"linear/head/labels/concat/values_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
�
linear/head/labels/concat/axisConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
value	B : *
dtype0*
_output_shapes
: 
�
linear/head/labels/concatConcatV2 linear/head/labels/strided_slice"linear/head/labels/concat/values_1linear/head/labels/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
%linear/head/labels/assert_equal/EqualEquallinear/head/labels/concatlinear/head/labels/Shape*
T0*
_output_shapes
:
�
%linear/head/labels/assert_equal/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB: *
dtype0*
_output_shapes
:
�
#linear/head/labels/assert_equal/AllAll%linear/head/labels/assert_equal/Equal%linear/head/labels/assert_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
�
,linear/head/labels/assert_equal/Assert/ConstConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
�
.linear/head/labels/assert_equal/Assert/Const_1ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_0ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*(
valueB Bexpected_labels_shape: *
dtype0*
_output_shapes
: 
�
4linear/head/labels/assert_equal/Assert/Assert/data_2ConstH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
valueB Blabels_shape: *
dtype0*
_output_shapes
: 
�
-linear/head/labels/assert_equal/Assert/AssertAssert#linear/head/labels/assert_equal/All4linear/head/labels/assert_equal/Assert/Assert/data_0linear/head/labels/concat4linear/head/labels/assert_equal/Assert/Assert/data_2linear/head/labels/Shape*
T
2*
	summarize
�
linear/head/labelsIdentitylinear/head/labels/ExpandDims.^linear/head/labels/assert_equal/Assert/AssertH^linear/head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes

:*
T0
w
linear/head/ToFloatCastlinear/head/labels*

SrcT0*
Truncate( *
_output_shapes

:*

DstT0
�
0linear/head/mean_squared_error/SquaredDifferenceSquaredDifference:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloat*
_output_shapes

:*
T0
�
;linear/head/mean_squared_error/assert_broadcastable/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
Alinear/head/mean_squared_error/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0
�
@linear/head/mean_squared_error/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
�
@linear/head/mean_squared_error/assert_broadcastable/values/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
?linear/head/mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
W
Olinear/head/mean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
�
%linear/head/mean_squared_error/Cast/xConstP^linear/head/mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
"linear/head/mean_squared_error/MulMul0linear/head/mean_squared_error/SquaredDifference%linear/head/mean_squared_error/Cast/x*
T0*
_output_shapes

:
{
6linear/head/weighted_loss/assert_broadcastable/weightsConst*
_output_shapes
: *
valueB
 *  �?*
dtype0

<linear/head/weighted_loss/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0
}
;linear/head/weighted_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
�
;linear/head/weighted_loss/assert_broadcastable/values/shapeConst*
valueB"      *
dtype0*
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
�
 linear/head/weighted_loss/Cast/xConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/weighted_loss/MulMul"linear/head/mean_squared_error/Mul linear/head/weighted_loss/Cast/x*
T0*
_output_shapes

:
�
linear/head/weighted_loss/ConstConstK^linear/head/weighted_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
�
linear/head/weighted_loss/SumSumlinear/head/weighted_loss/Mullinear/head/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
^
linear/head/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
linear/head/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
linear/head/gradients/FillFilllinear/head/gradients/Shapelinear/head/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
�
Flinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
@linear/head/gradients/linear/head/weighted_loss/Sum_grad/ReshapeReshapelinear/head/gradients/FillFlinear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
�
>linear/head/gradients/linear/head/weighted_loss/Sum_grad/ConstConst*
valueB"      *
dtype0*
_output_shapes
:
�
=linear/head/gradients/linear/head/weighted_loss/Sum_grad/TileTile@linear/head/gradients/linear/head/weighted_loss/Sum_grad/Reshape>linear/head/gradients/linear/head/weighted_loss/Sum_grad/Const*
_output_shapes

:*

Tmultiples0*
T0
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Nlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulMul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile linear/head/weighted_loss/Cast/x*
T0*
_output_shapes

:
�
<linear/head/gradients/linear/head/weighted_loss/Mul_grad/SumSum<linear/head/gradients/linear/head/weighted_loss/Mul_grad/MulNlinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeReshape<linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Mul"linear/head/mean_squared_error/Mul=linear/head/gradients/linear/head/weighted_loss/Sum_grad/Tile*
_output_shapes

:*
T0
�
>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1Sum>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Mul_1Plinear/head/gradients/linear/head/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
Blinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1Reshape>linear/head/gradients/linear/head/weighted_loss/Mul_grad/Sum_1@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Ilinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_depsNoOpA^linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeC^linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1
�
Qlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependencyIdentity@linear/head/gradients/linear/head/weighted_loss/Mul_grad/ReshapeJ^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape*
_output_shapes

:
�
Slinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency_1IdentityBlinear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1J^linear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@linear/head/gradients/linear/head/weighted_loss/Mul_grad/Reshape_1
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
�
Slinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ShapeElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulMulQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency%linear/head/mean_squared_error/Cast/x*
_output_shapes

:*
T0
�
Alinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumSumAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/MulSlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeReshapeAlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Mul0linear/head/mean_squared_error/SquaredDifferenceQlinear/head/gradients/linear/head/weighted_loss/Mul_grad/tuple/control_dependency*
_output_shapes

:*
T0
�
Clinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1SumClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Mul_1Ulinear/head/gradients/linear/head/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Glinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1ReshapeClinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Sum_1Elinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Nlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_depsNoOpF^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeH^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1
�
Vlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependencyIdentityElinear/head/gradients/linear/head/mean_squared_error/Mul_grad/ReshapeO^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*
_output_shapes

:*
T0*X
_classN
LJloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape
�
Xlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency_1IdentityGlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1O^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/group_deps*
_output_shapes
: *
T0*Z
_classP
NLloc:@linear/head/gradients/linear/head/mean_squared_error/Mul_grad/Reshape_1
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
�
alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ShapeSlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Rlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarConstW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulMulRlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/scalarVlinear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/subSub:linear/linear_model/linear_model/linear_model/weighted_sumlinear/head/ToFloatW^linear/head/gradients/linear/head/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/MulOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/sub*
_output_shapes

:*
T0
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumSumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1alinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:
�
Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/ReshapeReshapeOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
Qlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1SumQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/mul_1clinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
�
Ulinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1ReshapeQlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Sum_1Slinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
�
Olinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegNegUlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:
�
\linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOpP^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/NegT^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape
�
dlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentitySlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:*
T0
�
flinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1IdentityOlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg]^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
_output_shapes

:*
T0*b
_classX
VTloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Neg
�
alinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradBiasAddGraddlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
�
flinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_depsNoOpe^linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyb^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyIdentitydlinear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:*
T0
�
plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1Identityalinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGradg^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/group_deps*
T0*t
_classj
hfloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/BiasAddGrad*
_output_shapes
:
�
nlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_depsNoOpo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency
�
vlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependencyIdentitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
xlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1Identitynlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependencyo^linear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@linear/head/gradients/linear/head/mean_squared_error/SquaredDifference_grad/Reshape*
_output_shapes

:
�
elinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulMatMulvlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency$linear/linear_model/polarity/weights*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
glinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1MatMul>linear/linear_model/linear_model/linear_model/polarity/Reshapevlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
olinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_depsNoOpf^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulh^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1
�
wlinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependencyIdentityelinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMulp^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*
_output_shapes

:*
T0*x
_classn
ljloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul
�
ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1Identityglinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1p^linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/group_deps*
T0*z
_classp
nlloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/MatMul_1*
_output_shapes

:
�
ilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMulMatMulxlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1(linear/linear_model/subjectivity/weights*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
�
klinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1MatMulBlinear/linear_model/linear_model/linear_model/subjectivity/Reshapexlinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_no_bias_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
slinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_depsNoOpj^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMull^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1
�
{linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependencyIdentityilinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMult^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
_output_shapes

:*
T0*|
_classr
pnloc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul
�
}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1Identityklinear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1t^linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/group_deps*
T0*~
_classt
rploc:@linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/MatMul_1*
_output_shapes

:
�
linear/head/ConstConst*
valueB*���=*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
7linear/linear/linear_model/polarity/weights/part_0/FtrlVarHandleOp*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: *H
shared_name97linear/linear/linear_model/polarity/weights/part_0/Ftrl
�
Xlinear/linear/linear_model/polarity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
>linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignAssignVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrllinear/head/Const*
dtype0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zerosConst*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1VarHandleOp*J
shared_name;9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
Zlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*
_output_shapes
: *>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
@linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignAssignVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1Klinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zeros*
dtype0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0
�
Mlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
�
linear/head/Const_1Const*
dtype0*
_output_shapes

:*
valueB*���=*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
;linear/linear/linear_model/subjectivity/weights/part_0/FtrlVarHandleOp*
shape
:*
dtype0*
_output_shapes
: *L
shared_name=;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container 
�
\linear/linear/linear_model/subjectivity/weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
Blinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignAssignVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrllinear/head/Const_1*
dtype0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
�
Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1VarHandleOp*
dtype0*
_output_shapes
: *N
shared_name?=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
	container *
shape
:
�
^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
Dlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/AssignAssignVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1Olinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zeros*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
Qlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
_output_shapes

:*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0*
dtype0
�
linear/head/Const_2Const*
valueB*���=*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
�
3linear/linear/linear_model/bias_weights/part_0/FtrlVarHandleOp*
dtype0*
_output_shapes
: *D
shared_name53linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:
�
Tlinear/linear/linear_model/bias_weights/part_0/Ftrl/IsInitialized/VarIsInitializedOpVarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
:linear/linear/linear_model/bias_weights/part_0/Ftrl/AssignAssignVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrllinear/head/Const_2*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl/Read/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
5linear/linear/linear_model/bias_weights/part_0/Ftrl_1VarHandleOp*F
shared_name75linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
: 
�
Vlinear/linear/linear_model/bias_weights/part_0/Ftrl_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
<linear/linear/linear_model/bias_weights/part_0/Ftrl_1/AssignAssignVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1Glinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
�
Ilinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Read/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
c
linear/head/Ftrl/learning_rateConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
p
+linear/head/Ftrl/l1_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
+linear/head/Ftrl/l2_regularization_strengthConst*
_output_shapes
: *
valueB
 *    *
dtype0
z
5linear/head/Ftrl/l2_shrinkage_regularization_strengthConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$linear/head/Ftrl/learning_rate_powerConst*
valueB
 *   �*
dtype0*
_output_shapes
: 
�
Ulinear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl+linear/linear_model/polarity/weights/part_07linear/linear/linear_model/polarity/weights/part_0/Ftrl9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1ylinear/head/gradients/linear/linear_model/linear_model/linear_model/polarity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
T0*>
_class4
20loc:@linear/linear_model/polarity/weights/part_0*
use_locking( 
�
Ylinear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrlResourceApplyFtrl/linear/linear_model/subjectivity/weights/part_0;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1}linear/head/gradients/linear/linear_model/linear_model/linear_model/subjectivity/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*B
_class8
64loc:@linear/linear_model/subjectivity/weights/part_0
�
Qlinear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlResourceApplyFtrl'linear/linear_model/bias_weights/part_03linear/linear/linear_model/bias_weights/part_0/Ftrl5linear/linear/linear_model/bias_weights/part_0/Ftrl_1plinear/head/gradients/linear/linear_model/linear_model/linear_model/weighted_sum_grad/tuple/control_dependency_1linear/head/Ftrl/learning_rate+linear/head/Ftrl/l1_regularization_strength+linear/head/Ftrl/l2_regularization_strength$linear/head/Ftrl/learning_rate_power*
use_locking( *
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
�
linear/head/Ftrl/updateNoOpR^linear/head/Ftrl/update_linear/linear_model/bias_weights/part_0/ResourceApplyFtrlV^linear/head/Ftrl/update_linear/linear_model/polarity/weights/part_0/ResourceApplyFtrlZ^linear/head/Ftrl/update_linear/linear_model/subjectivity/weights/part_0/ResourceApplyFtrl
�
linear/head/Ftrl/valueConst^linear/head/Ftrl/update*
value	B	 R*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
linear/head/Ftrl	AssignAddglobal_steplinear/head/Ftrl/value*
use_locking( *
T0	*
_class
loc:@global_step*
_output_shapes
: 
l
linear/head/ones_like/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
`
linear/head/ones_like/ConstConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
linear/head/ones_likeFilllinear/head/ones_like/Shapelinear/head/ones_like/Const*
T0*

index_type0*
_output_shapes

:
V
linear/head/mul/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
i
linear/head/mulMullinear/head/mul/xlinear/head/ones_like*
_output_shapes

:*
T0
d
linear/head/Const_3Const*
valueB"       *
dtype0*
_output_shapes
:
z
linear/head/SumSumlinear/head/mullinear/head/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
o
linear/head/truedivRealDivlinear/head/weighted_loss/Sumlinear/head/Sum*
_output_shapes
: *
T0
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
`
lossScalarSummary	loss/tagslinear/head/weighted_loss/Sum*
_output_shapes
: *
T0
^
average_loss/tagsConst*
_output_shapes
: *
valueB Baverage_loss*
dtype0
f
average_lossScalarSummaryaverage_loss/tagslinear/head/truediv*
T0*
_output_shapes
: 
�
initNoOp^global_step/Assign;^linear/linear/linear_model/bias_weights/part_0/Ftrl/Assign=^linear/linear/linear_model/bias_weights/part_0/Ftrl_1/Assign?^linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignA^linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignC^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignE^linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Assign/^linear/linear_model/bias_weights/part_0/Assign3^linear/linear_model/polarity/weights/part_0/Assign7^linear/linear_model/subjectivity/weights/part_0/Assign

init_1NoOp
"

group_depsNoOp^init^init_1
�
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
1report_uninitialized_variables/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_3VarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_4VarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_5VarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_6VarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_7VarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
_output_shapes
: 
�
3report_uninitialized_variables/VarIsInitializedOp_8VarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
_output_shapes
: 
�
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized1report_uninitialized_variables/VarIsInitializedOp3report_uninitialized_variables/VarIsInitializedOp_13report_uninitialized_variables/VarIsInitializedOp_23report_uninitialized_variables/VarIsInitializedOp_33report_uninitialized_variables/VarIsInitializedOp_43report_uninitialized_variables/VarIsInitializedOp_53report_uninitialized_variables/VarIsInitializedOp_63report_uninitialized_variables/VarIsInitializedOp_73report_uninitialized_variables/VarIsInitializedOp_8"/device:CPU:0*
T0
*

axis *
N
*
_output_shapes
:

�
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack"/device:CPU:0*
_output_shapes
:

�
$report_uninitialized_variables/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:
*�
value�B�
Bglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0B7linear/linear/linear_model/polarity/weights/part_0/FtrlB9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1B;linear/linear/linear_model/subjectivity/weights/part_0/FtrlB=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1B3linear/linear/linear_model/bias_weights/part_0/FtrlB5linear/linear/linear_model/bias_weights/part_0/Ftrl_1
�
1report_uninitialized_variables/boolean_mask/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
*
dtype0
�
?report_uninitialized_variables/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2"/device:CPU:0*
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
�
Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices"/device:CPU:0*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
3report_uninitialized_variables/boolean_mask/Shape_1Const"/device:CPU:0*
valueB:
*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask 
�
3report_uninitialized_variables/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:
*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables/boolean_mask/strided_slice_2StridedSlice3report_uninitialized_variables/boolean_mask/Shape_2Areport_uninitialized_variables/boolean_mask/strided_slice_2/stackCreport_uninitialized_variables/boolean_mask/strided_slice_2/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
�
;report_uninitialized_variables/boolean_mask/concat/values_1Pack0report_uninitialized_variables/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
7report_uninitialized_variables/boolean_mask/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/strided_slice_1;report_uninitialized_variables/boolean_mask/concat/values_1;report_uninitialized_variables/boolean_mask/strided_slice_27report_uninitialized_variables/boolean_mask/concat/axis"/device:CPU:0*
T0*
N*
_output_shapes
:*

Tidx0
�
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat"/device:CPU:0*
_output_shapes
:
*
T0*
Tshape0
�
;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
�
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:

�
1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1"/device:CPU:0*
T0
*'
_output_shapes
:���������
�
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where"/device:CPU:0*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
9report_uninitialized_variables/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
4report_uninitialized_variables/boolean_mask/GatherV2GatherV23report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze9report_uninitialized_variables/boolean_mask/GatherV2/axis"/device:CPU:0*#
_output_shapes
:���������*
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
�
concatConcatV24report_uninitialized_variables/boolean_mask/GatherV2$report_uninitialized_resources/Constconcat/axis*

Tidx0*
T0*
N*#
_output_shapes
:���������
�
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
3report_uninitialized_variables_1/VarIsInitializedOpVarIsInitializedOp+linear/linear_model/polarity/weights/part_0*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_1VarIsInitializedOp/linear/linear_model/subjectivity/weights/part_0*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_2VarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_3VarIsInitializedOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_4VarIsInitializedOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_5VarIsInitializedOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_6VarIsInitializedOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_7VarIsInitializedOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
_output_shapes
: 
�
5report_uninitialized_variables_1/VarIsInitializedOp_8VarIsInitializedOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
_output_shapes
: 
�
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized3report_uninitialized_variables_1/VarIsInitializedOp5report_uninitialized_variables_1/VarIsInitializedOp_15report_uninitialized_variables_1/VarIsInitializedOp_25report_uninitialized_variables_1/VarIsInitializedOp_35report_uninitialized_variables_1/VarIsInitializedOp_45report_uninitialized_variables_1/VarIsInitializedOp_55report_uninitialized_variables_1/VarIsInitializedOp_65report_uninitialized_variables_1/VarIsInitializedOp_75report_uninitialized_variables_1/VarIsInitializedOp_8"/device:CPU:0*
T0
*

axis *
N
*
_output_shapes
:

�
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack"/device:CPU:0*
_output_shapes
:

�
&report_uninitialized_variables_1/ConstConst"/device:CPU:0*�
value�B�
Bglobal_stepB+linear/linear_model/polarity/weights/part_0B/linear/linear_model/subjectivity/weights/part_0B'linear/linear_model/bias_weights/part_0B7linear/linear/linear_model/polarity/weights/part_0/FtrlB9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1B;linear/linear/linear_model/subjectivity/weights/part_0/FtrlB=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1B3linear/linear/linear_model/bias_weights/part_0/FtrlB5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
dtype0*
_output_shapes
:

�
3report_uninitialized_variables_1/boolean_mask/ShapeConst"/device:CPU:0*
valueB:
*
dtype0*
_output_shapes
:
�
Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2"/device:CPU:0*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask 
�
Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices"/device:CPU:0*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
5report_uninitialized_variables_1/boolean_mask/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:
*
dtype0
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2"/device:CPU:0*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask 
�
5report_uninitialized_variables_1/boolean_mask/Shape_2Const"/device:CPU:0*
valueB:
*
dtype0*
_output_shapes
:
�
Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
�
Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
=report_uninitialized_variables_1/boolean_mask/strided_slice_2StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_2Creport_uninitialized_variables_1/boolean_mask/strided_slice_2/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_2/stack_2"/device:CPU:0*
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask 
�
=report_uninitialized_variables_1/boolean_mask/concat/values_1Pack2report_uninitialized_variables_1/boolean_mask/Prod"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
9report_uninitialized_variables_1/boolean_mask/concat/axisConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
�
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/strided_slice_1=report_uninitialized_variables_1/boolean_mask/concat/values_1=report_uninitialized_variables_1/boolean_mask/strided_slice_29report_uninitialized_variables_1/boolean_mask/concat/axis"/device:CPU:0*
_output_shapes
:*

Tidx0*
T0*
N
�
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:

�
=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst"/device:CPU:0*
valueB:
���������*
dtype0*
_output_shapes
:
�
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape"/device:CPU:0*
T0
*
Tshape0*
_output_shapes
:

�
3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1"/device:CPU:0*'
_output_shapes
:���������*
T0

�
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where"/device:CPU:0*
T0	*#
_output_shapes
:���������*
squeeze_dims

�
;report_uninitialized_variables_1/boolean_mask/GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
6report_uninitialized_variables_1/boolean_mask/GatherV2GatherV25report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze;report_uninitialized_variables_1/boolean_mask/GatherV2/axis"/device:CPU:0*
Tparams0*#
_output_shapes
:���������*
Taxis0*

batch_dims *
Tindices0	
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
�
concat_1ConcatV26report_uninitialized_variables_1/boolean_mask/GatherV2&report_uninitialized_resources_1/Constconcat_1/axis*
T0*
N*#
_output_shapes
:���������*

Tidx0

init_2NoOp

init_all_tablesNoOp

init_3NoOp
8
group_deps_1NoOp^init_2^init_3^init_all_tables
�
Merge/MergeSummaryMergeSummarySenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fulllinear/biaslinear/fraction_of_zero_weightslossaverage_loss*
_output_shapes
: *
N
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
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
�
save/Read_1/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl*
dtype0*
_output_shapes
:
\
save/Identity_2Identitysave/Read_1/ReadVariableOp*
_output_shapes
:*
T0
`
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
_output_shapes
:*
T0
�
save/Read_2/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1*
dtype0*
_output_shapes
:
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes
:
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:
�
save/Read_3/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0*
dtype0*
_output_shapes

:
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_4/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl*
dtype0*
_output_shapes

:
`
save/Identity_8Identitysave/Read_4/ReadVariableOp*
_output_shapes

:*
T0
d
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_5/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1*
dtype0*
_output_shapes

:
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_6/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0*
dtype0*
_output_shapes

:
a
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
_output_shapes

:*
T0
�
save/Read_7/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl*
dtype0*
_output_shapes

:
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_8/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
dtype0*
_output_shapes

:
a
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes

:
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_1e80436192d1423087ef7c85acef3abd/part*
dtype0*
_output_shapes
: 
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
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:* 
valueBBglobal_step
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
�
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/Read_9/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
l
save/Identity_18Identitysave/Read_9/ReadVariableOp"/device:CPU:0*
_output_shapes
:*
T0
b
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes
:
�
save/Read_10/ReadVariableOpReadVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrl"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_20Identitysave/Read_10/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:
�
save/Read_11/ReadVariableOpReadVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_22Identitysave/Read_11/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes
:
�
save/Read_12/ReadVariableOpReadVariableOp+linear/linear_model/polarity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_24Identitysave/Read_12/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
_output_shapes

:*
T0
�
save/Read_13/ReadVariableOpReadVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrl"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_26Identitysave/Read_13/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_14/ReadVariableOpReadVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_28Identitysave/Read_14/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
_output_shapes

:*
T0
�
save/Read_15/ReadVariableOpReadVariableOp/linear/linear_model/subjectivity/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_30Identitysave/Read_15/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:
�
save/Read_16/ReadVariableOpReadVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrl"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_32Identitysave/Read_16/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
_output_shapes

:*
T0
�
save/Read_17/ReadVariableOpReadVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_34Identitysave/Read_17/ReadVariableOp"/device:CPU:0*
_output_shapes

:*
T0
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
_output_shapes

:*
T0
�
save/SaveV2_1/tensor_namesConst"/device:CPU:0*�
value�B�	B linear/linear_model/bias_weightsB,linear/linear_model/bias_weights/part_0/FtrlB.linear/linear_model/bias_weights/part_0/Ftrl_1B$linear/linear_model/polarity/weightsB0linear/linear_model/polarity/weights/part_0/FtrlB2linear/linear_model/polarity/weights/part_0/Ftrl_1B(linear/linear_model/subjectivity/weightsB4linear/linear_model/subjectivity/weights/part_0/FtrlB6linear/linear_model/subjectivity/weights/part_0/Ftrl_1*
dtype0*
_output_shapes
:	
�
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*v
valuemBk	B1 0,1B1 0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:	
�
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_19save/Identity_21save/Identity_23save/Identity_25save/Identity_27save/Identity_29save/Identity_31save/Identity_33save/Identity_35"/device:CPU:0*
dtypes
2	
�
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/Identity_36Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
_output_shapes
: *
T0
~
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueBBglobal_step*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*
_output_shapes
:
�
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
�
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*�
value�B�	B linear/linear_model/bias_weightsB,linear/linear_model/bias_weights/part_0/FtrlB.linear/linear_model/bias_weights/part_0/Ftrl_1B$linear/linear_model/polarity/weightsB0linear/linear_model/polarity/weights/part_0/FtrlB2linear/linear_model/polarity/weights/part_0/Ftrl_1B(linear/linear_model/subjectivity/weightsB4linear/linear_model/subjectivity/weights/part_0/FtrlB6linear/linear_model/subjectivity/weights/part_0/Ftrl_1
�
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*v
valuemBk	B1 0,1B1 0,1B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2	*b
_output_shapesP
N:::::::::
b
save/Identity_37Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:
�
save/AssignVariableOpAssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_37"/device:CPU:0*
dtype0
d
save/Identity_38Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes
:
�
save/AssignVariableOp_1AssignVariableOp3linear/linear/linear_model/bias_weights/part_0/Ftrlsave/Identity_38"/device:CPU:0*
dtype0
d
save/Identity_39Identitysave/RestoreV2_1:2"/device:CPU:0*
_output_shapes
:*
T0
�
save/AssignVariableOp_2AssignVariableOp5linear/linear/linear_model/bias_weights/part_0/Ftrl_1save/Identity_39"/device:CPU:0*
dtype0
h
save/Identity_40Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_3AssignVariableOp+linear/linear_model/polarity/weights/part_0save/Identity_40"/device:CPU:0*
dtype0
h
save/Identity_41Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_4AssignVariableOp7linear/linear/linear_model/polarity/weights/part_0/Ftrlsave/Identity_41"/device:CPU:0*
dtype0
h
save/Identity_42Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_5AssignVariableOp9linear/linear/linear_model/polarity/weights/part_0/Ftrl_1save/Identity_42"/device:CPU:0*
dtype0
h
save/Identity_43Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_6AssignVariableOp/linear/linear_model/subjectivity/weights/part_0save/Identity_43"/device:CPU:0*
dtype0
h
save/Identity_44Identitysave/RestoreV2_1:7"/device:CPU:0*
_output_shapes

:*
T0
�
save/AssignVariableOp_7AssignVariableOp;linear/linear/linear_model/subjectivity/weights/part_0/Ftrlsave/Identity_44"/device:CPU:0*
dtype0
h
save/Identity_45Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes

:
�
save/AssignVariableOp_8AssignVariableOp=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1save/Identity_45"/device:CPU:0*
dtype0
�
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"&?
save/Const:0save/Identity_36:0save/restore_all (5 @F8"!
local_init_op

group_deps_1"�
	variables��
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
�
-linear/linear_model/polarity/weights/part_0:02linear/linear_model/polarity/weights/part_0/AssignAlinear/linear_model/polarity/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/polarity/weights  "(2?linear/linear_model/polarity/weights/part_0/Initializer/zeros:08
�
1linear/linear_model/subjectivity/weights/part_0:06linear/linear_model/subjectivity/weights/part_0/AssignElinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/subjectivity/weights  "(2Clinear/linear_model/subjectivity/weights/part_0/Initializer/zeros:08
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08
�
9linear/linear/linear_model/polarity/weights/part_0/Ftrl:0>linear/linear/linear_model/polarity/weights/part_0/Ftrl/AssignMlinear/linear/linear_model/polarity/weights/part_0/Ftrl/Read/ReadVariableOp:0">
0linear/linear_model/polarity/weights/part_0/Ftrl  "(2linear/head/Const:0
�
;linear/linear/linear_model/polarity/weights/part_0/Ftrl_1:0@linear/linear/linear_model/polarity/weights/part_0/Ftrl_1/AssignOlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Read/ReadVariableOp:0"@
2linear/linear_model/polarity/weights/part_0/Ftrl_1  "(2Mlinear/linear/linear_model/polarity/weights/part_0/Ftrl_1/Initializer/zeros:0
�
=linear/linear/linear_model/subjectivity/weights/part_0/Ftrl:0Blinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/AssignQlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl/Read/ReadVariableOp:0"B
4linear/linear_model/subjectivity/weights/part_0/Ftrl  "(2linear/head/Const_1:0
�
?linear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1:0Dlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/AssignSlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Read/ReadVariableOp:0"D
6linear/linear_model/subjectivity/weights/part_0/Ftrl_1  "(2Qlinear/linear/linear_model/subjectivity/weights/part_0/Ftrl_1/Initializer/zeros:0
�
5linear/linear/linear_model/bias_weights/part_0/Ftrl:0:linear/linear/linear_model/bias_weights/part_0/Ftrl/AssignIlinear/linear/linear_model/bias_weights/part_0/Ftrl/Read/ReadVariableOp:0"7
,linear/linear_model/bias_weights/part_0/Ftrl "(2linear/head/Const_2:0
�
7linear/linear/linear_model/bias_weights/part_0/Ftrl_1:0<linear/linear/linear_model/bias_weights/part_0/Ftrl_1/AssignKlinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Read/ReadVariableOp:0"9
.linear/linear_model/bias_weights/part_0/Ftrl_1 "(2Ilinear/linear/linear_model/bias_weights/part_0/Ftrl_1/Initializer/zeros:0"
ready_op


concat:0"M
saversCA
?
save/Const:0save/Identity_36:0save/restore_all (5 @F8"�
queue_runners��
�
"enqueue_input/random_shuffle_queue.enqueue_input/random_shuffle_queue_EnqueueMany(enqueue_input/random_shuffle_queue_Close"*enqueue_input/random_shuffle_queue_Close_1*"t
lossesj
h
$linear/head/mean_squared_error/Mul:0
linear/head/weighted_loss/Sum:0
linear/head/weighted_loss/Sum:0"2
global_step_read_op_cache

global_step/add:0"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H" 
train_op

linear/head/Ftrl"&

summary_op

Merge/MergeSummary:0"�
	summaries�
�
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full:0
linear/bias:0
!linear/fraction_of_zero_weights:0
loss:0
average_loss:0"�
trainable_variables��
�
-linear/linear_model/polarity/weights/part_0:02linear/linear_model/polarity/weights/part_0/AssignAlinear/linear_model/polarity/weights/part_0/Read/ReadVariableOp:0"2
$linear/linear_model/polarity/weights  "(2?linear/linear_model/polarity/weights/part_0/Initializer/zeros:08
�
1linear/linear_model/subjectivity/weights/part_0:06linear/linear_model/subjectivity/weights/part_0/AssignElinear/linear_model/subjectivity/weights/part_0/Read/ReadVariableOp:0"6
(linear/linear_model/subjectivity/weights  "(2Clinear/linear_model/subjectivity/weights/part_0/Initializer/zeros:08
�
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08")
ready_for_local_init_op


concat_1:0"
init_op


group_deps"�k
cond_context�k�k
�
global_step/cond/cond_textglobal_step/cond/pred_id:0global_step/cond/switch_t:0 *�
global_step/cond/pred_id:0
global_step/cond/read/Switch:1
global_step/cond/read:0
global_step/cond/switch_t:0
global_step:0/
global_step:0global_step/cond/read/Switch:18
global_step/cond/pred_id:0global_step/cond/pred_id:0
�
global_step/cond/cond_text_1global_step/cond/pred_id:0global_step/cond/switch_f:0*�
global_step/Initializer/zeros:0
global_step/cond/Switch_1:0
global_step/cond/Switch_1:1
global_step/cond/pred_id:0
global_step/cond/switch_f:0>
global_step/Initializer/zeros:0global_step/cond/Switch_1:08
global_step/cond/pred_id:0global_step/cond/pred_id:0
�
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *�
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
�.
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*�
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
&linear/zero_fraction/total_size/Size:0;linear/zero_fraction/total_zero/zero_count/ToFloat/Switch:0�
-linear/linear_model/polarity/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:02�

�

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:02�

�

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0�
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
�
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *�
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
�0
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0*�
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
(linear/zero_fraction/total_size/Size_1:0=linear/zero_fraction/total_zero/zero_count_1/ToFloat/Switch:0�
1linear/linear_model/subjectivity/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:02�

�

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *�	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:02�

�

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0�
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0�
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:03#��%       �6�	�S=}�I�A�u:./output/model.ckpt��T       ���	��C}�I�A�u:.ʆ��       5=��	��C}�I�A�u*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full    

linear/bias �?
&
linear/fraction_of_zero_weights    

loss�Ԯ<

average_loss��.<��&       sO� 	�N}�I�A�u*

global_step/sec��D����       5=��	�uN}�I�A�u*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full>î=

linear/bias��?
&
linear/fraction_of_zero_weights    

lossSDm=

average_lossSD�<:nI&       sO� 	��V}�I�A�v*

global_step/sec�h=D(�_�       5=��	˗V}�I�A�v*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fulle�6>

linear/bias��?
&
linear/fraction_of_zero_weights    

loss�/�<

average_loss�/u<CpF�&       sO� 	��]}�I�A�w*

global_step/secD\D�"�       5=��	��]}�I�A�w*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fulln�>

linear/bias��?
&
linear/fraction_of_zero_weights    

loss~4�<

average_loss~4*<�"��&       sO� 	��d}�I�A�x*

global_step/secd�gD ����       5=��	d�d}�I�A�x*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full�۲>

linear/bias�;!?
&
linear/fraction_of_zero_weights    

loss���=

average_loss��=�Σ&       sO� 	4ik}�I�A�y*

global_step/sec�}oD|ͷ*�       5=��	�sk}�I�A�y*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full���>

linear/bias
e#?
&
linear/fraction_of_zero_weights    

loss�Xf=

average_loss�X�<heԿ&       sO� 	�&s}�I�A�y*

global_step/sec��ND2u��       5=��	m2s}�I�A�y*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full=Q�>

linear/bias��?
&
linear/fraction_of_zero_weights    

lossn(_=

average_lossn(�<�'�@&       sO� 	/qz}�I�A�z*

global_step/secDl[D�~�s�       5=��	�~z}�I�A�z*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full�t?

linear/bias�^?
&
linear/fraction_of_zero_weights    

lossBR<

average_lossB�;k��&       sO� 	W�}�I�A�{*

global_step/sec��vD?^#�       5=��	���}�I�A�{*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullG(#?

linear/biasy@!?
&
linear/fraction_of_zero_weights    

loss�"(<

average_loss�"�;Bsܭ&       sO� 	��}�I�A�|*

global_step/sec�aDe@4�       5=��	��}�I�A�|*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fullr�9?

linear/biasvX?
&
linear/fraction_of_zero_weights    

loss��<

average_loss�<y,?&       sO� 	^��}�I�A�}*

global_step/sec�%sDC���       5=��	���}�I�A�}*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full�bI?

linear/bias��?
&
linear/fraction_of_zero_weights    

loss&#�=

average_loss&#l=`��&       sO� 	b#�}�I�A�}*

global_step/sec~tDϚ8��       5=��	j*�}�I�A�}*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full=
W?

linear/bias;� ?
&
linear/fraction_of_zero_weights    

loss�}<

average_loss�}�;Ҁ�1&       sO� 	�I�}�I�A�~*

global_step/sec�RDD5�H��       5=��	[�}�I�A�~*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full�Xr?

linear/biasFM ?
&
linear/fraction_of_zero_weights    

loss��(=

average_loss���<ʮC&       sO� 	��}�I�A�*

global_step/sec�i5D>�sj�       5=��	Z%�}�I�A�*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias�?
&
linear/fraction_of_zero_weights    

loss(��<

average_loss(�P<�b�,�       ���	���}�I�A��*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias��"?
&
linear/fraction_of_zero_weights    

loss���<

average_loss��z<>��'       ��F	P��}�I�A��*

global_step/sec���C��Ɖ�       ���	Aa�}�I�A�*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/biasxM"?
&
linear/fraction_of_zero_weights    

lossB��<

average_lossB�J<Г��'       ��F	{�}�I�A��*

global_step/sec!UDP�5��       ���	=��}�I�A؁*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias��?
&
linear/fraction_of_zero_weights    

loss��<

average_loss�;<��n'       ��F	���}�I�Aف*

global_step/sec�~ZDo���       ���	$}�}�I�A��*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias� ?
&
linear/fraction_of_zero_weights    

lossl
�=

average_lossl
=�2�'       ��F	���}�I�A��*

global_step/sec��kDl)�L�       ���	8�}�I�A��*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias #?
&
linear/fraction_of_zero_weights    

lossތ6<

average_lossތ�;BY2'       ��F	oS�}�I�A��*

global_step/sec��NDf�K��       ���	�H�}�I�A��*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias� ?
&
linear/fraction_of_zero_weights    

loss6Z�<

average_loss6Z<4Ѽ�'       ��F	!e�}�I�A��*

global_step/secYbD�3*��       ���	��}�I�A�*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/biasU�?
&
linear/fraction_of_zero_weights    

loss�D/=

average_loss�D�<�ż'       ��F	�8�}�I�A�*

global_step/sec�djD�N��       ���	-��}�I�A̅*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias�?
&
linear/fraction_of_zero_weights    

loss��=

average_loss���<	�x�'       ��F	���}�I�Aͅ*

global_step/sec��sDY���       ���	Ν�}�I�A��*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_fully�~?

linear/biasd�?
&
linear/fraction_of_zero_weights    

loss��=

average_loss�	=�K��'       ��F	μ�}�I�A��*

global_step/secj
fD	��<�       ���	�A�}�I�A��*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias+�?
&
linear/fraction_of_zero_weights    

loss@j�;

average_loss@j\;����'       ��F	 ]�}�I�A��*

global_step/sec�jqD�fO��       ���	V��}�I�A��*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias�K?
&
linear/fraction_of_zero_weights    

loss�d�=

average_loss�dH=cV�M'       ��F	���}�I�A��*

global_step/secmaWD��q��       ���	y�~�I�A܈*�
Z
Senqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_250_of_750_full  �?

linear/bias|�?
&
linear/fraction_of_zero_weights    

loss�,;

average_loss��:��l&       sO� 	�.	~�I�A܈:./output/model.ckpt�ʷ�