Ј»
єН
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
Џ
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
ч
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.11.02v2.11.0-rc2-15-g6290819256d8ф└
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
t
Adam/v/fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/v/fc/bias
m
"Adam/v/fc/bias/Read/ReadVariableOpReadVariableOpAdam/v/fc/bias*
_output_shapes
:*
dtype0
t
Adam/m/fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/m/fc/bias
m
"Adam/m/fc/bias/Read/ReadVariableOpReadVariableOpAdam/m/fc/bias*
_output_shapes
:*
dtype0
}
Adam/v/fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ1*!
shared_nameAdam/v/fc/kernel
v
$Adam/v/fc/kernel/Read/ReadVariableOpReadVariableOpAdam/v/fc/kernel*
_output_shapes
:	ђ1*
dtype0
}
Adam/m/fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ1*!
shared_nameAdam/m/fc/kernel
v
$Adam/m/fc/kernel/Read/ReadVariableOpReadVariableOpAdam/m/fc/kernel*
_output_shapes
:	ђ1*
dtype0
v
Adam/v/bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/v/bn0/beta
o
#Adam/v/bn0/beta/Read/ReadVariableOpReadVariableOpAdam/v/bn0/beta*
_output_shapes
: *
dtype0
v
Adam/m/bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/m/bn0/beta
o
#Adam/m/bn0/beta/Read/ReadVariableOpReadVariableOpAdam/m/bn0/beta*
_output_shapes
: *
dtype0
x
Adam/v/bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/v/bn0/gamma
q
$Adam/v/bn0/gamma/Read/ReadVariableOpReadVariableOpAdam/v/bn0/gamma*
_output_shapes
: *
dtype0
x
Adam/m/bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/m/bn0/gamma
q
$Adam/m/bn0/gamma/Read/ReadVariableOpReadVariableOpAdam/m/bn0/gamma*
_output_shapes
: *
dtype0
z
Adam/v/conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/v/conv0/bias
s
%Adam/v/conv0/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv0/bias*
_output_shapes
: *
dtype0
z
Adam/m/conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/m/conv0/bias
s
%Adam/m/conv0/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv0/bias*
_output_shapes
: *
dtype0
і
Adam/v/conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/conv0/kernel
Ѓ
'Adam/v/conv0/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv0/kernel*&
_output_shapes
: *
dtype0
і
Adam/m/conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/conv0/kernel
Ѓ
'Adam/m/conv0/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv0/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
f
fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc/bias
_
fc/bias/Read/ReadVariableOpReadVariableOpfc/bias*
_output_shapes
:*
dtype0
o
	fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ1*
shared_name	fc/kernel
h
fc/kernel/Read/ReadVariableOpReadVariableOp	fc/kernel*
_output_shapes
:	ђ1*
dtype0
~
bn0/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namebn0/moving_variance
w
'bn0/moving_variance/Read/ReadVariableOpReadVariableOpbn0/moving_variance*
_output_shapes
: *
dtype0
v
bn0/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namebn0/moving_mean
o
#bn0/moving_mean/Read/ReadVariableOpReadVariableOpbn0/moving_mean*
_output_shapes
: *
dtype0
h
bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
bn0/beta
a
bn0/beta/Read/ReadVariableOpReadVariableOpbn0/beta*
_output_shapes
: *
dtype0
j
	bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bn0/gamma
c
bn0/gamma/Read/ReadVariableOpReadVariableOp	bn0/gamma*
_output_shapes
: *
dtype0
l

conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
conv0/bias
e
conv0/bias/Read/ReadVariableOpReadVariableOp
conv0/bias*
_output_shapes
: *
dtype0
|
conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv0/kernel
u
 conv0/kernel/Read/ReadVariableOpReadVariableOpconv0/kernel*&
_output_shapes
: *
dtype0
ј
serving_default_input_2Placeholder*1
_output_shapes
:         ­­*
dtype0*&
shape:         ­­
ф
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_44576

NoOpNoOp
┬B
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*§A
valueзAB­A BжA
Ј
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*
Н
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(axis
	)gamma
