��
��
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
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718��
�
modele_2/conv_layer_one/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name modele_2/conv_layer_one/kernel
�
2modele_2/conv_layer_one/kernel/Read/ReadVariableOpReadVariableOpmodele_2/conv_layer_one/kernel*"
_output_shapes
:*
dtype0
�
modele_2/conv_layer_one/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namemodele_2/conv_layer_one/bias
�
0modele_2/conv_layer_one/bias/Read/ReadVariableOpReadVariableOpmodele_2/conv_layer_one/bias*
_output_shapes
:*
dtype0
�
modele_2/conv_layer_two/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name modele_2/conv_layer_two/kernel
�
2modele_2/conv_layer_two/kernel/Read/ReadVariableOpReadVariableOpmodele_2/conv_layer_two/kernel*"
_output_shapes
:*
dtype0
�
modele_2/conv_layer_two/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namemodele_2/conv_layer_two/bias
�
0modele_2/conv_layer_two/bias/Read/ReadVariableOpReadVariableOpmodele_2/conv_layer_two/bias*
_output_shapes
:*
dtype0
�
modele_2/input_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namemodele_2/input_layer/kernel
�
/modele_2/input_layer/kernel/Read/ReadVariableOpReadVariableOpmodele_2/input_layer/kernel*
_output_shapes

:*
dtype0
�
modele_2/input_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namemodele_2/input_layer/bias
�
-modele_2/input_layer/bias/Read/ReadVariableOpReadVariableOpmodele_2/input_layer/bias*
_output_shapes
:*
dtype0
�
modele_2/output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_namemodele_2/output_layer/kernel
�
0modele_2/output_layer/kernel/Read/ReadVariableOpReadVariableOpmodele_2/output_layer/kernel*
_output_shapes

:*
dtype0
�
modele_2/output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namemodele_2/output_layer/bias
�
.modele_2/output_layer/bias/Read/ReadVariableOpReadVariableOpmodele_2/output_layer/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
%Adam/modele_2/conv_layer_one/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/modele_2/conv_layer_one/kernel/m
�
9Adam/modele_2/conv_layer_one/kernel/m/Read/ReadVariableOpReadVariableOp%Adam/modele_2/conv_layer_one/kernel/m*"
_output_shapes
:*
dtype0
�
#Adam/modele_2/conv_layer_one/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/modele_2/conv_layer_one/bias/m
�
7Adam/modele_2/conv_layer_one/bias/m/Read/ReadVariableOpReadVariableOp#Adam/modele_2/conv_layer_one/bias/m*
_output_shapes
:*
dtype0
�
%Adam/modele_2/conv_layer_two/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/modele_2/conv_layer_two/kernel/m
�
9Adam/modele_2/conv_layer_two/kernel/m/Read/ReadVariableOpReadVariableOp%Adam/modele_2/conv_layer_two/kernel/m*"
_output_shapes
:*
dtype0
�
#Adam/modele_2/conv_layer_two/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/modele_2/conv_layer_two/bias/m
�
7Adam/modele_2/conv_layer_two/bias/m/Read/ReadVariableOpReadVariableOp#Adam/modele_2/conv_layer_two/bias/m*
_output_shapes
:*
dtype0
�
"Adam/modele_2/input_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/modele_2/input_layer/kernel/m
�
6Adam/modele_2/input_layer/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/modele_2/input_layer/kernel/m*
_output_shapes

:*
dtype0
�
 Adam/modele_2/input_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/modele_2/input_layer/bias/m
�
4Adam/modele_2/input_layer/bias/m/Read/ReadVariableOpReadVariableOp Adam/modele_2/input_layer/bias/m*
_output_shapes
:*
dtype0
�
#Adam/modele_2/output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#Adam/modele_2/output_layer/kernel/m
�
7Adam/modele_2/output_layer/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/modele_2/output_layer/kernel/m*
_output_shapes

:*
dtype0
�
!Adam/modele_2/output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/modele_2/output_layer/bias/m
�
5Adam/modele_2/output_layer/bias/m/Read/ReadVariableOpReadVariableOp!Adam/modele_2/output_layer/bias/m*
_output_shapes
:*
dtype0
�
%Adam/modele_2/conv_layer_one/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/modele_2/conv_layer_one/kernel/v
�
9Adam/modele_2/conv_layer_one/kernel/v/Read/ReadVariableOpReadVariableOp%Adam/modele_2/conv_layer_one/kernel/v*"
_output_shapes
:*
dtype0
�
#Adam/modele_2/conv_layer_one/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/modele_2/conv_layer_one/bias/v
�
7Adam/modele_2/conv_layer_one/bias/v/Read/ReadVariableOpReadVariableOp#Adam/modele_2/conv_layer_one/bias/v*
_output_shapes
:*
dtype0
�
%Adam/modele_2/conv_layer_two/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/modele_2/conv_layer_two/kernel/v
�
9Adam/modele_2/conv_layer_two/kernel/v/Read/ReadVariableOpReadVariableOp%Adam/modele_2/conv_layer_two/kernel/v*"
_output_shapes
:*
dtype0
�
#Adam/modele_2/conv_layer_two/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/modele_2/conv_layer_two/bias/v
�
7Adam/modele_2/conv_layer_two/bias/v/Read/ReadVariableOpReadVariableOp#Adam/modele_2/conv_layer_two/bias/v*
_output_shapes
:*
dtype0
�
"Adam/modele_2/input_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/modele_2/input_layer/kernel/v
�
6Adam/modele_2/input_layer/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/modele_2/input_layer/kernel/v*
_output_shapes

