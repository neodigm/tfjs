�M
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.0.02v2.0.0-rc2-26-g64c3d388�A
d
VariableVarHandleOp*
dtype0*
_output_shapes
: *
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
dtype0*
_output_shapes
: 
h

Variable_1VarHandleOp*
shared_name
Variable_1*
dtype0*
_output_shapes
: *
shape: 
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
dtype0*
_output_shapes
: 

NoOpNoOp
�
ConstConst"/device:CPU:0*�
value�B� B�
 
v
two

signatures
:8
VARIABLE_VALUEVariablev/.ATTRIBUTES/VARIABLE_VALUE
><
VARIABLE_VALUE
Variable_1two/.ATTRIBUTES/VARIABLE_VALUE
 *
dtype0*
_output_shapes
: 
R
serving_default_xPlaceholder*
dtype0*
_output_shapes
: *
shape: 
R
serving_default_yPlaceholder*
shape: *
dtype0*
_output_shapes
: 
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_xserving_default_y
Variable_1**
config_proto

CPU

GPU 2J 8*
_output_shapes
: : *
Tin
2*)
_gradient_op_typePartitionedCall-48*)
f$R"
 __inference_signature_wrapper_37*
Tout
2
O
saver_filenamePlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpConst*$
fR
__inference__traced_save_72*
Tout
2**
config_proto

CPU

GPU 2J 8*
_output_shapes
: *
Tin
2*)
_gradient_op_typePartitionedCall-73
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable
Variable_1**
config_proto

CPU

GPU 2J 8*
_output_shapes
: *
Tin
2*)
_gradient_op_typePartitionedCall-92*'
f"R 
__inference__traced_restore_91*
Tout
2�3
�
~
__inference___call___24
x
y
mul_readvariableop_resource
identity

identity_1��mul/ReadVariableOp�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: J
mulMulxmul/ReadVariableOp:value:0*
T0*
_output_shapes
: S
IdentityIdentitymul:z:0^mul/ReadVariableOp*
_output_shapes
: *
T0O

Identity_1Identityy^mul/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes

: : :2(
mul/ReadVariableOpmul/ReadVariableOp: :! 

_user_specified_namex:!

_user_specified_namey
�
�
 __inference_signature_wrapper_37
x
y"
statefulpartitionedcall_args_2
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxystatefulpartitionedcall_args_2**
config_proto

CPU

GPU 2J 8*
Tin
2*
_output_shapes
: : *)
_gradient_op_typePartitionedCall-31* 
fR
__inference___call___24*
Tout
2q
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: s

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*
_input_shapes

: : :22
StatefulPartitionedCallStatefulPartitionedCall:! 

_user_specified_namex:!

_user_specified_namey: 
�
�
__inference__traced_restore_91
file_prefix
assignvariableop_variable!
assignvariableop_1_variable_1

identity_3��AssignVariableOp�AssignVariableOp_1�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*Q
valueHBFBv/.ATTRIBUTES/VARIABLE_VALUEBtwo/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:t
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
2L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:u
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
_output_shapes
:*
T0}
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_1Identity_1:output:0*
dtype0*
_output_shapes
 �
RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHt
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B �
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: �

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1
^RestoreV2^RestoreV2_1*
_output_shapes
: *
T0"!

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2
	RestoreV2	RestoreV22(
AssignVariableOp_1AssignVariableOp_12
RestoreV2_1RestoreV2_1: :+ '
%
_user_specified_namefile_prefix: 
�
�
__inference__traced_save_72
file_prefix'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_4192708712e544eaa010144041a69303/part*
dtype0*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*Q
valueHBFBv/.ATTRIBUTES/VARIABLE_VALUEBtwo/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:q
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B *
dtype0�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop"/device:CPU:0*
dtypes
2*
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: �
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes

: : : : 2
SaveV2_1SaveV2_12
SaveV2SaveV22(
MergeV2CheckpointsMergeV2Checkpoints:+ '
%
_user_specified_namefile_prefix: : : "wL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*�
serving_default�

x
serving_default_x:0 

y
serving_default_y:0 +
output_0
StatefulPartitionedCall:0 +
output_1
StatefulPartitionedCall:1 tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�
L
v
two

signatures
__call__"
_generic_user_object
: 2Variable
: 2Variable
,
serving_default"
signature_map
�2�
__inference___call___24�
���
FullArgSpec
args�
jself
jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
� 
� 
*B(
 __inference_signature_wrapper_37xy�
 __inference_signature_wrapper_37w/�,
� 
%�"

y
�
y 

x
�
x "A�>

output_0�
output_0 

output_1�
output_1 b
__inference___call___24G%�"
�

�
x 

�
y 
� "�

�
0 

�
1 