*beta
+moving_mean
,moving_variance*
ј
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
ј
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
ј
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
ј
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
д
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias*
<
0
 1
)2
*3
+4
,5
K6
L7*
.
0
 1
)2
*3
K4
L5*
* 
░
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
* 
Ђ
Z
_variables
[_iterations
\_learning_rate
]_index_dict
^
_momentums
__velocities
`_update_step_xla*

aserving_default* 
* 
* 
* 
Љ
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

gtrace_0* 

htrace_0* 

0
 1*

0
 1*
* 
Њ
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
\V
VARIABLE_VALUEconv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
)0
*1
+2
,3*

)0
*1*
* 
Њ
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

utrace_0
vtrace_1* 

wtrace_0
xtrace_1* 
* 
XR
VARIABLE_VALUE	bn0/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn0/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn0/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn0/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Љ
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

~trace_0* 

trace_0* 
* 
* 
* 
ќ
ђnon_trainable_variables
Ђlayers
ѓmetrics
 Ѓlayer_regularization_losses
ёlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

Ёtrace_0* 

єtrace_0* 
* 
* 
* 
ќ
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

їtrace_0* 

Їtrace_0* 
* 
* 
* 
ќ
јnon_trainable_variables
Јlayers
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

Њtrace_0* 

ћtrace_0* 

K0
L1*

K0
L1*
* 
ў
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

џtrace_0* 

Џtrace_0* 
YS
VARIABLE_VALUE	fc/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEfc/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*
C
0
1
2
3
4
5
6
7
	8*

ю0
Ю1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
n
[0
ъ1
Ъ2
а3
А4
б5
Б6
ц7
Ц8
д9
Д10
е11
Е12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
4
ъ0
а1
б2
ц3
д4
е5*
4
Ъ0
А1
Б2
Ц3
Д4
Е5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

+0
,1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ф	variables
Ф	keras_api

гtotal

Гcount*
M
«	variables
»	keras_api

░total

▒count
▓
_fn_kwargs*
^X
VARIABLE_VALUEAdam/m/conv0/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/conv0/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/conv0/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/conv0/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/bn0/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/bn0/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/bn0/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/bn0/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/fc/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/fc/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/fc/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/fc/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

г0
Г1*

ф	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

░0
▒1*

«	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╣	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv0/kernel/Read/ReadVariableOpconv0/bias/Read/ReadVariableOpbn0/gamma/Read/ReadVariableOpbn0/beta/Read/ReadVariableOp#bn0/moving_mean/Read/ReadVariableOp'bn0/moving_variance/Read/ReadVariableOpfc/kernel/Read/ReadVariableOpfc/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp'Adam/m/conv0/kernel/Read/ReadVariableOp'Adam/v/conv0/kernel/Read/ReadVariableOp%Adam/m/conv0/bias/Read/ReadVariableOp%Adam/v/conv0/bias/Read/ReadVariableOp$Adam/m/bn0/gamma/Read/ReadVariableOp$Adam/v/bn0/gamma/Read/ReadVariableOp#Adam/m/bn0/beta/Read/ReadVariableOp#Adam/v/bn0/beta/Read/ReadVariableOp$Adam/m/fc/kernel/Read/ReadVariableOp$Adam/v/fc/kernel/Read/ReadVariableOp"Adam/m/fc/bias/Read/ReadVariableOp"Adam/v/fc/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*'
Tin 
2	*
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
GPU 2J 8ѓ *'
f"R 
__inference__traced_save_44948
г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias	iterationlearning_rateAdam/m/conv0/kernelAdam/v/conv0/kernelAdam/m/conv0/biasAdam/v/conv0/biasAdam/m/bn0/gammaAdam/v/bn0/gammaAdam/m/bn0/betaAdam/v/bn0/betaAdam/m/fc/kernelAdam/v/fc/kernelAdam/m/fc/biasAdam/v/fc/biastotal_1count_1totalcount*&
Tin
2*
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_45036Р╗
ж
g
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44194

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4                                    w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn0_layer_call_and_return_conditional_losses_44768

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
з
Г
>__inference_bn0_layer_call_and_return_conditional_losses_44250

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╩&
і
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44656

inputs>
$conv0_conv2d_readvariableop_resource: 3
%conv0_biasadd_readvariableop_resource: )
bn0_readvariableop_resource: +
bn0_readvariableop_1_resource: :
,bn0_fusedbatchnormv3_readvariableop_resource: <
.bn0_fusedbatchnormv3_readvariableop_1_resource: 4
!fc_matmul_readvariableop_resource:	ђ10
"fc_biasadd_readvariableop_resource:
identityѕб#bn0/FusedBatchNormV3/ReadVariableOpб%bn0/FusedBatchNormV3/ReadVariableOp_1бbn0/ReadVariableOpбbn0/ReadVariableOp_1бconv0/BiasAdd/ReadVariableOpбconv0/Conv2D/ReadVariableOpбfc/BiasAdd/ReadVariableOpбfc/MatMul/ReadVariableOpј
zero_padding2d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             Є
zero_padding2d_1/PadPadinputs&zero_padding2d_1/Pad/paddings:output:0*
T0*1
_output_shapes
:         ЗЗѕ
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0┐
conv0/Conv2DConv2Dzero_padding2d_1/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
~
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ j
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
: *
dtype0n
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
: *
dtype0ї
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0љ
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0▄
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
is_training( o
activation_1/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ ф
max_pool0/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:         ;; *
ksize
*
paddingVALID*
strides
Ц
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  Ё
flatten_1/ReshapeReshapemax_pool1/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         ђ1{
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype0Ѓ
	fc/MatMulMatMulflatten_1/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
IdentityIdentityfc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp$^bn0/FusedBatchNormV3/ReadVariableOp&^bn0/FusedBatchNormV3/ReadVariableOp_1^bn0/ReadVariableOp^bn0/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 2J
#bn0/FusedBatchNormV3/ReadVariableOp#bn0/FusedBatchNormV3/ReadVariableOp2N
%bn0/FusedBatchNormV3/ReadVariableOp_1%bn0/FusedBatchNormV3/ReadVariableOp_12(
bn0/ReadVariableOpbn0/ReadVariableOp2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp2:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
У	
─
3__inference_BrainDetectionModel_layer_call_fn_44495
input_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	ђ1
	unknown_6:
identityѕбStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44455o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_2
╦
H
,__inference_activation_1_layer_call_fn_44791

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_44323j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЬЬ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
О
Б
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44455

inputs%
conv0_44431: 
conv0_44433: 
	bn0_44436: 
	bn0_44438: 
	bn0_44440: 
	bn0_44442: 
fc_44449:	ђ1
fc_44451:
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCallЛ
 zero_padding2d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44194ј
conv0/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv0_44431conv0_44433*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_44303Џ
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_44436	bn0_44438	bn0_44440	bn0_44442*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_44250у
activation_1/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_44323Я
max_pool0/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_44270П
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_44282о
flatten_1/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_44333ы
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_44449fc_44451*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_44346r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         А
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
«

щ
@__inference_conv0_layer_call_and_return_conditional_losses_44303

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЗЗ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЗЗ
 
_user_specified_nameinputs
»4
Ю
 __inference__wrapped_model_44184
input_2R
8braindetectionmodel_conv0_conv2d_readvariableop_resource: G
9braindetectionmodel_conv0_biasadd_readvariableop_resource: =
/braindetectionmodel_bn0_readvariableop_resource: ?
1braindetectionmodel_bn0_readvariableop_1_resource: N
@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource: P
Bbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource: H
5braindetectionmodel_fc_matmul_readvariableop_resource:	ђ1D
6braindetectionmodel_fc_biasadd_readvariableop_resource:
identityѕб7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpб9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1б&BrainDetectionModel/bn0/ReadVariableOpб(BrainDetectionModel/bn0/ReadVariableOp_1б0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpб/BrainDetectionModel/conv0/Conv2D/ReadVariableOpб-BrainDetectionModel/fc/BiasAdd/ReadVariableOpб,BrainDetectionModel/fc/MatMul/ReadVariableOpб
1BrainDetectionModel/zero_padding2d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ░
(BrainDetectionModel/zero_padding2d_1/PadPadinput_2:BrainDetectionModel/zero_padding2d_1/Pad/paddings:output:0*
T0*1
_output_shapes
:         ЗЗ░
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ч
 BrainDetectionModel/conv0/Conv2DConv2D1BrainDetectionModel/zero_padding2d_1/Pad:output:07BrainDetectionModel/conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
д
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0═
!BrainDetectionModel/conv0/BiasAddBiasAdd)BrainDetectionModel/conv0/Conv2D:output:08BrainDetectionModel/conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ њ
&BrainDetectionModel/bn0/ReadVariableOpReadVariableOp/braindetectionmodel_bn0_readvariableop_resource*
_output_shapes
: *
dtype0ќ
(BrainDetectionModel/bn0/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype0┤
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0н
(BrainDetectionModel/bn0/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv0/BiasAdd:output:0.BrainDetectionModel/bn0/ReadVariableOp:value:00BrainDetectionModel/bn0/ReadVariableOp_1:value:0?BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
is_training( Ќ
%BrainDetectionModel/activation_1/ReluRelu,BrainDetectionModel/bn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ м
%BrainDetectionModel/max_pool0/MaxPoolMaxPool3BrainDetectionModel/activation_1/Relu:activations:0*/
_output_shapes
:         ;; *
ksize
*
paddingVALID*
strides
═
%BrainDetectionModel/max_pool1/MaxPoolMaxPool.BrainDetectionModel/max_pool0/MaxPool:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
t
#BrainDetectionModel/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ┴
%BrainDetectionModel/flatten_1/ReshapeReshape.BrainDetectionModel/max_pool1/MaxPool:output:0,BrainDetectionModel/flatten_1/Const:output:0*
T0*(
_output_shapes
:         ђ1Б
,BrainDetectionModel/fc/MatMul/ReadVariableOpReadVariableOp5braindetectionmodel_fc_matmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype0┐
BrainDetectionModel/fc/MatMulMatMul.BrainDetectionModel/flatten_1/Reshape:output:04BrainDetectionModel/fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpReadVariableOp6braindetectionmodel_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
BrainDetectionModel/fc/BiasAddBiasAdd'BrainDetectionModel/fc/MatMul:product:05BrainDetectionModel/fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
BrainDetectionModel/fc/SigmoidSigmoid'BrainDetectionModel/fc/BiasAdd:output:0*
T0*'
_output_shapes
:         q
IdentityIdentity"BrainDetectionModel/fc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         н
NoOpNoOp8^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn0/ReadVariableOp)^BrainDetectionModel/bn0/ReadVariableOp_11^BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv0/Conv2D/ReadVariableOp.^BrainDetectionModel/fc/BiasAdd/ReadVariableOp-^BrainDetectionModel/fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 2r
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp2v
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_12P
&BrainDetectionModel/bn0/ReadVariableOp&BrainDetectionModel/bn0/ReadVariableOp2T
(BrainDetectionModel/bn0/ReadVariableOp_1(BrainDetectionModel/bn0/ReadVariableOp_12d
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv0/Conv2D/ReadVariableOp/BrainDetectionModel/conv0/Conv2D/ReadVariableOp2^
-BrainDetectionModel/fc/BiasAdd/ReadVariableOp-BrainDetectionModel/fc/BiasAdd/ReadVariableOp2\
,BrainDetectionModel/fc/MatMul/ReadVariableOp,BrainDetectionModel/fc/MatMul/ReadVariableOp:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_2
─7
ј

__inference__traced_save_44948
file_prefix+
'savev2_conv0_kernel_read_readvariableop)
%savev2_conv0_bias_read_readvariableop(
$savev2_bn0_gamma_read_readvariableop'
#savev2_bn0_beta_read_readvariableop.
*savev2_bn0_moving_mean_read_readvariableop2
.savev2_bn0_moving_variance_read_readvariableop(
$savev2_fc_kernel_read_readvariableop&
"savev2_fc_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop2
.savev2_adam_m_conv0_kernel_read_readvariableop2
.savev2_adam_v_conv0_kernel_read_readvariableop0
,savev2_adam_m_conv0_bias_read_readvariableop0
,savev2_adam_v_conv0_bias_read_readvariableop/
+savev2_adam_m_bn0_gamma_read_readvariableop/
+savev2_adam_v_bn0_gamma_read_readvariableop.
*savev2_adam_m_bn0_beta_read_readvariableop.
*savev2_adam_v_bn0_beta_read_readvariableop/
+savev2_adam_m_fc_kernel_read_readvariableop/
+savev2_adam_v_fc_kernel_read_readvariableop-
)savev2_adam_m_fc_bias_read_readvariableop-
)savev2_adam_v_fc_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: э
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*а
valueќBЊB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHБ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B Г

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv0_kernel_read_readvariableop%savev2_conv0_bias_read_readvariableop$savev2_bn0_gamma_read_readvariableop#savev2_bn0_beta_read_readvariableop*savev2_bn0_moving_mean_read_readvariableop.savev2_bn0_moving_variance_read_readvariableop$savev2_fc_kernel_read_readvariableop"savev2_fc_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop.savev2_adam_m_conv0_kernel_read_readvariableop.savev2_adam_v_conv0_kernel_read_readvariableop,savev2_adam_m_conv0_bias_read_readvariableop,savev2_adam_v_conv0_bias_read_readvariableop+savev2_adam_m_bn0_gamma_read_readvariableop+savev2_adam_v_bn0_gamma_read_readvariableop*savev2_adam_m_bn0_beta_read_readvariableop*savev2_adam_v_bn0_beta_read_readvariableop+savev2_adam_m_fc_kernel_read_readvariableop+savev2_adam_v_fc_kernel_read_readvariableop)savev2_adam_m_fc_bias_read_readvariableop)savev2_adam_v_fc_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *)
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*л
_input_shapesЙ
╗: : : : : : : :	ђ1:: : : : : : : : : : :	ђ1:	ђ1::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	ђ1: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	ђ1:%!

_output_shapes
:	ђ1: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
г	
┤
#__inference_signature_wrapper_44576
input_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	ђ1
	unknown_6:
identityѕбStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_44184o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_2
з
c
G__inference_activation_1_layer_call_and_return_conditional_losses_44323

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
ї
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_44270

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
у	
├
3__inference_BrainDetectionModel_layer_call_fn_44597

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	ђ1
	unknown_6:
identityѕбStatefulPartitionedCall▒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
▄
ц
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44523
input_2%
conv0_44499: 
conv0_44501: 
	bn0_44504: 
	bn0_44506: 
	bn0_44508: 
	bn0_44510: 
fc_44517:	ђ1
fc_44519:
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCallм
 zero_padding2d_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44194ј
conv0/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv0_44499conv0_44501*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_44303Ю
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_44504	bn0_44506	bn0_44508	bn0_44510*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_44219у
activation_1/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_44323Я
max_pool0/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_44270П
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_44282о
flatten_1/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_44333ы
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_44517fc_44519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_44346r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         А
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_2
Ќ

№
=__inference_fc_layer_call_and_return_conditional_losses_44847

inputs1
matmul_readvariableop_resource:	ђ1-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
ж
g
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44705

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4                                    w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
з
c
G__inference_activation_1_layer_call_and_return_conditional_losses_44796

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
─+
Х
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44694

inputs>
$conv0_conv2d_readvariableop_resource: 3
%conv0_biasadd_readvariableop_resource: )
bn0_readvariableop_resource: +
bn0_readvariableop_1_resource: :
,bn0_fusedbatchnormv3_readvariableop_resource: <
.bn0_fusedbatchnormv3_readvariableop_1_resource: 4
!fc_matmul_readvariableop_resource:	ђ10
"fc_biasadd_readvariableop_resource:
identityѕбbn0/AssignNewValueбbn0/AssignNewValue_1б#bn0/FusedBatchNormV3/ReadVariableOpб%bn0/FusedBatchNormV3/ReadVariableOp_1бbn0/ReadVariableOpбbn0/ReadVariableOp_1бconv0/BiasAdd/ReadVariableOpбconv0/Conv2D/ReadVariableOpбfc/BiasAdd/ReadVariableOpбfc/MatMul/ReadVariableOpј
zero_padding2d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             Є
zero_padding2d_1/PadPadinputs&zero_padding2d_1/Pad/paddings:output:0*
T0*1
_output_shapes
:         ЗЗѕ
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0┐
conv0/Conv2DConv2Dzero_padding2d_1/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
~
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ j
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
: *
dtype0n
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
: *
dtype0ї
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0љ
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ж
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<о
bn0/AssignNewValueAssignVariableOp,bn0_fusedbatchnormv3_readvariableop_resource!bn0/FusedBatchNormV3:batch_mean:0$^bn0/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Я
bn0/AssignNewValue_1AssignVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource%bn0/FusedBatchNormV3:batch_variance:0&^bn0/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(o
activation_1/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ ф
max_pool0/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:         ;; *
ksize
*
paddingVALID*
strides
Ц
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  Ё
flatten_1/ReshapeReshapemax_pool1/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         ђ1{
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype0Ѓ
	fc/MatMulMatMulflatten_1/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:         ]
IdentityIdentityfc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Я
NoOpNoOp^bn0/AssignNewValue^bn0/AssignNewValue_1$^bn0/FusedBatchNormV3/ReadVariableOp&^bn0/FusedBatchNormV3/ReadVariableOp_1^bn0/ReadVariableOp^bn0/ReadVariableOp_1^conv0/BiasAdd/ReadVariableOp^conv0/Conv2D/ReadVariableOp^fc/BiasAdd/ReadVariableOp^fc/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 2(
bn0/AssignNewValuebn0/AssignNewValue2,
bn0/AssignNewValue_1bn0/AssignNewValue_12J
#bn0/FusedBatchNormV3/ReadVariableOp#bn0/FusedBatchNormV3/ReadVariableOp2N
%bn0/FusedBatchNormV3/ReadVariableOp_1%bn0/FusedBatchNormV3/ReadVariableOp_12(
bn0/ReadVariableOpbn0/ReadVariableOp2,
bn0/ReadVariableOp_1bn0/ReadVariableOp_12<
conv0/BiasAdd/ReadVariableOpconv0/BiasAdd/ReadVariableOp2:
conv0/Conv2D/ReadVariableOpconv0/Conv2D/ReadVariableOp26
fc/BiasAdd/ReadVariableOpfc/BiasAdd/ReadVariableOp24
fc/MatMul/ReadVariableOpfc/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
и
љ
"__inference_fc_layer_call_fn_44836

inputs
unknown:	ђ1
	unknown_0:
identityѕбStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_44346o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ1: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
т	
├
3__inference_BrainDetectionModel_layer_call_fn_44618

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	ђ1
	unknown_6:
identityѕбStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44455o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
ж
Й
#__inference_bn0_layer_call_fn_44750

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_44250Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┘
Б
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44353

inputs%
conv0_44304: 
conv0_44306: 
	bn0_44309: 
	bn0_44311: 
	bn0_44313: 
	bn0_44315: 
fc_44347:	ђ1
fc_44349:
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCallЛ
 zero_padding2d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44194ј
conv0/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv0_44304conv0_44306*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_44303Ю
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_44309	bn0_44311	bn0_44313	bn0_44315*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_44219у
activation_1/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_44323Я
max_pool0/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_44270П
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_44282о
flatten_1/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_44333ы
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_44347fc_44349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_44346r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         А
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
╣
Ѕ
>__inference_bn0_layer_call_and_return_conditional_losses_44219

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
«

щ
@__inference_conv0_layer_call_and_return_conditional_losses_44724

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЗЗ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЗЗ
 
_user_specified_nameinputs
ф
E
)__inference_max_pool0_layer_call_fn_44801

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_44270Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ж
џ
%__inference_conv0_layer_call_fn_44714

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_44303y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЗЗ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЗЗ
 
_user_specified_nameinputs
в
Й
#__inference_bn0_layer_call_fn_44737

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_44219Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
з
Г
>__inference_bn0_layer_call_and_return_conditional_losses_44786

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┌
ц
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44551
input_2%
conv0_44527: 
conv0_44529: 
	bn0_44532: 
	bn0_44534: 
	bn0_44536: 
	bn0_44538: 
fc_44545:	ђ1
fc_44547:
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCallм
 zero_padding2d_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44194ј
conv0/StatefulPartitionedCallStatefulPartitionedCall)zero_padding2d_1/PartitionedCall:output:0conv0_44527conv0_44529*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_44303Џ
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_44532	bn0_44534	bn0_44536	bn0_44538*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_44250у
activation_1/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_44323Я
max_pool0/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_44270П
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_44282о
flatten_1/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_44333ы
fc/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc_44545fc_44547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_44346r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         А
NoOpNoOp^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_2
Ж	
─
3__inference_BrainDetectionModel_layer_call_fn_44372
input_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5:	ђ1
	unknown_6:
identityѕбStatefulPartitionedCall▓
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         ­­: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_2
И
L
0__inference_zero_padding2d_1_layer_call_fn_44699

inputs
identity┘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44194Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ќ

№
=__inference_fc_layer_call_and_return_conditional_losses_44346

inputs1
matmul_readvariableop_resource:	ђ1-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
ф
E
)__inference_max_pool1_layer_call_fn_44811

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_44282Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
тm
Э
!__inference__traced_restore_45036
file_prefix7
assignvariableop_conv0_kernel: +
assignvariableop_1_conv0_bias: *
assignvariableop_2_bn0_gamma: )
assignvariableop_3_bn0_beta: 0
"assignvariableop_4_bn0_moving_mean: 4
&assignvariableop_5_bn0_moving_variance: /
assignvariableop_6_fc_kernel:	ђ1(
assignvariableop_7_fc_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: A
'assignvariableop_10_adam_m_conv0_kernel: A
'assignvariableop_11_adam_v_conv0_kernel: 3
%assignvariableop_12_adam_m_conv0_bias: 3
%assignvariableop_13_adam_v_conv0_bias: 2
$assignvariableop_14_adam_m_bn0_gamma: 2
$assignvariableop_15_adam_v_bn0_gamma: 1
#assignvariableop_16_adam_m_bn0_beta: 1
#assignvariableop_17_adam_v_bn0_beta: 7
$assignvariableop_18_adam_m_fc_kernel:	ђ17
$assignvariableop_19_adam_v_fc_kernel:	ђ10
"assignvariableop_20_adam_m_fc_bias:0
"assignvariableop_21_adam_v_fc_bias:%
assignvariableop_22_total_1: %
assignvariableop_23_count_1: #
assignvariableop_24_total: #
assignvariableop_25_count: 
identity_27ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Щ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*а
valueќBЊB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHд
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B д
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ђ
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:░
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn0_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn0_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn0_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn0_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_10AssignVariableOp'assignvariableop_10_adam_m_conv0_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_11AssignVariableOp'assignvariableop_11_adam_v_conv0_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_12AssignVariableOp%assignvariableop_12_adam_m_conv0_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_13AssignVariableOp%assignvariableop_13_adam_v_conv0_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_14AssignVariableOp$assignvariableop_14_adam_m_bn0_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_15AssignVariableOp$assignvariableop_15_adam_v_bn0_gammaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_16AssignVariableOp#assignvariableop_16_adam_m_bn0_betaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_17AssignVariableOp#assignvariableop_17_adam_v_bn0_betaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_18AssignVariableOp$assignvariableop_18_adam_m_fc_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_v_fc_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_20AssignVariableOp"assignvariableop_20_adam_m_fc_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_21AssignVariableOp"assignvariableop_21_adam_v_fc_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 І
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: Э
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_25AssignVariableOp_252(
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
ї
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_44806

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
к
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_44333

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ1Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ї
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_44282

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
к
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_44827

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ1Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ї
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_44816

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
»
E
)__inference_flatten_1_layer_call_fn_44821

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_44333a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs"є
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_defaultЏ
E
input_2:
serving_default_input_2:0         ­­6
fc0
StatefulPartitionedCall:0         tensorflow/serving/predict:зн
д
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op"
_tf_keras_layer
Ж
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(axis
	)gamma
*beta
+moving_mean
,moving_variance"
_tf_keras_layer
Ц
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias"
_tf_keras_layer
X
0
 1
)2
*3
+4
,5
K6
L7"
trackable_list_wrapper
J
0
 1
)2
*3
K4
L5"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ђ
Rtrace_0
Strace_1
Ttrace_2
Utrace_32ќ
3__inference_BrainDetectionModel_layer_call_fn_44372
3__inference_BrainDetectionModel_layer_call_fn_44597
3__inference_BrainDetectionModel_layer_call_fn_44618
3__inference_BrainDetectionModel_layer_call_fn_44495┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
ь
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ѓ
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44656
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44694
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44523
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44551┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
╦B╚
 __inference__wrapped_model_44184input_2"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю
Z
_variables
[_iterations
\_learning_rate
]_index_dict
^
_momentums
__velocities
`_update_step_xla"
experimentalOptimizer
,
aserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
З
gtrace_02О
0__inference_zero_padding2d_1_layer_call_fn_44699б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zgtrace_0
Ј
htrace_02Ы
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44705б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zhtrace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ж
ntrace_02╠
%__inference_conv0_layer_call_fn_44714б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zntrace_0
ё
otrace_02у
@__inference_conv0_layer_call_and_return_conditional_losses_44724б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zotrace_0
&:$ 2conv0/kernel
: 2
conv0/bias
┤2▒«
Б▓Ъ
FullArgSpec'
argsџ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
)0
*1
+2
,3"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
и
utrace_0
vtrace_12ђ
#__inference_bn0_layer_call_fn_44737
#__inference_bn0_layer_call_fn_44750│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zutrace_0zvtrace_1
ь
wtrace_0
xtrace_12Х
>__inference_bn0_layer_call_and_return_conditional_losses_44768
>__inference_bn0_layer_call_and_return_conditional_losses_44786│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zwtrace_0zxtrace_1
 "