:*
dtype0
�
 Adam/modele_2/input_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/modele_2/input_layer/bias/v
�
4Adam/modele_2/input_layer/bias/v/Read/ReadVariableOpReadVariableOp Adam/modele_2/input_layer/bias/v*
_output_shapes
:*
dtype0
�
#Adam/modele_2/output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#Adam/modele_2/output_layer/kernel/v
�
7Adam/modele_2/output_layer/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/modele_2/output_layer/kernel/v*
_output_shapes

:*
dtype0
�
!Adam/modele_2/output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/modele_2/output_layer/bias/v
�
5Adam/modele_2/output_layer/bias/v/Read/ReadVariableOpReadVariableOp!Adam/modele_2/output_layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�,
value�,B�, B�,
�
conv_layer_one
conv_layer_two
flatten_layer
input_layer
output_layer
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
�
(iter

)beta_1

*beta_2
	+decay
,learning_ratemKmLmMmNmOmP"mQ#mRvSvTvUvVvWvX"vY#vZ
8
0
1
2
3
4
5
"6
#7
8
0
1
2
3
4
5
"6
#7
 
�
-non_trainable_variables

.layers
	variables
/layer_regularization_losses
0layer_metrics
trainable_variables
1metrics
	regularization_losses
 
db
VARIABLE_VALUEmodele_2/conv_layer_one/kernel0conv_layer_one/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEmodele_2/conv_layer_one/bias.conv_layer_one/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
2non_trainable_variables

3layers
	variables
4layer_regularization_losses
5layer_metrics
trainable_variables
6metrics
regularization_losses
db
VARIABLE_VALUEmodele_2/conv_layer_two/kernel0conv_layer_two/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEmodele_2/conv_layer_two/bias.conv_layer_two/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
7non_trainable_variables

8layers
	variables
9layer_regularization_losses
:layer_metrics
trainable_variables
;metrics
regularization_losses
 
 
 
�
<non_trainable_variables

=layers
	variables
>layer_regularization_losses
?layer_metrics
trainable_variables
@metrics
regularization_losses
^\
VARIABLE_VALUEmodele_2/input_layer/kernel-input_layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEmodele_2/input_layer/bias+input_layer/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
Anon_trainable_variables

Blayers
	variables
Clayer_regularization_losses
Dlayer_metrics
trainable_variables
Emetrics
 regularization_losses
