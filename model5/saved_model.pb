ΛΗ.
Χ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Α
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
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
φ
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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68θΖ-
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ό*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	Ό*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
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

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	π*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	π*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Όπ*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
Όπ*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:π*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:π*
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
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ό*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	Ό*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	π*-
shared_nameAdam/lstm/lstm_cell/kernel/m

0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	π*
dtype0
ͺ
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Όπ*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
£
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
Όπ*
dtype0

Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:π*+
shared_nameAdam/lstm/lstm_cell/bias/m

.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:π*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ό*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	Ό*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	π*-
shared_nameAdam/lstm/lstm_cell/kernel/v

0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	π*
dtype0
ͺ
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Όπ*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
£
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
Όπ*
dtype0

Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:π*+
shared_nameAdam/lstm/lstm_cell/bias/v

.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:π*
dtype0

NoOpNoOp
’1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*έ0
valueΣ0BΠ0 BΙ0

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
Α
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

iter

beta_1

beta_2
	 decay
!learning_ratem_m`"ma#mb$mcvdve"vf#vg$vh*
'
"0
#1
$2
3
4*
'
"0
#1
$2
3
4*
* 
°
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

*serving_default* 
γ
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses*
* 

"0
#1
$2*

"0
#1
$2*
* 


3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
'
>0
?1
@2
A3
B4*
* 
* 
* 
* 

"0
#1
$2*

"0
#1
$2*
* 

Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	Htotal
	Icount
J	variables
K	keras_api*
H
	Ltotal
	Mcount
N
_fn_kwargs
O	variables
P	keras_api*
H
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api*
8
	Vtotal
	Wcount
X	variables
Y	keras_api*
H
	Ztotal
	[count
\
_fn_kwargs
]	variables
^	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

H0
I1*

J	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

L0
M1*

O	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Q0
R1*

T	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*

V0
W1*

X	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Z0
[1*

]	variables*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
©
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_11996
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¦
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_13908
Ι
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4Adam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v**
Tin#
!2*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_14008Η,
ΩΒ
ρ
9__inference___backward_gpu_lstm_with_fallback_13149_13325
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όe
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:?????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:?????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Έ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:?????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όϊ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:?????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:?????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:πr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*τ
_input_shapesβ
ί:?????????Ό:?????????Ό:?????????Ό:?????????Ό: :?????????Ό::?????????Ό:?????????Ό::?????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_6c5f272a-1ea9-492b-8a91-92dbd33ad853*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_13324*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :2.
,
_output_shapes
:?????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
::1
-
+
_output_shapes
:?????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ΩΒ
ρ
9__inference___backward_gpu_lstm_with_fallback_13578_13754
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όe
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:?????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:?????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Έ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:?????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όϊ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:?????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:?????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:πr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*τ
_input_shapesβ
ί:?????????Ό:?????????Ό:?????????Ό:?????????Ό: :?????????Ό::?????????Ό:?????????Ό::?????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_75c3aff9-8b02-4ddc-bed2-897fdd4412ab*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_13753*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :2.
,
_output_shapes
:?????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
::1
-
+
_output_shapes
:?????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ΜN
’
%__forward_gpu_lstm_with_fallback_9974

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ϊ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_4f1c9b1f-bdee-4f0b-9fea-2375890a9b15*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_9799_9975*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
½:
Ώ
__inference_standard_lstm_11223

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_11138*
condR
while_cond_11137*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Γ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:?????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:?????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_9dd57f1c-ee9b-4f91-865c-d91ab70d9f59*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
½:
Ώ
__inference_standard_lstm_10146

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_10061*
condR
while_cond_10060*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Γ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:?????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:?????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_f716d15d-dc17-4a78-9b0f-5252a5afbdd2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
 
Ί
?__inference_lstm_layer_call_and_return_conditional_losses_13756

inputs/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:π΅
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:?????????Ό:?????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_13481n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:?????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Ν

%__inference_dense_layer_call_fn_13765

inputs
unknown:	Ό
	unknown_0:
identity’StatefulPartitionedCallΩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10459s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????Ό: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????Ό
 
_user_specified_nameinputs
ΔB
Λ
(__inference_gpu_lstm_with_fallback_13577

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΝ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_75c3aff9-8b02-4ddc-bed2-897fdd4412ab*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ΰ8

E__inference_sequential_layer_call_and_return_conditional_losses_11524

inputs4
!lstm_read_readvariableop_resource:	π7
#lstm_read_1_readvariableop_resource:
Όπ2
#lstm_read_2_readvariableop_resource:	π:
'dense_tensordot_readvariableop_resource:	Ό3
%dense_biasadd_readvariableop_resource:
identity’dense/BiasAdd/ReadVariableOp’dense/Tensordot/ReadVariableOp’lstm/Read/ReadVariableOp’lstm/Read_1/ReadVariableOp’lstm/Read_2/ReadVariableOp@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:κ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ό
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌX
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ό
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Ό{
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	π*
dtype0e
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	π
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0j
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπ{
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:π*
dtype0e
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:πΣ
lstm/PartitionedCallPartitionedCallinputslstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:?????????Ό:?????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_11223
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	Ό*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense/Tensordot/ShapeShapelstm/PartitionedCall:output:1*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Σ
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Χ
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΄
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposelstm/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????Ό
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ώ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????i
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????Ϋ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
’C
Ω
__inference__wrapped_model_9104

lstm_input?
,sequential_lstm_read_readvariableop_resource:	πB
.sequential_lstm_read_1_readvariableop_resource:
Όπ=
.sequential_lstm_read_2_readvariableop_resource:	πE
2sequential_dense_tensordot_readvariableop_resource:	Ό>
0sequential_dense_biasadd_readvariableop_resource:
identity’'sequential/dense/BiasAdd/ReadVariableOp’)sequential/dense/Tensordot/ReadVariableOp’#sequential/lstm/Read/ReadVariableOp’%sequential/lstm/Read_1/ReadVariableOp’%sequential/lstm/Read_2/ReadVariableOpO
sequential/lstm/ShapeShape
lstm_input*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:‘
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ό£
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:?????????Όc
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ό§
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Ό
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource*
_output_shapes
:	π*
dtype0{
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	π
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπ
%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes	
:π*
dtype0{
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:π
sequential/lstm/PartitionedCallPartitionedCall
lstm_inputsequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:?????????Ό:?????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_8803
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	Ό*
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       x
 sequential/dense/Tensordot/ShapeShape(sequential/lstm/PartitionedCall:output:1*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ‘
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: §
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΰ
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¬
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ύ
$sequential/dense/Tensordot/transpose	Transpose(sequential/lstm/PartitionedCall:output:1*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????Ό½
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????½
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : λ
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ά
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0―
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????t
IdentityIdentity!sequential/dense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp:W S
+
_output_shapes
:?????????
$
_user_specified_name
lstm_input
	
Ό
while_cond_10060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_10060___redundant_placeholder03
/while_while_cond_10060___redundant_placeholder13
/while_while_cond_10060___redundant_placeholder23
/while_while_cond_10060___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
π:
Ύ
__inference_standard_lstm_9262

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Έ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_9177*
condR
while_cond_9176*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Μ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:??????????????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:??????????????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_80635cd0-a272-46b6-9dc0-7610effbfbb1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
½:
Ώ
__inference_standard_lstm_13052

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_12967*
condR
while_cond_12966*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Γ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:?????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:?????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_6c5f272a-1ea9-492b-8a91-92dbd33ad853*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ΔB
Λ
(__inference_gpu_lstm_with_fallback_11774

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΝ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_96a6ec4a-8e00-41c9-9e2b-13f60de3ed9a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ε(
Ξ
while_body_10571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
ΩΒ
ρ
9__inference___backward_gpu_lstm_with_fallback_10753_10929
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όe
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:?????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:?????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Έ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:?????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όϊ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:?????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:?????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:πr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*τ
_input_shapesβ
ί:?????????Ό:?????????Ό:?????????Ό:?????????Ό: :?????????Ό::?????????Ό:?????????Ό::?????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_fea96d35-776b-4a67-a5c4-c3e587cfd2b4*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_10928*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :2.
,
_output_shapes
:?????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
::1
-
+
_output_shapes
:?????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ΩΒ
ρ
9__inference___backward_gpu_lstm_with_fallback_11775_11951
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όe
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:?????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:?????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Έ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:?????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όϊ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:?????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:?????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:πr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*τ
_input_shapesβ
ί:?????????Ό:?????????Ό:?????????Ό:?????????Ό: :?????????Ό::?????????Ό:?????????Ό::?????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_96a6ec4a-8e00-41c9-9e2b-13f60de3ed9a*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_11950*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :2.
,
_output_shapes
:?????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
::1
-
+
_output_shapes
:?????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Ό
E__inference_sequential_layer_call_and_return_conditional_losses_11017

lstm_input

lstm_11004:	π

lstm_11006:
Όπ

lstm_11008:	π
dense_11011:	Ό
dense_11013:
identity’dense/StatefulPartitionedCall’lstm/StatefulPartitionedCallτ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input
lstm_11004
lstm_11006
lstm_11008*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10421
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_11011dense_11013*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10459y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
lstm_input
	
·
while_cond_9616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_9616___redundant_placeholder02
.while_while_cond_9616___redundant_placeholder12
.while_while_cond_9616___redundant_placeholder22
.while_while_cond_9616___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ε(
Ξ
while_body_11593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
N
’
%__forward_gpu_lstm_with_fallback_9075

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ρ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_05a8a580-87ec-4bb6-b516-24172bb0820c*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_8900_9076*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
Β
Ή
>__inference_lstm_layer_call_and_return_conditional_losses_9537

inputs/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:π½
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_9262w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:??????????????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
	
Ό
while_cond_11137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_11137___redundant_placeholder03
/while_while_cond_11137___redundant_placeholder13
/while_while_cond_11137___redundant_placeholder23
/while_while_cond_11137___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Β
Ή
>__inference_lstm_layer_call_and_return_conditional_losses_9977

inputs/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:π½
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_9702w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:??????????????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ε(
Ξ
while_body_13396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
ΔB
Λ
(__inference_gpu_lstm_with_fallback_13148

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΝ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_6c5f272a-1ea9-492b-8a91-92dbd33ad853*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
‘N
£
&__forward_gpu_lstm_with_fallback_10418

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ρ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_f716d15d-dc17-4a78-9b0f-5252a5afbdd2*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_10243_10419*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
σ:
Ώ
__inference_standard_lstm_12623

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_12538*
condR
while_cond_12537*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Μ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:??????????????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:??????????????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_9568138a-a8f9-49c3-8a0f-cdb278ceddcd*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
	
Ό
while_cond_13395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_13395___redundant_placeholder03
/while_while_cond_13395___redundant_placeholder13
/while_while_cond_13395___redundant_placeholder23
/while_while_cond_13395___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ϊB
Κ
'__inference_gpu_lstm_with_fallback_9358

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΦ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_80635cd0-a272-46b6-9dc0-7610effbfbb1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
 
Ί
?__inference_lstm_layer_call_and_return_conditional_losses_10931

inputs/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:π΅
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:?????????Ό:?????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_10656n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:?????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
‘N
£
&__forward_gpu_lstm_with_fallback_11950

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ρ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_96a6ec4a-8e00-41c9-9e2b-13f60de3ed9a*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_11775_11951*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ε(
Ξ
while_body_12538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
ΟN
£
&__forward_gpu_lstm_with_fallback_12895

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ϊ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_9568138a-a8f9-49c3-8a0f-cdb278ceddcd*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_12720_12896*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
	
·
while_cond_9176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_9176___redundant_placeholder02
.while_while_cond_9176___redundant_placeholder12
.while_while_cond_9176___redundant_placeholder22
.while_while_cond_9176___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ΔB
Λ
(__inference_gpu_lstm_with_fallback_11319

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΝ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_9dd57f1c-ee9b-4f91-865c-d91ab70d9f59*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
Μ
Ό
?__inference_lstm_layer_call_and_return_conditional_losses_12898
inputs_0/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:πΐ
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_12623w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:??????????????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
ε(
Ξ
while_body_12967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
‘N
£
&__forward_gpu_lstm_with_fallback_11495

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ρ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_9dd57f1c-ee9b-4f91-865c-d91ab70d9f59*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_11320_11496*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ε
σ
*__inference_sequential_layer_call_fn_11001

lstm_input
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
	unknown_2:	Ό
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10973s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
lstm_input
£
΄
$__inference_lstm_layer_call_fn_12018
inputs_0
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
identity’StatefulPartitionedCallπ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:??????????????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_9977}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:??????????????????Ό`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
	