trackable_list_wrapper
: 2	bn0/gamma
: 2bn0/beta
:  (2bn0/moving_mean
#:!  (2bn0/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
­
~trace_02М
,__inference_activation_1_layer_call_fn_44791б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z~trace_0
І
trace_02Ь
G__inference_activation_1_layer_call_and_return_conditional_losses_44796б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ђnon_trainable_variables
Ђlayers
ѓmetrics
 Ѓlayer_regularization_losses
ёlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
№
Ёtrace_02л
)__inference_max_pool0_layer_call_fn_44801б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЁtrace_0
і
єtrace_02в
D__inference_max_pool0_layer_call_and_return_conditional_losses_44806б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zєtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
№
їtrace_02л
)__inference_max_pool1_layer_call_fn_44811б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zїtrace_0
і
Їtrace_02в
D__inference_max_pool1_layer_call_and_return_conditional_losses_44816б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЇtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
јnon_trainable_variables
Јlayers
љmetrics
 Љlayer_regularization_losses
њlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
№
Њtrace_02л
)__inference_flatten_1_layer_call_fn_44821б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЊtrace_0
і
ћtrace_02в
D__inference_flatten_1_layer_call_and_return_conditional_losses_44827б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zћtrace_0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
У
џtrace_02╔
"__inference_fc_layer_call_fn_44836б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zџtrace_0
Ѓ
Џtrace_02С
=__inference_fc_layer_call_and_return_conditional_losses_44847б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЏtrace_0
:	ђ12	fc/kernel
:2fc/bias
.
+0
,1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
ю0
Ю1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
3__inference_BrainDetectionModel_layer_call_fn_44372input_2"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
3__inference_BrainDetectionModel_layer_call_fn_44597inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ёBЂ
3__inference_BrainDetectionModel_layer_call_fn_44618inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
3__inference_BrainDetectionModel_layer_call_fn_44495input_2"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44656inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЪBю
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44694inputs"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44523input_2"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44551input_2"┐
Х▓▓
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
і
[0
ъ1
Ъ2
а3
А4
б5
Б6
ц7
Ц8
д9
Д10
е11
Е12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
P
ъ0
а1
б2
ц3
д4
е5"
trackable_list_wrapper
P
Ъ0
А1
Б2
Ц3
Д4
Е5"
trackable_list_wrapper
┐2╝╣
«▓ф
FullArgSpec2
args*џ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
╩BК
#__inference_signature_wrapper_44576input_2"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
СBр
0__inference_zero_padding2d_1_layer_call_fn_44699inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44705inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
┘Bо
%__inference_conv0_layer_call_fn_44714inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
@__inference_conv0_layer_call_and_return_conditional_losses_44724inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
УBт
#__inference_bn0_layer_call_fn_44737inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
УBт
#__inference_bn0_layer_call_fn_44750inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
>__inference_bn0_layer_call_and_return_conditional_losses_44768inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
>__inference_bn0_layer_call_and_return_conditional_losses_44786inputs"│
ф▓д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
ЯBП
,__inference_activation_1_layer_call_fn_44791inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
чBЭ
G__inference_activation_1_layer_call_and_return_conditional_losses_44796inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
ПB┌
)__inference_max_pool0_layer_call_fn_44801inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_max_pool0_layer_call_and_return_conditional_losses_44806inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
ПB┌
)__inference_max_pool1_layer_call_fn_44811inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_max_pool1_layer_call_and_return_conditional_losses_44816inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
ПB┌
)__inference_flatten_1_layer_call_fn_44821inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
D__inference_flatten_1_layer_call_and_return_conditional_losses_44827inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
оBМ
"__inference_fc_layer_call_fn_44836inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
=__inference_fc_layer_call_and_return_conditional_losses_44847inputs"б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
ф	variables
Ф	keras_api