`^
VARIABLE_VALUEmodele_2/output_layer/kernel.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEmodele_2/output_layer/bias,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
�
Fnon_trainable_variables

Glayers
$	variables
Hlayer_regularization_losses
Ilayer_metrics
%trainable_variables
Jmetrics
&regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
��
VARIABLE_VALUE%Adam/modele_2/conv_layer_one/kernel/mLconv_layer_one/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/modele_2/conv_layer_one/bias/mJconv_layer_one/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE%Adam/modele_2/conv_layer_two/kernel/mLconv_layer_two/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/modele_2/conv_layer_two/bias/mJconv_layer_two/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE"Adam/modele_2/input_layer/kernel/mIinput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE Adam/modele_2/input_layer/bias/mGinput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/modele_2/output_layer/kernel/mJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE!Adam/modele_2/output_layer/bias/mHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE%Adam/modele_2/conv_layer_one/kernel/vLconv_layer_one/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/modele_2/conv_layer_one/bias/vJconv_layer_one/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE%Adam/modele_2/conv_layer_two/kernel/vLconv_layer_two/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/modele_2/conv_layer_two/bias/vJconv_layer_two/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE"Adam/modele_2/input_layer/kernel/vIinput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE Adam/modele_2/input_layer/bias/vGinput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/modele_2/output_layer/kernel/vJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE!Adam/modele_2/output_layer/bias/vHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1modele_2/conv_layer_one/kernelmodele_2/conv_layer_one/biasmodele_2/conv_layer_two/kernelmodele_2/conv_layer_two/biasmodele_2/input_layer/kernelmodele_2/input_layer/biasmodele_2/output_layer/kernelmodele_2/output_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_22822
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename2modele_2/conv_layer_one/kernel/Read/ReadVariableOp0modele_2/conv_layer_one/bias/Read/ReadVariableOp2modele_2/conv_layer_two/kernel/Read/ReadVariableOp0modele_2/conv_layer_two/bias/Read/ReadVariableOp/modele_2/input_layer/kernel/Read/ReadVariableOp-modele_2/input_layer/bias/Read/ReadVariableOp0modele_2/output_layer/kernel/Read/ReadVariableOp.modele_2/output_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9Adam/modele_2/conv_layer_one/kernel/m/Read/ReadVariableOp7Adam/modele_2/conv_layer_one/bias/m/Read/ReadVariableOp9Adam/modele_2/conv_layer_two/kernel/m/Read/ReadVariableOp7Adam/modele_2/conv_layer_two/bias/m/Read/ReadVariableOp6Adam/modele_2/input_layer/kernel/m/Read/ReadVariableOp4Adam/modele_2/input_layer/bias/m/Read/ReadVariableOp7Adam/modele_2/output_layer/kernel/m/Read/ReadVariableOp5Adam/modele_2/output_layer/bias/m/Read/ReadVariableOp9Adam/modele_2/conv_layer_one/kernel/v/Read/ReadVariableOp7Adam/modele_2/conv_layer_one/bias/v/Read/ReadVariableOp9Adam/modele_2/conv_layer_two/kernel/v/Read/ReadVariableOp7Adam/modele_2/conv_layer_two/bias/v/Read/ReadVariableOp6Adam/modele_2/input_layer/kernel/v/Read/ReadVariableOp4Adam/modele_2/input_layer/bias/v/Read/ReadVariableOp7Adam/modele_2/output_layer/kernel/v/Read/ReadVariableOp5Adam/modele_2/output_layer/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_23033
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodele_2/conv_layer_one/kernelmodele_2/conv_layer_one/biasmodele_2/conv_layer_two/kernelmodele_2/conv_layer_two/biasmodele_2/input_layer/kernelmodele_2/input_layer/biasmodele_2/output_layer/kernelmodele_2/output_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%Adam/modele_2/conv_layer_one/kernel/m#Adam/modele_2/conv_layer_one/bias/m%Adam/modele_2/conv_layer_two/kernel/m#Adam/modele_2/conv_layer_two/bias/m"Adam/modele_2/input_layer/kernel/m Adam/modele_2/input_layer/bias/m#Adam/modele_2/output_layer/kernel/m!Adam/modele_2/output_layer/bias/m%Adam/modele_2/conv_layer_one/kernel/v#Adam/modele_2/conv_layer_one/bias/v%Adam/modele_2/conv_layer_two/kernel/v#Adam/modele_2/conv_layer_two/bias/v"Adam/modele_2/input_layer/kernel/v Adam/modele_2/input_layer/bias/v#Adam/modele_2/output_layer/kernel/v!Adam/modele_2/output_layer/bias/v*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_23130��
�

�
G__inference_output_layer_layer_call_and_return_conditional_losses_22718

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
#__inference_signature_wrapper_22822
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_226342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
ʂ
�
!__inference__traced_restore_23130
file_prefixE
/assignvariableop_modele_2_conv_layer_one_kernel:=
/assignvariableop_1_modele_2_conv_layer_one_bias:G
1assignvariableop_2_modele_2_conv_layer_two_kernel:=
/assignvariableop_3_modele_2_conv_layer_two_bias:@
.assignvariableop_4_modele_2_input_layer_kernel::
,assignvariableop_5_modele_2_input_layer_bias:A
/assignvariableop_6_modele_2_output_layer_kernel:;
-assignvariableop_7_modele_2_output_layer_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: O
9assignvariableop_13_adam_modele_2_conv_layer_one_kernel_m:E
7assignvariableop_14_adam_modele_2_conv_layer_one_bias_m:O
9assignvariableop_15_adam_modele_2_conv_layer_two_kernel_m:E
7assignvariableop_16_adam_modele_2_conv_layer_two_bias_m:H
6assignvariableop_17_adam_modele_2_input_layer_kernel_m:B
4assignvariableop_18_adam_modele_2_input_layer_bias_m:I
7assignvariableop_19_adam_modele_2_output_layer_kernel_m:C
5assignvariableop_20_adam_modele_2_output_layer_bias_m:O
9assignvariableop_21_adam_modele_2_conv_layer_one_kernel_v:E
7assignvariableop_22_adam_modele_2_conv_layer_one_bias_v:O
9assignvariableop_23_adam_modele_2_conv_layer_two_kernel_v:E
7assignvariableop_24_adam_modele_2_conv_layer_two_bias_v:H
6assignvariableop_25_adam_modele_2_input_layer_kernel_v:B
4assignvariableop_26_adam_modele_2_input_layer_bias_v:I
7assignvariableop_27_adam_modele_2_output_layer_kernel_v:C
5assignvariableop_28_adam_modele_2_output_layer_bias_v:
identity_30��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B0conv_layer_one/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_one/bias/.ATTRIBUTES/VARIABLE_VALUEB0conv_layer_two/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_two/bias/.ATTRIBUTES/VARIABLE_VALUEB-input_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+input_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_one/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_one/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_two/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_two/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBIinput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGinput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_one/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_one/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_two/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_two/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBIinput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGinput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp/assignvariableop_modele_2_conv_layer_one_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp/assignvariableop_1_modele_2_conv_layer_one_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp1assignvariableop_2_modele_2_conv_layer_two_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp/assignvariableop_3_modele_2_conv_layer_two_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_modele_2_input_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp,assignvariableop_5_modele_2_input_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_modele_2_output_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_modele_2_output_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp9assignvariableop_13_adam_modele_2_conv_layer_one_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp7assignvariableop_14_adam_modele_2_conv_layer_one_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp9assignvariableop_15_adam_modele_2_conv_layer_two_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp7assignvariableop_16_adam_modele_2_conv_layer_two_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_modele_2_input_layer_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_modele_2_input_layer_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp7assignvariableop_19_adam_modele_2_output_layer_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp5assignvariableop_20_adam_modele_2_output_layer_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp9assignvariableop_21_adam_modele_2_conv_layer_one_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_adam_modele_2_conv_layer_one_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp9assignvariableop_23_adam_modele_2_conv_layer_two_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp7assignvariableop_24_adam_modele_2_conv_layer_two_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_modele_2_input_layer_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_modele_2_input_layer_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adam_modele_2_output_layer_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp5assignvariableop_28_adam_modele_2_output_layer_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_289
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_29�
Identity_30IdentityIdentity_29:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_30"#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
G__inference_output_layer_layer_call_and_return_conditional_losses_22923

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_flatten_layer_layer_call_and_return_conditional_losses_22883

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_22654

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_conv_layer_two_layer_call_fn_22856

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_226762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_flatten_layer_layer_call_fn_22877

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_layer_layer_call_and_return_conditional_losses_226882
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
 __inference__wrapped_model_22634
input_1Y
Cmodele_2_conv_layer_one_conv1d_expanddims_1_readvariableop_resource:E
7modele_2_conv_layer_one_biasadd_readvariableop_resource:Y
Cmodele_2_conv_layer_two_conv1d_expanddims_1_readvariableop_resource:E
7modele_2_conv_layer_two_biasadd_readvariableop_resource:E
3modele_2_input_layer_matmul_readvariableop_resource:B
4modele_2_input_layer_biasadd_readvariableop_resource:F
4modele_2_output_layer_matmul_readvariableop_resource:C
5modele_2_output_layer_biasadd_readvariableop_resource:
identity��.modele_2/conv_layer_one/BiasAdd/ReadVariableOp�:modele_2/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp�.modele_2/conv_layer_two/BiasAdd/ReadVariableOp�:modele_2/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp�+modele_2/input_layer/BiasAdd/ReadVariableOp�*modele_2/input_layer/MatMul/ReadVariableOp�,modele_2/output_layer/BiasAdd/ReadVariableOp�+modele_2/output_layer/MatMul/ReadVariableOp�
-modele_2/conv_layer_one/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2/
-modele_2/conv_layer_one/conv1d/ExpandDims/dim�
)modele_2/conv_layer_one/conv1d/ExpandDims
ExpandDimsinput_16modele_2/conv_layer_one/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2+
)modele_2/conv_layer_one/conv1d/ExpandDims�
:modele_2/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCmodele_2_conv_layer_one_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02<
:modele_2/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp�
/modele_2/conv_layer_one/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/modele_2/conv_layer_one/conv1d/ExpandDims_1/dim�
+modele_2/conv_layer_one/conv1d/ExpandDims_1
ExpandDimsBmodele_2/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp:value:08modele_2/conv_layer_one/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2-
+modele_2/conv_layer_one/conv1d/ExpandDims_1�
modele_2/conv_layer_one/conv1dConv2D2modele_2/conv_layer_one/conv1d/ExpandDims:output:04modele_2/conv_layer_one/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
modele_2/conv_layer_one/conv1d�
&modele_2/conv_layer_one/conv1d/SqueezeSqueeze'modele_2/conv_layer_one/conv1d:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������2(
&modele_2/conv_layer_one/conv1d/Squeeze�
.modele_2/conv_layer_one/BiasAdd/ReadVariableOpReadVariableOp7modele_2_conv_layer_one_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.modele_2/conv_layer_one/BiasAdd/ReadVariableOp�
modele_2/conv_layer_one/BiasAddBiasAdd/modele_2/conv_layer_one/conv1d/Squeeze:output:06modele_2/conv_layer_one/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2!
modele_2/conv_layer_one/BiasAdd�
modele_2/conv_layer_one/ReluRelu(modele_2/conv_layer_one/BiasAdd:output:0*
T0*+
_output_shapes
:���������2
modele_2/conv_layer_one/Relu�
-modele_2/conv_layer_two/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2/
-modele_2/conv_layer_two/conv1d/ExpandDims/dim�
)modele_2/conv_layer_two/conv1d/ExpandDims
ExpandDims*modele_2/conv_layer_one/Relu:activations:06modele_2/conv_layer_two/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2+
)modele_2/conv_layer_two/conv1d/ExpandDims�
:modele_2/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCmodele_2_conv_layer_two_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02<
:modele_2/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp�
/modele_2/conv_layer_two/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/modele_2/conv_layer_two/conv1d/ExpandDims_1/dim�
+modele_2/conv_layer_two/conv1d/ExpandDims_1
ExpandDimsBmodele_2/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp:value:08modele_2/conv_layer_two/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2-
+modele_2/conv_layer_two/conv1d/ExpandDims_1�
modele_2/conv_layer_two/conv1dConv2D2modele_2/conv_layer_two/conv1d/ExpandDims:output:04modele_2/conv_layer_two/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
modele_2/conv_layer_two/conv1d�
&modele_2/conv_layer_two/conv1d/SqueezeSqueeze'modele_2/conv_layer_two/conv1d:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������2(
&modele_2/conv_layer_two/conv1d/Squeeze�
.modele_2/conv_layer_two/BiasAdd/ReadVariableOpReadVariableOp7modele_2_conv_layer_two_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.modele_2/conv_layer_two/BiasAdd/ReadVariableOp�
modele_2/conv_layer_two/BiasAddBiasAdd/modele_2/conv_layer_two/conv1d/Squeeze:output:06modele_2/conv_layer_two/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2!
modele_2/conv_layer_two/BiasAdd�
modele_2/conv_layer_two/ReluRelu(modele_2/conv_layer_two/BiasAdd:output:0*
T0*+
_output_shapes
:���������2
modele_2/conv_layer_two/Relu�
modele_2/flatten_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
modele_2/flatten_layer/Const�
modele_2/flatten_layer/ReshapeReshape*modele_2/conv_layer_two/Relu:activations:0%modele_2/flatten_layer/Const:output:0*
T0*'
_output_shapes
:���������2 
modele_2/flatten_layer/Reshape�
*modele_2/input_layer/MatMul/ReadVariableOpReadVariableOp3modele_2_input_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02,
*modele_2/input_layer/MatMul/ReadVariableOp�
modele_2/input_layer/MatMulMatMul'modele_2/flatten_layer/Reshape:output:02modele_2/input_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
modele_2/input_layer/MatMul�
+modele_2/input_layer/BiasAdd/ReadVariableOpReadVariableOp4modele_2_input_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+modele_2/input_layer/BiasAdd/ReadVariableOp�
modele_2/input_layer/BiasAddBiasAdd%modele_2/input_layer/MatMul:product:03modele_2/input_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
modele_2/input_layer/BiasAdd�
modele_2/input_layer/ReluRelu%modele_2/input_layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
modele_2/input_layer/Relu�
+modele_2/output_layer/MatMul/ReadVariableOpReadVariableOp4modele_2_output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+modele_2/output_layer/MatMul/ReadVariableOp�
modele_2/output_layer/MatMulMatMul'modele_2/input_layer/Relu:activations:03modele_2/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
modele_2/output_layer/MatMul�
,modele_2/output_layer/BiasAdd/ReadVariableOpReadVariableOp5modele_2_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,modele_2/output_layer/BiasAdd/ReadVariableOp�
modele_2/output_layer/BiasAddBiasAdd&modele_2/output_layer/MatMul:product:04modele_2/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
modele_2/output_layer/BiasAdd�
modele_2/output_layer/SoftmaxSoftmax&modele_2/output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
modele_2/output_layer/Softmax�
IdentityIdentity'modele_2/output_layer/Softmax:softmax:0/^modele_2/conv_layer_one/BiasAdd/ReadVariableOp;^modele_2/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp/^modele_2/conv_layer_two/BiasAdd/ReadVariableOp;^modele_2/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp,^modele_2/input_layer/BiasAdd/ReadVariableOp+^modele_2/input_layer/MatMul/ReadVariableOp-^modele_2/output_layer/BiasAdd/ReadVariableOp,^modele_2/output_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2`
.modele_2/conv_layer_one/BiasAdd/ReadVariableOp.modele_2/conv_layer_one/BiasAdd/ReadVariableOp2x
:modele_2/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp:modele_2/conv_layer_one/conv1d/ExpandDims_1/ReadVariableOp2`
.modele_2/conv_layer_two/BiasAdd/ReadVariableOp.modele_2/conv_layer_two/BiasAdd/ReadVariableOp2x
:modele_2/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp:modele_2/conv_layer_two/conv1d/ExpandDims_1/ReadVariableOp2Z
+modele_2/input_layer/BiasAdd/ReadVariableOp+modele_2/input_layer/BiasAdd/ReadVariableOp2X
*modele_2/input_layer/MatMul/ReadVariableOp*modele_2/input_layer/MatMul/ReadVariableOp2\
,modele_2/output_layer/BiasAdd/ReadVariableOp,modele_2/output_layer/BiasAdd/ReadVariableOp2Z
+modele_2/output_layer/MatMul/ReadVariableOp+modele_2/output_layer/MatMul/ReadVariableOp:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
C__inference_modele_2_layer_call_and_return_conditional_losses_22725
input_1*
conv_layer_one_22655:"
conv_layer_one_22657:*
conv_layer_two_22677:"
conv_layer_two_22679:#
input_layer_22702:
input_layer_22704:$
output_layer_22719: 
output_layer_22721:
identity��&conv_layer_one/StatefulPartitionedCall�&conv_layer_two/StatefulPartitionedCall�#input_layer/StatefulPartitionedCall�$output_layer/StatefulPartitionedCall�
&conv_layer_one/StatefulPartitionedCallStatefulPartitionedCallinput_1conv_layer_one_22655conv_layer_one_22657*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_226542(
&conv_layer_one/StatefulPartitionedCall�
&conv_layer_two/StatefulPartitionedCallStatefulPartitionedCall/conv_layer_one/StatefulPartitionedCall:output:0conv_layer_two_22677conv_layer_two_22679*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_226762(
&conv_layer_two/StatefulPartitionedCall�
flatten_layer/PartitionedCallPartitionedCall/conv_layer_two/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_flatten_layer_layer_call_and_return_conditional_losses_226882
flatten_layer/PartitionedCall�
#input_layer/StatefulPartitionedCallStatefulPartitionedCall&flatten_layer/PartitionedCall:output:0input_layer_22702input_layer_22704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_input_layer_layer_call_and_return_conditional_losses_227012%
#input_layer/StatefulPartitionedCall�
$output_layer/StatefulPartitionedCallStatefulPartitionedCall,input_layer/StatefulPartitionedCall:output:0output_layer_22719output_layer_22721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_227182&
$output_layer/StatefulPartitionedCall�
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0'^conv_layer_one/StatefulPartitionedCall'^conv_layer_two/StatefulPartitionedCall$^input_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2P
&conv_layer_one/StatefulPartitionedCall&conv_layer_one/StatefulPartitionedCall2P
&conv_layer_two/StatefulPartitionedCall&conv_layer_two/StatefulPartitionedCall2J
#input_layer/StatefulPartitionedCall#input_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�	
�
(__inference_modele_2_layer_call_fn_22747
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_modele_2_layer_call_and_return_conditional_losses_227252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
F__inference_input_layer_layer_call_and_return_conditional_losses_22903

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_22676

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_input_layer_layer_call_and_return_conditional_losses_22701

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_22847

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
H__inference_flatten_layer_layer_call_and_return_conditional_losses_22688

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_conv_layer_one_layer_call_fn_22831

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_226542
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_input_layer_layer_call_fn_22892

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_input_layer_layer_call_and_return_conditional_losses_227012
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_22872

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_output_layer_layer_call_fn_22912

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_output_layer_layer_call_and_return_conditional_losses_227182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
__inference__traced_save_23033
file_prefix=
9savev2_modele_2_conv_layer_one_kernel_read_readvariableop;
7savev2_modele_2_conv_layer_one_bias_read_readvariableop=
9savev2_modele_2_conv_layer_two_kernel_read_readvariableop;
7savev2_modele_2_conv_layer_two_bias_read_readvariableop:
6savev2_modele_2_input_layer_kernel_read_readvariableop8
4savev2_modele_2_input_layer_bias_read_readvariableop;
7savev2_modele_2_output_layer_kernel_read_readvariableop9
5savev2_modele_2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_adam_modele_2_conv_layer_one_kernel_m_read_readvariableopB
>savev2_adam_modele_2_conv_layer_one_bias_m_read_readvariableopD
@savev2_adam_modele_2_conv_layer_two_kernel_m_read_readvariableopB
>savev2_adam_modele_2_conv_layer_two_bias_m_read_readvariableopA
=savev2_adam_modele_2_input_layer_kernel_m_read_readvariableop?
;savev2_adam_modele_2_input_layer_bias_m_read_readvariableopB
>savev2_adam_modele_2_output_layer_kernel_m_read_readvariableop@
<savev2_adam_modele_2_output_layer_bias_m_read_readvariableopD
@savev2_adam_modele_2_conv_layer_one_kernel_v_read_readvariableopB
>savev2_adam_modele_2_conv_layer_one_bias_v_read_readvariableopD
@savev2_adam_modele_2_conv_layer_two_kernel_v_read_readvariableopB
>savev2_adam_modele_2_conv_layer_two_bias_v_read_readvariableopA
=savev2_adam_modele_2_input_layer_kernel_v_read_readvariableop?
;savev2_adam_modele_2_input_layer_bias_v_read_readvariableopB
>savev2_adam_modele_2_output_layer_kernel_v_read_readvariableop@
<savev2_adam_modele_2_output_layer_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B0conv_layer_one/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_one/bias/.ATTRIBUTES/VARIABLE_VALUEB0conv_layer_two/kernel/.ATTRIBUTES/VARIABLE_VALUEB.conv_layer_two/bias/.ATTRIBUTES/VARIABLE_VALUEB-input_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+input_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB.output_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB,output_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_one/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_one/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_two/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_two/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBIinput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGinput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_one/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_one/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLconv_layer_two/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJconv_layer_two/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBIinput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGinput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJoutput_layer/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBHoutput_layer/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:09savev2_modele_2_conv_layer_one_kernel_read_readvariableop7savev2_modele_2_conv_layer_one_bias_read_readvariableop9savev2_modele_2_conv_layer_two_kernel_read_readvariableop7savev2_modele_2_conv_layer_two_bias_read_readvariableop6savev2_modele_2_input_layer_kernel_read_readvariableop4savev2_modele_2_input_layer_bias_read_readvariableop7savev2_modele_2_output_layer_kernel_read_readvariableop5savev2_modele_2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_adam_modele_2_conv_layer_one_kernel_m_read_readvariableop>savev2_adam_modele_2_conv_layer_one_bias_m_read_readvariableop@savev2_adam_modele_2_conv_layer_two_kernel_m_read_readvariableop>savev2_adam_modele_2_conv_layer_two_bias_m_read_readvariableop=savev2_adam_modele_2_input_layer_kernel_m_read_readvariableop;savev2_adam_modele_2_input_layer_bias_m_read_readvariableop>savev2_adam_modele_2_output_layer_kernel_m_read_readvariableop<savev2_adam_modele_2_output_layer_bias_m_read_readvariableop@savev2_adam_modele_2_conv_layer_one_kernel_v_read_readvariableop>savev2_adam_modele_2_conv_layer_one_bias_v_read_readvariableop@savev2_adam_modele_2_conv_layer_two_kernel_v_read_readvariableop>savev2_adam_modele_2_conv_layer_two_bias_v_read_readvariableop=savev2_adam_modele_2_input_layer_kernel_v_read_readvariableop;savev2_adam_modele_2_input_layer_bias_v_read_readvariableop>savev2_adam_modele_2_output_layer_kernel_v_read_readvariableop<savev2_adam_modele_2_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::: : : : : ::::::::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:Ȋ
�

conv_layer_one
conv_layer_two
flatten_layer
input_layer
output_layer
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
[__call__
\_default_save_signature
*]&call_and_return_all_conditional_losses"�
_tf_keras_model�{"name": "modele_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Modele", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [10, 3, 11]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Modele"}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 0}, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
^__call__
*_&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "conv_layer_one", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv_layer_one", "trainable": true, "dtype": "float32", "filters": 11, "kernel_size": {"class_name": "__tuple__", "items": [1]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 11}}, "shared_object_id": 4}, "build_input_shape": {"class_name": "TensorShape", "items": [10, 3, 11]}}
�


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
`__call__
*a&call_and_return_all_conditional_losses"�	
_tf_keras_layer�	{"name": "conv_layer_two", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv_layer_two", "trainable": true, "dtype": "float32", "filters": 11, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [3]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 11}}, "shared_object_id": 8}, "build_input_shape": {"class_name": "TensorShape", "items": [10, 3, 11]}}
�
	variables
trainable_variables
regularization_losses
	keras_api
b__call__
*c&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "flatten_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_layer", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 10}}
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
d__call__
*e&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "input_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "input_layer", "trainable": true, "dtype": "float32", "units": 11, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [10, 11]}}
�

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
f__call__
*g&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"name": "output_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "output_layer", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [10, 11]}}
�
(iter

)beta_1