Ό
while_cond_11592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_11592___redundant_placeholder03
/while_while_cond_11592___redundant_placeholder13
/while_while_cond_11592___redundant_placeholder23
/while_while_cond_11592___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ΛΓ
ο
7__inference___backward_gpu_lstm_with_fallback_9799_9975
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:??????????????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:«
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:??????????????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Α
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:??????????????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Ό
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:??????????????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:??????????????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:π{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesύ
ϊ:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: :??????????????????Ό::?????????Ό:?????????Ό::??????????????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_4f1c9b1f-bdee-4f0b-9fea-2375890a9b15*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_9974*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:;7
5
_output_shapes#
!:??????????????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :;7
5
_output_shapes#
!:??????????????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Έ
μ
#__inference_signature_wrapper_11996

lstm_input
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
	unknown_2:	Ό
	unknown_3:
identity’StatefulPartitionedCallγ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_9104s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
lstm_input
ΔB
Λ
(__inference_gpu_lstm_with_fallback_10242

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΝ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_f716d15d-dc17-4a78-9b0f-5252a5afbdd2*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ϊB
Κ
'__inference_gpu_lstm_with_fallback_9798

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΦ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_4f1c9b1f-bdee-4f0b-9fea-2375890a9b15*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
Π>
£
__inference__traced_save_13908
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Υ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ώ
valueτBρB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH«
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*Δ
_input_shapes²
―: :	Ό:: : : : : :	π:
Όπ:π: : : : : : : : : : :	Ό::	π:
Όπ:π:	Ό::	π:
Όπ:π: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Ό: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ό: 

_output_shapes
::%!

_output_shapes
:	π:&"
 
_output_shapes
:
Όπ:!

_output_shapes	
:π:%!

_output_shapes
:	Ό: 

_output_shapes
::%!

_output_shapes
:	π:&"
 
_output_shapes
:
Όπ:!

_output_shapes	
:π:

_output_shapes
: 
δ(
Ν
while_body_8718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
δ(
Ν
while_body_9177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
σ:
Ώ
__inference_standard_lstm_12194

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_12109*
condR
while_cond_12108*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Μ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:??????????????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:??????????????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_045e0a78-55a7-455a-a9ac-744a9dfbf9d8*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ε(
Ξ
while_body_12109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
½:
Ώ
__inference_standard_lstm_13481

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_13396*
condR
while_cond_13395*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Γ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:?????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:?????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_75c3aff9-8b02-4ddc-bed2-897fdd4412ab*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
	
Ό
while_cond_12537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_12537___redundant_placeholder03
/while_while_cond_12537___redundant_placeholder13
/while_while_cond_12537___redundant_placeholder23
/while_while_cond_12537___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ΩΒ
ρ
9__inference___backward_gpu_lstm_with_fallback_10243_10419
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όe
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:?????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:?????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Έ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:?????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όϊ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:?????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:?????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:πr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*τ
_input_shapesβ
ί:?????????Ό:?????????Ό:?????????Ό:?????????Ό: :?????????Ό::?????????Ό:?????????Ό::?????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_f716d15d-dc17-4a78-9b0f-5252a5afbdd2*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_10418*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :2.
,
_output_shapes
:?????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
::1
-
+
_output_shapes
:?????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ε(
Ξ
while_body_11138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
π:
Ύ
__inference_standard_lstm_9702

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Έ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_9617*
condR
while_cond_9616*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Μ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:??????????????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:??????????????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_4f1c9b1f-bdee-4f0b-9fea-2375890a9b15*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ΟN
£
&__forward_gpu_lstm_with_fallback_12466

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ϊ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_045e0a78-55a7-455a-a9ac-744a9dfbf9d8*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_12291_12467*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ϊ
²
$__inference_lstm_layer_call_fn_12040

inputs
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
identity’StatefulPartitionedCallζ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10931t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????Ό`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs

Έ
E__inference_sequential_layer_call_and_return_conditional_losses_10466

inputs

lstm_10422:	π

lstm_10424:
Όπ

lstm_10426:	π
dense_10460:	Ό
dense_10462:
identity’dense/StatefulPartitionedCall’lstm/StatefulPartitionedCallπ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs
lstm_10422
lstm_10424
lstm_10426*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10421
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_10460dense_10462*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10459y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
 
Ί
?__inference_lstm_layer_call_and_return_conditional_losses_10421

inputs/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:π΅
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:?????????Ό:?????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_10146n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:?????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
‘N
£
&__forward_gpu_lstm_with_fallback_13324

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ρ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_6c5f272a-1ea9-492b-8a91-92dbd33ad853*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_13149_13325*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
Ω
ο
*__inference_sequential_layer_call_fn_11054

inputs
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
	unknown_2:	Ό
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10466s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ΦΒ
ο
7__inference___backward_gpu_lstm_with_fallback_8900_9076
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όe
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:?????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:?????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Έ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:?????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όϊ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:?????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:?????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:πr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*τ
_input_shapesβ
ί:?????????Ό:?????????Ό:?????????Ό:?????????Ό: :?????????Ό::?????????Ό:?????????Ό::?????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_05a8a580-87ec-4bb6-b516-24172bb0820c*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_9075*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :2.
,
_output_shapes
:?????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
::1
-
+
_output_shapes
:?????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
½:
Ώ
__inference_standard_lstm_10656

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_10571*
condR
while_cond_10570*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Γ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:?????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:?????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_fea96d35-776b-4a67-a5c4-c3e587cfd2b4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
£
΄
$__inference_lstm_layer_call_fn_12007
inputs_0
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
identity’StatefulPartitionedCallπ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:??????????????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_9537}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:??????????????????Ό`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
	
·
while_cond_8717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_8717___redundant_placeholder02
.while_while_cond_8717___redundant_placeholder12
.while_while_cond_8717___redundant_placeholder22
.while_while_cond_8717___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
½:
Ώ
__inference_standard_lstm_11678

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ί
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_11593*
condR
while_cond_11592*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Γ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:?????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:?????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_96a6ec4a-8e00-41c9-9e2b-13f60de3ed9a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ε
σ
*__inference_sequential_layer_call_fn_10479

lstm_input
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
	unknown_2:	Ό
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10466s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
lstm_input
ΓB
Κ
'__inference_gpu_lstm_with_fallback_8899

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΝ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_05a8a580-87ec-4bb6-b516-24172bb0820c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias

Έ
E__inference_sequential_layer_call_and_return_conditional_losses_10973

inputs

lstm_10960:	π

lstm_10962:
Όπ

lstm_10964:	π
dense_10967:	Ό
dense_10969:
identity’dense/StatefulPartitionedCall’lstm/StatefulPartitionedCallπ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs
lstm_10960
lstm_10962
lstm_10964*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10931
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_10967dense_10969*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10459y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ΜN
’
%__forward_gpu_lstm_with_fallback_9534

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ϊ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_80635cd0-a272-46b6-9dc0-7610effbfbb1*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_9359_9535*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
Μ
ψ
@__inference_dense_layer_call_and_return_conditional_losses_13795

inputs4
!tensordot_readvariableop_resource:	Ό-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	Ό*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ώ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????Ό
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????Ό: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????Ό
 
_user_specified_nameinputs
ϋB
Λ
(__inference_gpu_lstm_with_fallback_12290

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΦ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_045e0a78-55a7-455a-a9ac-744a9dfbf9d8*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ϊ
²
$__inference_lstm_layer_call_fn_12029

inputs
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
identity’StatefulPartitionedCallζ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10421t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????Ό`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
‘N
£
&__forward_gpu_lstm_with_fallback_13753

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ρ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_75c3aff9-8b02-4ddc-bed2-897fdd4412ab*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_13578_13754*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ΩΒ
ρ
9__inference___backward_gpu_lstm_with_fallback_11320_11496
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όe
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:?????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:’
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*,
_output_shapes
:?????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Έ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:?????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όϊ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*,
_output_shapes
:?????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:?????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Π
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:πr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:?????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*τ
_input_shapesβ
ί:?????????Ό:?????????Ό:?????????Ό:?????????Ό: :?????????Ό::?????????Ό:?????????Ό::?????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_9dd57f1c-ee9b-4f91-865c-d91ab70d9f59*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_11495*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :2.
,
_output_shapes
:?????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
::1
-
+
_output_shapes
:?????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
 
Ί
?__inference_lstm_layer_call_and_return_conditional_losses_13327

inputs/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:π΅
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:?????????Ό:?????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_13052n

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:?????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs

Ό
E__inference_sequential_layer_call_and_return_conditional_losses_11033

lstm_input

lstm_11020:	π

lstm_11022:
Όπ

lstm_11024:	π
dense_11027:	Ό
dense_11029:
identity’dense/StatefulPartitionedCall’lstm/StatefulPartitionedCallτ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input
lstm_11020
lstm_11022
lstm_11024*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????Ό*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10931
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_11027dense_11029*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10459y
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:?????????
$
_user_specified_name
lstm_input
ΛΓ
ο
7__inference___backward_gpu_lstm_with_fallback_9359_9535
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:??????????????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:«
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:??????????????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Α
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:??????????????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Ό
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:??????????????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:??????????????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:π{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesύ
ϊ:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: :??????????????????Ό::?????????Ό:?????????Ό::??????????????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_80635cd0-a272-46b6-9dc0-7610effbfbb1*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_9534*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:;7
5
_output_shapes#
!:??????????????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :;7
5
_output_shapes#
!:??????????????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
Ό
while_cond_10570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_10570___redundant_placeholder03
/while_while_cond_10570___redundant_placeholder13
/while_while_cond_10570___redundant_placeholder23
/while_while_cond_10570___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ί:
Ύ
__inference_standard_lstm_8803

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:?????????π_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:?????????πe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:?????????πT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:?????????πQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ί
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:?????????ΌT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:?????????ΌO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:?????????ΌV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:?????????ΌU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:?????????ΌW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:?????????ΌL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:?????????ΌZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:?????????Όn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Ά
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Έ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_8718*
condR
while_cond_8717*e
output_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????Ό  Γ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:?????????Ό*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????Ό[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:?????????ΌY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:?????????ΌY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_05a8a580-87ec-4bb6-b516-24172bb0820c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
ΔB
Λ
(__inference_gpu_lstm_with_fallback_10752

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΝ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_fea96d35-776b-4a67-a5c4-c3e587cfd2b4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
‘N
£
&__forward_gpu_lstm_with_fallback_10928

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ρ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:?????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*,
_output_shapes
:?????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Ό^

Identity_1Identitytranspose_9:y:0*
T0*,
_output_shapes
:?????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:?????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_fea96d35-776b-4a67-a5c4-c3e587cfd2b4*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_10753_10929*
go_backwards( *

time_major( :S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
v
Ν
!__inference__traced_restore_14008
file_prefix0
assignvariableop_dense_kernel:	Ό+
assignvariableop_1_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: ;
(assignvariableop_7_lstm_lstm_cell_kernel:	πF
2assignvariableop_8_lstm_lstm_cell_recurrent_kernel:
Όπ5
&assignvariableop_9_lstm_lstm_cell_bias:	π#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: %
assignvariableop_14_total_2: %
assignvariableop_15_count_2: %
assignvariableop_16_total_3: %
assignvariableop_17_count_3: %
assignvariableop_18_total_4: %
assignvariableop_19_count_4: :
'assignvariableop_20_adam_dense_kernel_m:	Ό3
%assignvariableop_21_adam_dense_bias_m:C
0assignvariableop_22_adam_lstm_lstm_cell_kernel_m:	πN
:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_m:
Όπ=
.assignvariableop_24_adam_lstm_lstm_cell_bias_m:	π:
'assignvariableop_25_adam_dense_kernel_v:	Ό3
%assignvariableop_26_adam_dense_bias_v:C
0assignvariableop_27_adam_lstm_lstm_cell_kernel_v:	πN
:assignvariableop_28_adam_lstm_lstm_cell_recurrent_kernel_v:
Όπ=
.assignvariableop_29_adam_lstm_lstm_cell_bias_v:	π
identity_31’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9Ψ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ώ
valueτBρB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ί
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp(assignvariableop_7_lstm_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_8AssignVariableOp2assignvariableop_8_lstm_lstm_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp&assignvariableop_9_lstm_lstm_cell_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_3Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_3Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_4Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_4Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp%assignvariableop_21_adam_dense_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_lstm_lstm_cell_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_23AssignVariableOp:assignvariableop_23_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_lstm_lstm_cell_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:‘
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_lstm_lstm_cell_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_28AssignVariableOp:assignvariableop_28_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_lstm_lstm_cell_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 γ
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: Π
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
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
δ(
Ν
while_body_9617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
ΰ8

E__inference_sequential_layer_call_and_return_conditional_losses_11979

inputs4
!lstm_read_readvariableop_resource:	π7
#lstm_read_1_readvariableop_resource:
Όπ2
#lstm_read_2_readvariableop_resource:	π:
'dense_tensordot_readvariableop_resource:	Ό3
%dense_biasadd_readvariableop_resource:
identity’dense/BiasAdd/ReadVariableOp’dense/Tensordot/ReadVariableOp’lstm/Read/ReadVariableOp’lstm/Read_1/ReadVariableOp’lstm/Read_2/ReadVariableOp@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:κ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ό
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌX
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ό
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Ό{
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	π*
dtype0e
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	π
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0j
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπ{
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:π*
dtype0e
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:πΣ
lstm/PartitionedCallPartitionedCallinputslstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:?????????Ό:?????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_11678
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	Ό*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense/Tensordot/ShapeShapelstm/PartitionedCall:output:1*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Σ
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Χ
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΄
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposelstm/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????Ό
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ώ
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????i
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????Ϋ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ϋB
Λ
(__inference_gpu_lstm_with_fallback_12719

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:?????????ΌR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:?????????ΌQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	Ό:	Ό:	Ό:	Ό*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ΌΌ:
ΌΌ:
ΌΌ:
ΌΌ*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:πU
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:πM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ΰ+S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ₯
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Ό:Ό:Ό:Ό:Ό:Ό:Ό:Ό*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ΌY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	Ό[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ΘLa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:τa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ΌΌ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:τ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Ό\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Ό]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ΌO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ΐ?zΦ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:??????????????????Ό:?????????Ό:?????????Ό:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ζ
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:?????????Ό*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:??????????????????Όq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:?????????Ό*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:?????????Όg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:??????????????????Ό[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:?????????Ό]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:?????????ΌI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:??????????????????:?????????Ό:?????????Ό:	π:
Όπ:π*=
api_implements+)lstm_9568138a-a8f9-49c3-8a0f-cdb278ceddcd*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_h:PL
(
_output_shapes
:?????????Ό
 
_user_specified_nameinit_c:GC

_output_shapes
:	π
 
_user_specified_namekernel:RN
 
_output_shapes
:
Όπ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:π

_user_specified_namebias
Μ
Ό
?__inference_lstm_layer_call_and_return_conditional_losses_12469
inputs_0/
read_readvariableop_resource:	π2
read_1_readvariableop_resource:
Όπ-
read_2_readvariableop_resource:	π

identity_3’Read/ReadVariableOp’Read_1/ReadVariableOp’Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:?????????ΌS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Όw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:?????????Όq
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	π*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	πv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
Όπ*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
Όπq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:π*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:πΐ
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference_standard_lstm_12194w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:??????????????????Ό
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
Μ
ψ
@__inference_dense_layer_call_and_return_conditional_losses_10459

inputs4
!tensordot_readvariableop_resource:	Ό-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	Ό*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ώ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????Ό
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????Ό: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????Ό
 
_user_specified_nameinputs
ΞΓ
ρ
9__inference___backward_gpu_lstm_with_fallback_12720_12896
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:??????????????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:«
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:??????????????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Α
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:??????????????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Ό
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:??????????????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:??????????????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:π{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesύ
ϊ:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: :??????????????????Ό::?????????Ό:?????????Ό::??????????????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_9568138a-a8f9-49c3-8a0f-cdb278ceddcd*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_12895*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:;7
5
_output_shapes#
!:??????????????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :;7
5
_output_shapes#
!:??????????????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ω
ο
*__inference_sequential_layer_call_fn_11069

inputs
unknown:	π
	unknown_0:
Όπ
	unknown_1:	π
	unknown_2:	Ό
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10973s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ΞΓ
ρ
9__inference___backward_gpu_lstm_with_fallback_12291_12467
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:?????????Όn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:??????????????????Όa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:?????????Όa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:?????????ΌO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:«
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:??????????????????Ό*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:Α
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:??????????????????Όq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:₯
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Όu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:?????????Ό
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:??????????????????Όc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:??????????????????:?????????Ό:?????????Ό:ΐ?z
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ω
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ζ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Όy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Κ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:?????????Ό^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ΘLj
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ΘLk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:τk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:τj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Όj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Όk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Όψ
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::μ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ΘLπ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ΘLρ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:τρ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:τπ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:Όπ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Όσ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Όm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ’
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό     ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	Όo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Ό  Ό  ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ΌΌi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Όi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό€
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Όj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ό§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:Ό
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:Ά
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Έ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Έ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Έ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	Ό
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:Ή
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:Ή
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:Ή
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:Ή
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ΌΌη
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ΰ+―
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	πΆ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
Όπ\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:πh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:πΚ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:πΦ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:π{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :??????????????????u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:?????????Όf

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	πi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
Όπd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:π"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesύ
ϊ:?????????Ό:??????????????????Ό:?????????Ό:?????????Ό: :??????????????????Ό::?????????Ό:?????????Ό::??????????????????:?????????Ό:?????????Ό:ΐ?z::?????????Ό:?????????Ό: ::::::::: : : : *=
api_implements+)lstm_045e0a78-55a7-455a-a9ac-744a9dfbf9d8*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_12466*
go_backwards( *

time_major( :. *
(
_output_shapes
:?????????Ό:;7
5
_output_shapes#
!:??????????????????Ό:.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :;7
5
_output_shapes#
!:??????????????????Ό: 

_output_shapes
::2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:	

_output_shapes
:::
6
4
_output_shapes"
 :??????????????????:2.
,
_output_shapes
:?????????Ό:2.
,
_output_shapes
:?????????Ό:"

_output_shapes

:ΐ?z: 

_output_shapes
::.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ε(
Ξ
while_body_10061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:?????????π
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:?????????πw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:?????????πp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:?????????πW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Μ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:?????????Ό:?????????Ό:?????????Ό:?????????Ό*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:?????????Όm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:?????????Ό[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:?????????Όh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:?????????Όg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:?????????Όc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:?????????ΌX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:?????????Όl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:?????????ΌΈ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:ιθ?O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :ιθ?`
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:?????????Ό`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:?????????Ό"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :?????????Ό:?????????Ό: : :	π:
Όπ:π: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	π:&	"
 
_output_shapes
:
Όπ:!


_output_shapes	
:π
	
Ό
while_cond_12108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_12108___redundant_placeholder03
/while_while_cond_12108___redundant_placeholder13
/while_while_cond_12108___redundant_placeholder23
/while_while_cond_12108___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
	
Ό
while_cond_12966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_12966___redundant_placeholder03
/while_while_cond_12966___redundant_placeholder13
/while_while_cond_12966___redundant_placeholder23
/while_while_cond_12966___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :?????????Ό:?????????Ό: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:?????????Ό:.*
(
_output_shapes
:?????????Ό:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ά
serving_default’
E

lstm_input7
serving_default_lstm_input:0?????????=
dense4
StatefulPartitionedCall:0?????????tensorflow/serving/predict:π_
΄
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
Ϊ
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
­
iter

beta_1

beta_2
	 decay
!learning_ratem_m`"ma#mb$mcvdve"vf#vg$vh"
	optimizer
C
"0
#1
$2
3
4"
trackable_list_wrapper
C
"0
#1
$2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
φ2σ
*__inference_sequential_layer_call_fn_10479
*__inference_sequential_layer_call_fn_11054
*__inference_sequential_layer_call_fn_11069
*__inference_sequential_layer_call_fn_11001ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
β2ί
E__inference_sequential_layer_call_and_return_conditional_losses_11524
E__inference_sequential_layer_call_and_return_conditional_losses_11979
E__inference_sequential_layer_call_and_return_conditional_losses_11017
E__inference_sequential_layer_call_and_return_conditional_losses_11033ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΝBΚ
__inference__wrapped_model_9104
lstm_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
,
*serving_default"
signature_map
ψ
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
Ή

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
σ2π
$__inference_lstm_layer_call_fn_12007
$__inference_lstm_layer_call_fn_12018
$__inference_lstm_layer_call_fn_12029
$__inference_lstm_layer_call_fn_12040Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ί2ά
?__inference_lstm_layer_call_and_return_conditional_losses_12469
?__inference_lstm_layer_call_and_return_conditional_losses_12898
?__inference_lstm_layer_call_and_return_conditional_losses_13327
?__inference_lstm_layer_call_and_return_conditional_losses_13756Υ
Μ²Θ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
:	Ό2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ο2Μ
%__inference_dense_layer_call_fn_13765’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
κ2η
@__inference_dense_layer_call_and_return_conditional_losses_13795’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	π2lstm/lstm_cell/kernel
3:1
Όπ2lstm/lstm_cell/recurrent_kernel
": π2lstm/lstm_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
C
>0
?1
@2
A3
B4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΝBΚ
#__inference_signature_wrapper_11996
lstm_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Δ2ΑΎ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Δ2ΑΎ
΅²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Htotal
	Icount
J	variables
K	keras_api"
_tf_keras_metric
^
	Ltotal
	Mcount
N
_fn_kwargs
O	variables
P	keras_api"
_tf_keras_metric
^
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api"
_tf_keras_metric
N
	Vtotal
	Wcount
X	variables
Y	keras_api"
_tf_keras_metric
^
	Ztotal
	[count
\
_fn_kwargs
]	variables
^	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
H0
I1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
:  (2total
:  (2count
.
V0
W1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Z0
[1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
$:"	Ό2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	π2Adam/lstm/lstm_cell/kernel/m
8:6
Όπ2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%π2Adam/lstm/lstm_cell/bias/m
$:"	Ό2Adam/dense/kernel/v
:2Adam/dense/bias/v
-:+	π2Adam/lstm/lstm_cell/kernel/v
8:6
Όπ2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%π2Adam/lstm/lstm_cell/bias/v
__inference__wrapped_model_9104s"#$7’4
-’*
(%

lstm_input?????????
ͺ "1ͺ.
,
dense# 
dense?????????©
@__inference_dense_layer_call_and_return_conditional_losses_13795e4’1
*’'
%"
inputs?????????Ό
ͺ ")’&

0?????????
 
%__inference_dense_layer_call_fn_13765X4’1
*’'
%"
inputs?????????Ό
ͺ "?????????Ο
?__inference_lstm_layer_call_and_return_conditional_losses_12469"#$O’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "3’0
)&
0??????????????????Ό
 Ο
?__inference_lstm_layer_call_and_return_conditional_losses_12898"#$O’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "3’0
)&
0??????????????????Ό
 ΅
?__inference_lstm_layer_call_and_return_conditional_losses_13327r"#$?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "*’'
 
0?????????Ό
 ΅
?__inference_lstm_layer_call_and_return_conditional_losses_13756r"#$?’<
5’2
$!
inputs?????????

 
p

 
ͺ "*’'
 
0?????????Ό
 ¦
$__inference_lstm_layer_call_fn_12007~"#$O’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "&#??????????????????Ό¦
$__inference_lstm_layer_call_fn_12018~"#$O’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "&#??????????????????Ό
$__inference_lstm_layer_call_fn_12029e"#$?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "?????????Ό
$__inference_lstm_layer_call_fn_12040e"#$?’<
5’2
$!
inputs?????????

 
p

 
ͺ "?????????ΌΌ
E__inference_sequential_layer_call_and_return_conditional_losses_11017s"#$?’<
5’2
(%

lstm_input?????????
p 

 
ͺ ")’&

0?????????
 Ό
E__inference_sequential_layer_call_and_return_conditional_losses_11033s"#$?’<
5’2
(%

lstm_input?????????
p

 
ͺ ")’&

0?????????
 Έ
E__inference_sequential_layer_call_and_return_conditional_losses_11524o"#$;’8
1’.
$!
inputs?????????
p 

 
ͺ ")’&

0?????????
 Έ
E__inference_sequential_layer_call_and_return_conditional_losses_11979o"#$;’8
1’.
$!
inputs?????????
p

 
ͺ ")’&

0?????????
 
*__inference_sequential_layer_call_fn_10479f"#$?’<
5’2
(%

lstm_input?????????
p 

 
ͺ "?????????
*__inference_sequential_layer_call_fn_11001f"#$?’<
5’2
(%

lstm_input?????????
p

 
ͺ "?????????
*__inference_sequential_layer_call_fn_11054b"#$;’8
1’.
$!
inputs?????????
p 

 
ͺ "?????????
*__inference_sequential_layer_call_fn_11069b"#$;’8
1’.
$!
inputs?????????
p

 
ͺ "?????????©
#__inference_signature_wrapper_11996"#$E’B
’ 
;ͺ8
6

lstm_input(%

lstm_input?????????"1ͺ.
,
dense# 
dense?????????