гtotal

Гcount"
_tf_keras_metric
c
«	variables
»	keras_api

░total

▒count
▓
_fn_kwargs"
_tf_keras_metric
+:) 2Adam/m/conv0/kernel
+:) 2Adam/v/conv0/kernel
: 2Adam/m/conv0/bias
: 2Adam/v/conv0/bias
: 2Adam/m/bn0/gamma
: 2Adam/v/bn0/gamma
: 2Adam/m/bn0/beta
: 2Adam/v/bn0/beta
!:	ђ12Adam/m/fc/kernel
!:	ђ12Adam/v/fc/kernel
:2Adam/m/fc/bias
:2Adam/v/fc/bias
0
г0
Г1"
trackable_list_wrapper
.
ф	variables"
_generic_user_object
:  (2total
:  (2count
0
░0
▒1"
trackable_list_wrapper
.
«	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╬
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44523| )*+,KLBб?
8б5
+і(
input_2         ­­
p 

 
ф ",б)
"і
tensor_0         
џ ╬
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44551| )*+,KLBб?
8б5
+і(
input_2         ­­
p

 
ф ",б)
"і
tensor_0         
џ ═
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44656{ )*+,KLAб>
7б4
*і'
inputs         ­­
p 

 
ф ",б)
"і
tensor_0         
џ ═
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44694{ )*+,KLAб>
7б4
*і'
inputs         ­­
p

 
ф ",б)
"і
tensor_0         
џ е
3__inference_BrainDetectionModel_layer_call_fn_44372q )*+,KLBб?
8б5
+і(
input_2         ­­
p 

 
ф "!і
unknown         е
3__inference_BrainDetectionModel_layer_call_fn_44495q )*+,KLBб?
8б5
+і(
input_2         ­­
p

 
ф "!і
unknown         Д
3__inference_BrainDetectionModel_layer_call_fn_44597p )*+,KLAб>
7б4
*і'
inputs         ­­
p 

 
ф "!і
unknown         Д
3__inference_BrainDetectionModel_layer_call_fn_44618p )*+,KLAб>
7б4
*і'
inputs         ­­
p

 
ф "!і
unknown         Њ
 __inference__wrapped_model_44184o )*+,KL:б7