*beta_2
	+decay
,learning_ratemKmLmMmNmOmP"mQ#mRvSvTvUvVvWvX"vY#vZ"
	optimizer
X
0
1
2
3
4
5
"6
#7"
trackable_list_wrapper
X
0
1
2
3
4
5
"6
#7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
-non_trainable_variables

.layers
	variables
/layer_regularization_losses
0layer_metrics
trainable_variables
1metrics
	regularization_losses
[__call__
\_default_save_signature
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
,
hserving_default"
signature_map
4:22modele_2/conv_layer_one/kernel
*:(2modele_2/conv_layer_one/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
2non_trainable_variables

3layers
	variables
4layer_regularization_losses
5layer_metrics
trainable_variables
6metrics
regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
4:22modele_2/conv_layer_two/kernel
*:(2modele_2/conv_layer_two/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables

8layers
	variables
9layer_regularization_losses
:layer_metrics
trainable_variables
;metrics
regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
<non_trainable_variables

=layers
	variables
>layer_regularization_losses
?layer_metrics
trainable_variables
@metrics
regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
-:+2modele_2/input_layer/kernel
':%2modele_2/input_layer/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Anon_trainable_variables

Blayers
	variables
Clayer_regularization_losses
Dlayer_metrics
trainable_variables
Emetrics
 regularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
.:,2modele_2/output_layer/kernel
(:&2modele_2/output_layer/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
$	variables
Hlayer_regularization_losses
Ilayer_metrics
%trainable_variables
Jmetrics
&regularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
9:72%Adam/modele_2/conv_layer_one/kernel/m
/:-2#Adam/modele_2/conv_layer_one/bias/m
9:72%Adam/modele_2/conv_layer_two/kernel/m
/:-2#Adam/modele_2/conv_layer_two/bias/m
2:02"Adam/modele_2/input_layer/kernel/m
,:*2 Adam/modele_2/input_layer/bias/m
3:12#Adam/modele_2/output_layer/kernel/m
-:+2!Adam/modele_2/output_layer/bias/m
9:72%Adam/modele_2/conv_layer_one/kernel/v
/:-2#Adam/modele_2/conv_layer_one/bias/v
9:72%Adam/modele_2/conv_layer_two/kernel/v
/:-2#Adam/modele_2/conv_layer_two/bias/v
2:02"Adam/modele_2/input_layer/kernel/v
,:*2 Adam/modele_2/input_layer/bias/v
3:12#Adam/modele_2/output_layer/kernel/v
-:+2!Adam/modele_2/output_layer/bias/v
�2�
(__inference_modele_2_layer_call_fn_22747�
���
FullArgSpec
args�
jself
jnotes
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"
input_1���������
�2�
 __inference__wrapped_model_22634�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"
input_1���������
�2�
C__inference_modele_2_layer_call_and_return_conditional_losses_22725�
���
FullArgSpec
args�
jself
jnotes
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"
input_1���������
�2�
.__inference_conv_layer_one_layer_call_fn_22831�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_22847�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_conv_layer_two_layer_call_fn_22856�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_22872�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_flatten_layer_layer_call_fn_22877�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_flatten_layer_layer_call_and_return_conditional_losses_22883�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_input_layer_layer_call_fn_22892�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_input_layer_layer_call_and_return_conditional_losses_22903�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_output_layer_layer_call_fn_22912�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_output_layer_layer_call_and_return_conditional_losses_22923�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_22822input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_22634u"#4�1
*�'
%�"
input_1���������
� "3�0
.
output_1"�
output_1����������
I__inference_conv_layer_one_layer_call_and_return_conditional_losses_22847d3�0
)�&
$�!
inputs���������
� ")�&
�
0���������
� �
.__inference_conv_layer_one_layer_call_fn_22831W3�0
)�&
$�!
inputs���������
� "�����������
I__inference_conv_layer_two_layer_call_and_return_conditional_losses_22872d3�0
)�&
$�!
inputs���������
� ")�&
�
0���������
� �
.__inference_conv_layer_two_layer_call_fn_22856W3�0
)�&
$�!
inputs���������
� "�����������
H__inference_flatten_layer_layer_call_and_return_conditional_losses_22883\3�0
)�&
$�!
inputs���������
� "%�"
�
0���������
� �
-__inference_flatten_layer_layer_call_fn_22877O3�0
)�&
$�!
inputs���������
� "�����������
F__inference_input_layer_layer_call_and_return_conditional_losses_22903\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� ~
+__inference_input_layer_layer_call_fn_22892O/�,
%�"
 �
inputs���������
� "�����������
C__inference_modele_2_layer_call_and_return_conditional_losses_22725g"#4�1
*�'
%�"
input_1���������
� "%�"
�
0���������
� �
(__inference_modele_2_layer_call_fn_22747Z"#4�1
*�'
%�"
input_1���������
� "�����������
G__inference_output_layer_layer_call_and_return_conditional_losses_22923\"#/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� 
,__inference_output_layer_layer_call_fn_22912O"#/�,
%�"
 �
inputs���������
� "�����������
#__inference_signature_wrapper_22822�"#?�<
� 
5�2
0
input_1%�"
input_1���������"3�0
.
output_1"�
output_1���������