0б-
+і(
input_2         ­­
ф "'ф$
"
fcі
fc         Й
G__inference_activation_1_layer_call_and_return_conditional_losses_44796s9б6
/б,
*і'
inputs         ЬЬ 
ф "6б3
,і)
tensor_0         ЬЬ 
џ ў
,__inference_activation_1_layer_call_fn_44791h9б6
/б,
*і'
inputs         ЬЬ 
ф "+і(
unknown         ЬЬ Я
>__inference_bn0_layer_call_and_return_conditional_losses_44768Ю)*+,MбJ
Cб@
:і7
inputs+                            
p 
ф "FбC
<і9
tensor_0+                            
џ Я
>__inference_bn0_layer_call_and_return_conditional_losses_44786Ю)*+,MбJ
Cб@
:і7
inputs+                            
p
ф "FбC
<і9
tensor_0+                            
џ ║
#__inference_bn0_layer_call_fn_44737њ)*+,MбJ
Cб@
:і7
inputs+                            
p 
ф ";і8
unknown+                            ║
#__inference_bn0_layer_call_fn_44750њ)*+,MбJ
Cб@
:і7
inputs+                            
p
ф ";і8
unknown+                            ╗
@__inference_conv0_layer_call_and_return_conditional_losses_44724w 9б6
/б,
*і'
inputs         ЗЗ
ф "6б3
,і)
tensor_0         ЬЬ 
џ Ћ
%__inference_conv0_layer_call_fn_44714l 9б6
/б,
*і'
inputs         ЗЗ
ф "+і(
unknown         ЬЬ Ц
=__inference_fc_layer_call_and_return_conditional_losses_44847dKL0б-
&б#
!і
inputs         ђ1
ф ",б)
"і
tensor_0         
џ 
"__inference_fc_layer_call_fn_44836YKL0б-
&б#
!і
inputs         ђ1
ф "!і
unknown         ░
D__inference_flatten_1_layer_call_and_return_conditional_losses_44827h7б4
-б*
(і%
inputs          
ф "-б*
#і 
tensor_0         ђ1
џ і
)__inference_flatten_1_layer_call_fn_44821]7б4
-б*
(і%
inputs          
ф ""і
unknown         ђ1Ь
D__inference_max_pool0_layer_call_and_return_conditional_losses_44806ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_max_pool0_layer_call_fn_44801џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ь
D__inference_max_pool1_layer_call_and_return_conditional_losses_44816ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_max_pool1_layer_call_fn_44811џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    А
#__inference_signature_wrapper_44576z )*+,KLEбB
б 
;ф8
6
input_2+і(
input_2         ­­"'ф$
"
fcі
fc         ш
K__inference_zero_padding2d_1_layer_call_and_return_conditional_losses_44705ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ¤
0__inference_zero_padding2d_1_layer_call_fn_44699џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    