щ!
Ђі
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

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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
$
DisableCopyOnRead
resource
.
Identity

input"T
output"T"	
Ttype

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
А
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.15.02v2.15.0-0-g6887368d6d48ЌЙ
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
Њ
Adam/v/conv2d_19/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_19/bias/*
dtype0*
shape:*&
shared_nameAdam/v/conv2d_19/bias
{
)Adam/v/conv2d_19/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_19/bias*
_output_shapes
:*
dtype0
Њ
Adam/m/conv2d_19/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_19/bias/*
dtype0*
shape:*&
shared_nameAdam/m/conv2d_19/bias
{
)Adam/m/conv2d_19/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_19/bias*
_output_shapes
:*
dtype0
М
Adam/v/conv2d_19/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_19/kernel/*
dtype0*
shape:@*(
shared_nameAdam/v/conv2d_19/kernel

+Adam/v/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_19/kernel*&
_output_shapes
:@*
dtype0
М
Adam/m/conv2d_19/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_19/kernel/*
dtype0*
shape:@*(
shared_nameAdam/m/conv2d_19/kernel

+Adam/m/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_19/kernel*&
_output_shapes
:@*
dtype0
Њ
Adam/v/conv2d_18/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_18/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_18/bias
{
)Adam/v/conv2d_18/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_18/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_18/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_18/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_18/bias
{
)Adam/m/conv2d_18/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_18/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_18/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_18/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_18/kernel

+Adam/v/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_18/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_18/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_18/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_18/kernel

+Adam/m/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_18/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_17/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_17/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_17/bias
{
)Adam/v/conv2d_17/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_17/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_17/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_17/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_17/bias
{
)Adam/m/conv2d_17/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_17/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_17/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_17/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_17/kernel

+Adam/v/conv2d_17/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_17/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_17/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_17/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_17/kernel

+Adam/m/conv2d_17/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_17/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_16/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_16/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_16/bias
{
)Adam/v/conv2d_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_16/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_16/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_16/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_16/bias
{
)Adam/m/conv2d_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_16/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_16/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_16/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_16/kernel

+Adam/v/conv2d_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_16/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_16/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_16/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_16/kernel

+Adam/m/conv2d_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_16/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_15/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_15/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_15/bias
{
)Adam/v/conv2d_15/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_15/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_15/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_15/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_15/bias
{
)Adam/m/conv2d_15/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_15/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_15/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_15/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_15/kernel

+Adam/v/conv2d_15/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_15/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_15/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_15/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_15/kernel

+Adam/m/conv2d_15/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_15/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_14/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_14/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_14/bias
{
)Adam/v/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_14/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_14/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_14/bias
{
)Adam/m/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_14/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_14/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_14/kernel

+Adam/v/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_14/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_14/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_14/kernel

+Adam/m/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_13/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_13/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_13/bias
{
)Adam/v/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_13/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_13/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_13/bias
{
)Adam/m/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_13/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_13/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_13/kernel

+Adam/v/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_13/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_13/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_13/kernel

+Adam/m/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_12/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_12/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_12/bias
{
)Adam/v/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_12/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_12/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_12/bias
{
)Adam/m/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_12/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_12/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_12/kernel

+Adam/v/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_12/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_12/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_12/kernel

+Adam/m/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_11/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_11/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_11/bias
{
)Adam/v/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_11/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_11/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_11/bias
{
)Adam/m/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_11/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_11/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_11/kernel

+Adam/v/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_11/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_11/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_11/kernel

+Adam/m/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/kernel*&
_output_shapes
:@@*
dtype0
Њ
Adam/v/conv2d_10/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_10/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_10/bias
{
)Adam/v/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/bias*
_output_shapes
:@*
dtype0
Њ
Adam/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_10/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_10/bias
{
)Adam/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/bias*
_output_shapes
:@*
dtype0
М
Adam/v/conv2d_10/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_10/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_10/kernel

+Adam/v/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/kernel*&
_output_shapes
:@@*
dtype0
М
Adam/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_10/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_10/kernel

+Adam/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_9/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_9/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_9/bias
y
(Adam/v/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_9/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_9/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_9/bias
y
(Adam/m/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_9/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_9/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_9/kernel

*Adam/v/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_9/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_9/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_9/kernel

*Adam/m/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_8/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_8/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_8/bias
y
(Adam/v/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_8/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_8/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_8/bias
y
(Adam/m/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_8/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_8/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_8/kernel

*Adam/v/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_8/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_8/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_8/kernel

*Adam/m/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_7/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_7/bias
y
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_7/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_7/bias
y
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_7/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_7/kernel

*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_7/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_7/kernel

*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_6/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_6/bias
y
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_6/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_6/bias
y
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_6/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_6/kernel

*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_6/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_6/kernel

*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_5/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_5/bias
y
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_5/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_5/bias
y
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_5/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_5/kernel

*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_5/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_5/kernel

*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_4/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_4/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_4/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_4/kernel

*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_4/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_4/kernel

*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_3/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_3/bias
y
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_3/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_3/bias
y
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_3/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_3/kernel

*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_3/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_3/kernel

*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_2/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_2/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_2/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_2/kernel

*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_2/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_2/kernel

*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
:@@*
dtype0
Ї
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_1/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
:@*
dtype0
Ї
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_1/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
:@*
dtype0
Й
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_1/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/v/conv2d_1/kernel

*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
:@@*
dtype0
Й
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_1/kernel/*
dtype0*
shape:@@*'
shared_nameAdam/m/conv2d_1/kernel

*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
:@@*
dtype0
Ё
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/conv2d/bias/*
dtype0*
shape:@*#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
:@*
dtype0
Ё
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/conv2d/bias/*
dtype0*
shape:@*#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
:@*
dtype0
Г
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d/kernel/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d/kernel

(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
:@*
dtype0
Г
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d/kernel/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d/kernel

(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
_output_shapes
:@*
dtype0

learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0

	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

conv2d_19/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_19/bias/*
dtype0*
shape:*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:*
dtype0
Ї
conv2d_19/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_19/kernel/*
dtype0*
shape:@*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:@*
dtype0

conv2d_18/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_18/bias/*
dtype0*
shape:@*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_18/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_18/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:@@*
dtype0

conv2d_17/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_17/bias/*
dtype0*
shape:@*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_17/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_17/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:@@*
dtype0

conv2d_16/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_16/bias/*
dtype0*
shape:@*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_16/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_16/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:@@*
dtype0

conv2d_15/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_15/bias/*
dtype0*
shape:@*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_15/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_15/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:@@*
dtype0

conv2d_14/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_14/bias/*
dtype0*
shape:@*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_14/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_14/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:@@*
dtype0

conv2d_13/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_13/bias/*
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_13/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_13/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:@@*
dtype0

conv2d_12/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_12/bias/*
dtype0*
shape:@*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_12/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_12/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:@@*
dtype0

conv2d_11/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_11/bias/*
dtype0*
shape:@*
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_11/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_11/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:@@*
dtype0

conv2d_10/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_10/bias/*
dtype0*
shape:@*
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
:@*
dtype0
Ї
conv2d_10/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_10/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:@@*
dtype0

conv2d_9/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_9/bias/*
dtype0*
shape:@*
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
:@*
dtype0
Є
conv2d_9/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_9/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:@@*
dtype0

conv2d_8/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_8/bias/*
dtype0*
shape:@*
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
:@*
dtype0
Є
conv2d_8/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_8/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:@@*
dtype0

conv2d_7/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_7/bias/*
dtype0*
shape:@*
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
:@*
dtype0
Є
conv2d_7/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_7/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:@@*
dtype0

conv2d_6/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_6/bias/*
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
Є
conv2d_6/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_6/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
:@@*
dtype0

conv2d_5/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_5/bias/*
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
Є
conv2d_5/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_5/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@@*
dtype0

conv2d_4/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_4/bias/*
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0
Є
conv2d_4/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_4/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@@*
dtype0

conv2d_3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_3/bias/*
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0
Є
conv2d_3/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_3/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@@*
dtype0

conv2d_2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_2/bias/*
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
Є
conv2d_2/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_2/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@@*
dtype0

conv2d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_1/bias/*
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
Є
conv2d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_1/kernel/*
dtype0*
shape:@@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@@*
dtype0

conv2d/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d/bias/*
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0

conv2d/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2d/kernel/*
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
Ў
serving_default_input_1Placeholder*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*6
shape-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Ў
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_42196

NoOpNoOp
ию
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ю
valueюBю Bћэ

layer-0
layer_with_weights-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
* 
А
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
layer_with_weights-8
layer-8
layer_with_weights-9
layer-9
layer_with_weights-10
layer-10
layer_with_weights-11
layer-11
layer_with_weights-12
layer-12
layer_with_weights-13
layer-13
layer_with_weights-14
layer-14
layer_with_weights-15
layer-15
layer_with_weights-16
layer-16
layer_with_weights-17
layer-17
layer_with_weights-18
layer-18
 layer_with_weights-19
 layer-19
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*

'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
К
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39*
К
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39*
* 
А
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

Ztrace_0
[trace_1* 

\trace_0
]trace_1* 
* 

^
_variables
__iterations
`_learning_rate
a_index_dict
b
_momentums
c_velocities
d_update_step_xla*

eserving_default* 
Ш
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

-kernel
.bias
 l_jit_compiled_convolution_op*
Ш
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

/kernel
0bias
 s_jit_compiled_convolution_op*
Ш
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

1kernel
2bias
 z_jit_compiled_convolution_op*
Ъ
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses

3kernel
4bias
!_jit_compiled_convolution_op*
Я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

5kernel
6bias
!_jit_compiled_convolution_op*
Я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

7kernel
8bias
!_jit_compiled_convolution_op*
Я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

9kernel
:bias
!_jit_compiled_convolution_op*
Я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

;kernel
<bias
!_jit_compiled_convolution_op*
Я
	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses

=kernel
>bias
!Є_jit_compiled_convolution_op*
Я
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses

?kernel
@bias
!Ћ_jit_compiled_convolution_op*
Я
Ќ	variables
­trainable_variables
Ўregularization_losses
Џ	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

Akernel
Bbias
!В_jit_compiled_convolution_op*
Я
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses

Ckernel
Dbias
!Й_jit_compiled_convolution_op*
Я
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses

Ekernel
Fbias
!Р_jit_compiled_convolution_op*
Я
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses

Gkernel
Hbias
!Ч_jit_compiled_convolution_op*
Я
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses

Ikernel
Jbias
!Ю_jit_compiled_convolution_op*
Я
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses

Kkernel
Lbias
!е_jit_compiled_convolution_op*
Я
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses

Mkernel
Nbias
!м_jit_compiled_convolution_op*
Я
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses

Okernel
Pbias
!у_jit_compiled_convolution_op*
Я
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses

Qkernel
Rbias
!ъ_jit_compiled_convolution_op*
Я
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
я__call__
+№&call_and_return_all_conditional_losses

Skernel
Tbias
!ё_jit_compiled_convolution_op*
К
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39*
К
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39*
* 

ђnon_trainable_variables
ѓlayers
єmetrics
 ѕlayer_regularization_losses
іlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

їtrace_0
јtrace_1* 

љtrace_0
њtrace_1* 
* 
* 
* 

ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_4/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_4/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_5/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_5/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_6/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_6/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_7/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_7/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_8/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_8/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_9/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_9/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_10/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_10/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_11/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_11/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_12/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_12/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_13/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_13/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_14/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_14/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_15/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_15/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_16/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_16/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_17/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_17/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_18/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_18/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_19/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_19/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

0
1*
* 
* 
* 
* 
* 
* 
в
_0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
 29
Ё30
Ђ31
Ѓ32
Є33
Ѕ34
І35
Ї36
Ј37
Љ38
Њ39
Ћ40
Ќ41
­42
Ў43
Џ44
А45
Б46
В47
Г48
Д49
Е50
Ж51
З52
И53
Й54
К55
Л56
М57
Н58
О59
П60
Р61
С62
Т63
У64
Ф65
Х66
Ц67
Ч68
Ш69
Щ70
Ъ71
Ы72
Ь73
Э74
Ю75
Я76
а77
б78
в79
г80*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
т
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
Ђ15
Є16
І17
Ј18
Њ19
Ќ20
Ў21
А22
В23
Д24
Ж25
И26
К27
М28
О29
Р30
Т31
Ф32
Ц33
Ш34
Ъ35
Ь36
Ю37
а38
в39*
т
0
1
2
3
4
5
6
7
8
9
10
11
12
13
Ё14
Ѓ15
Ѕ16
Ї17
Љ18
Ћ19
­20
Џ21
Б22
Г23
Е24
З25
Й26
Л27
Н28
П29
С30
У31
Х32
Ч33
Щ34
Ы35
Э36
Я37
б38
г39*
а
дtrace_0
еtrace_1
жtrace_2
зtrace_3
иtrace_4
йtrace_5
кtrace_6
лtrace_7
мtrace_8
нtrace_9
оtrace_10
пtrace_11
рtrace_12
сtrace_13
тtrace_14
уtrace_15
фtrace_16
хtrace_17
цtrace_18
чtrace_19
шtrace_20
щtrace_21
ъtrace_22
ыtrace_23
ьtrace_24
эtrace_25
юtrace_26
яtrace_27
№trace_28
ёtrace_29
ђtrace_30
ѓtrace_31
єtrace_32
ѕtrace_33
іtrace_34
їtrace_35
јtrace_36
љtrace_37
њtrace_38
ћtrace_39* 
* 

-0
.1*

-0
.1*
* 

ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

/0
01*

/0
01*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

10
21*

10
21*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

30
41*

30
41*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

50
61*

50
61*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

70
81*

70
81*
* 

non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Єtrace_0* 

Ѕtrace_0* 
* 

90
:1*

90
:1*
* 

Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ћtrace_0* 

Ќtrace_0* 
* 

;0
<1*

;0
<1*
* 

­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Вtrace_0* 

Гtrace_0* 
* 

=0
>1*

=0
>1*
* 

Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses*

Йtrace_0* 

Кtrace_0* 
* 

?0
@1*

?0
@1*
* 

Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses*

Рtrace_0* 

Сtrace_0* 
* 

A0
B1*

A0
B1*
* 

Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Ќ	variables
­trainable_variables
Ўregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses*

Чtrace_0* 

Шtrace_0* 
* 

C0
D1*

C0
D1*
* 

Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
* 

E0
F1*

E0
F1*
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*

еtrace_0* 

жtrace_0* 
* 

G0
H1*

G0
H1*
* 

зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses*

мtrace_0* 

нtrace_0* 
* 

I0
J1*

I0
J1*
* 

оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses*

уtrace_0* 

фtrace_0* 
* 

K0
L1*

K0
L1*
* 

хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses*

ъtrace_0* 

ыtrace_0* 
* 

M0
N1*

M0
N1*
* 

ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses*

ёtrace_0* 

ђtrace_0* 
* 

O0
P1*

O0
P1*
* 

ѓnon_trainable_variables
єlayers
ѕmetrics
 іlayer_regularization_losses
їlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses*

јtrace_0* 

љtrace_0* 
* 

Q0
R1*

Q0
R1*
* 

њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses*

џtrace_0* 

trace_0* 
* 

S0
T1*

S0
T1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
я__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
 19*
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
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_4/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_4/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_4/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_4/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_5/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_5/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_5/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_5/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_6/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_6/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_6/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_6/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_7/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_7/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_7/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_7/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_8/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_8/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_8/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_8/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_9/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_9/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_9/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_9/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_10/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_10/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_10/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_10/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_11/kernel2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_11/kernel2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_11/bias2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_11/bias2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_12/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_12/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_12/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_12/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_13/kernel2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_13/kernel2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_13/bias2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_13/bias2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_14/kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_14/kernel2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_14/bias2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_14/bias2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_15/kernel2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_15/kernel2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_15/bias2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_15/bias2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_16/kernel2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_16/kernel2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_16/bias2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_16/bias2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_17/kernel2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_17/kernel2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_17/bias2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_17/bias2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_18/kernel2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_18/kernel2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_18/bias2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_18/bias2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_19/kernel2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_19/kernel2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_19/bias2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_19/bias2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
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
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/biasAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/biasAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/biasAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/biasAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/biasAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/biasAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/biasAdam/m/conv2d_15/kernelAdam/v/conv2d_15/kernelAdam/m/conv2d_15/biasAdam/v/conv2d_15/biasAdam/m/conv2d_16/kernelAdam/v/conv2d_16/kernelAdam/m/conv2d_16/biasAdam/v/conv2d_16/biasAdam/m/conv2d_17/kernelAdam/v/conv2d_17/kernelAdam/m/conv2d_17/biasAdam/v/conv2d_17/biasAdam/m/conv2d_18/kernelAdam/v/conv2d_18/kernelAdam/m/conv2d_18/biasAdam/v/conv2d_18/biasAdam/m/conv2d_19/kernelAdam/v/conv2d_19/kernelAdam/m/conv2d_19/biasAdam/v/conv2d_19/biastotal_1count_1totalcountConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_43385
Г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/biasAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/biasAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/biasAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/biasAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/biasAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/biasAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/biasAdam/m/conv2d_15/kernelAdam/v/conv2d_15/kernelAdam/m/conv2d_15/biasAdam/v/conv2d_15/biasAdam/m/conv2d_16/kernelAdam/v/conv2d_16/kernelAdam/m/conv2d_16/biasAdam/v/conv2d_16/biasAdam/m/conv2d_17/kernelAdam/v/conv2d_17/kernelAdam/m/conv2d_17/biasAdam/v/conv2d_17/biasAdam/m/conv2d_18/kernelAdam/v/conv2d_18/kernelAdam/m/conv2d_18/biasAdam/v/conv2d_18/biasAdam/m/conv2d_19/kernelAdam/v/conv2d_19/kernelAdam/m/conv2d_19/biasAdam/v/conv2d_19/biastotal_1count_1totalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_43772ъь
Њ
I
!__inference__update_step_xla_9759
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9834
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_42248

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њ
I
!__inference__update_step_xla_9789
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
о

(__inference_conv2d_5_layer_call_fn_42317

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_41070
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42311:%!

_user_specified_name42313
 
§
D__inference_conv2d_13_layer_call_and_return_conditional_losses_41198

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о

(__inference_conv2d_8_layer_call_fn_42377

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_41118
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42371:%!

_user_specified_name42373

ќ
C__inference_conv2d_7_layer_call_and_return_conditional_losses_41102

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о

(__inference_conv2d_6_layer_call_fn_42337

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_41086
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42331:%!

_user_specified_name42333
Ю
U
!__inference__update_step_xla_9724
gradient"
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@: *
	_noinline(:P L
&
_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_41006

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о

(__inference_conv2d_3_layer_call_fn_42277

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_41038
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42271:%!

_user_specified_name42273
р

)__inference_conv2d_19_layer_call_fn_42597

inputs!
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_41293
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42591:%!

_user_specified_name42593
Д"
в

%__inference_model_layer_call_fn_42017
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19:@@

unknown_20:@$

unknown_21:@@

unknown_22:@$

unknown_23:@@

unknown_24:@$

unknown_25:@@

unknown_26:@$

unknown_27:@@

unknown_28:@$

unknown_29:@@

unknown_30:@$

unknown_31:@@

unknown_32:@$

unknown_33:@@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37:@

unknown_38:
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_41846
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1:%!

_user_specified_name41935:%!

_user_specified_name41937:%!

_user_specified_name41939:%!

_user_specified_name41941:%!

_user_specified_name41943:%!

_user_specified_name41945:%!

_user_specified_name41947:%!

_user_specified_name41949:%	!

_user_specified_name41951:%
!

_user_specified_name41953:%!

_user_specified_name41955:%!

_user_specified_name41957:%!

_user_specified_name41959:%!

_user_specified_name41961:%!

_user_specified_name41963:%!

_user_specified_name41965:%!

_user_specified_name41967:%!

_user_specified_name41969:%!

_user_specified_name41971:%!

_user_specified_name41973:%!

_user_specified_name41975:%!

_user_specified_name41977:%!

_user_specified_name41979:%!

_user_specified_name41981:%!

_user_specified_name41983:%!

_user_specified_name41985:%!

_user_specified_name41987:%!

_user_specified_name41989:%!

_user_specified_name41991:%!

_user_specified_name41993:%!

_user_specified_name41995:% !

_user_specified_name41997:%!!

_user_specified_name41999:%"!

_user_specified_name42001:%#!

_user_specified_name42003:%$!

_user_specified_name42005:%%!

_user_specified_name42007:%&!

_user_specified_name42009:%'!

_user_specified_name42011:%(!

_user_specified_name42013
 
§
D__inference_conv2d_14_layer_call_and_return_conditional_losses_42508

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њ
I
!__inference__update_step_xla_9809
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
вЛ
ЧQ
!__inference__traced_restore_43772
file_prefix8
assignvariableop_conv2d_kernel:@,
assignvariableop_1_conv2d_bias:@<
"assignvariableop_2_conv2d_1_kernel:@@.
 assignvariableop_3_conv2d_1_bias:@<
"assignvariableop_4_conv2d_2_kernel:@@.
 assignvariableop_5_conv2d_2_bias:@<
"assignvariableop_6_conv2d_3_kernel:@@.
 assignvariableop_7_conv2d_3_bias:@<
"assignvariableop_8_conv2d_4_kernel:@@.
 assignvariableop_9_conv2d_4_bias:@=
#assignvariableop_10_conv2d_5_kernel:@@/
!assignvariableop_11_conv2d_5_bias:@=
#assignvariableop_12_conv2d_6_kernel:@@/
!assignvariableop_13_conv2d_6_bias:@=
#assignvariableop_14_conv2d_7_kernel:@@/
!assignvariableop_15_conv2d_7_bias:@=
#assignvariableop_16_conv2d_8_kernel:@@/
!assignvariableop_17_conv2d_8_bias:@=
#assignvariableop_18_conv2d_9_kernel:@@/
!assignvariableop_19_conv2d_9_bias:@>
$assignvariableop_20_conv2d_10_kernel:@@0
"assignvariableop_21_conv2d_10_bias:@>
$assignvariableop_22_conv2d_11_kernel:@@0
"assignvariableop_23_conv2d_11_bias:@>
$assignvariableop_24_conv2d_12_kernel:@@0
"assignvariableop_25_conv2d_12_bias:@>
$assignvariableop_26_conv2d_13_kernel:@@0
"assignvariableop_27_conv2d_13_bias:@>
$assignvariableop_28_conv2d_14_kernel:@@0
"assignvariableop_29_conv2d_14_bias:@>
$assignvariableop_30_conv2d_15_kernel:@@0
"assignvariableop_31_conv2d_15_bias:@>
$assignvariableop_32_conv2d_16_kernel:@@0
"assignvariableop_33_conv2d_16_bias:@>
$assignvariableop_34_conv2d_17_kernel:@@0
"assignvariableop_35_conv2d_17_bias:@>
$assignvariableop_36_conv2d_18_kernel:@@0
"assignvariableop_37_conv2d_18_bias:@>
$assignvariableop_38_conv2d_19_kernel:@0
"assignvariableop_39_conv2d_19_bias:'
assignvariableop_40_iteration:	 +
!assignvariableop_41_learning_rate: B
(assignvariableop_42_adam_m_conv2d_kernel:@B
(assignvariableop_43_adam_v_conv2d_kernel:@4
&assignvariableop_44_adam_m_conv2d_bias:@4
&assignvariableop_45_adam_v_conv2d_bias:@D
*assignvariableop_46_adam_m_conv2d_1_kernel:@@D
*assignvariableop_47_adam_v_conv2d_1_kernel:@@6
(assignvariableop_48_adam_m_conv2d_1_bias:@6
(assignvariableop_49_adam_v_conv2d_1_bias:@D
*assignvariableop_50_adam_m_conv2d_2_kernel:@@D
*assignvariableop_51_adam_v_conv2d_2_kernel:@@6
(assignvariableop_52_adam_m_conv2d_2_bias:@6
(assignvariableop_53_adam_v_conv2d_2_bias:@D
*assignvariableop_54_adam_m_conv2d_3_kernel:@@D
*assignvariableop_55_adam_v_conv2d_3_kernel:@@6
(assignvariableop_56_adam_m_conv2d_3_bias:@6
(assignvariableop_57_adam_v_conv2d_3_bias:@D
*assignvariableop_58_adam_m_conv2d_4_kernel:@@D
*assignvariableop_59_adam_v_conv2d_4_kernel:@@6
(assignvariableop_60_adam_m_conv2d_4_bias:@6
(assignvariableop_61_adam_v_conv2d_4_bias:@D
*assignvariableop_62_adam_m_conv2d_5_kernel:@@D
*assignvariableop_63_adam_v_conv2d_5_kernel:@@6
(assignvariableop_64_adam_m_conv2d_5_bias:@6
(assignvariableop_65_adam_v_conv2d_5_bias:@D
*assignvariableop_66_adam_m_conv2d_6_kernel:@@D
*assignvariableop_67_adam_v_conv2d_6_kernel:@@6
(assignvariableop_68_adam_m_conv2d_6_bias:@6
(assignvariableop_69_adam_v_conv2d_6_bias:@D
*assignvariableop_70_adam_m_conv2d_7_kernel:@@D
*assignvariableop_71_adam_v_conv2d_7_kernel:@@6
(assignvariableop_72_adam_m_conv2d_7_bias:@6
(assignvariableop_73_adam_v_conv2d_7_bias:@D
*assignvariableop_74_adam_m_conv2d_8_kernel:@@D
*assignvariableop_75_adam_v_conv2d_8_kernel:@@6
(assignvariableop_76_adam_m_conv2d_8_bias:@6
(assignvariableop_77_adam_v_conv2d_8_bias:@D
*assignvariableop_78_adam_m_conv2d_9_kernel:@@D
*assignvariableop_79_adam_v_conv2d_9_kernel:@@6
(assignvariableop_80_adam_m_conv2d_9_bias:@6
(assignvariableop_81_adam_v_conv2d_9_bias:@E
+assignvariableop_82_adam_m_conv2d_10_kernel:@@E
+assignvariableop_83_adam_v_conv2d_10_kernel:@@7
)assignvariableop_84_adam_m_conv2d_10_bias:@7
)assignvariableop_85_adam_v_conv2d_10_bias:@E
+assignvariableop_86_adam_m_conv2d_11_kernel:@@E
+assignvariableop_87_adam_v_conv2d_11_kernel:@@7
)assignvariableop_88_adam_m_conv2d_11_bias:@7
)assignvariableop_89_adam_v_conv2d_11_bias:@E
+assignvariableop_90_adam_m_conv2d_12_kernel:@@E
+assignvariableop_91_adam_v_conv2d_12_kernel:@@7
)assignvariableop_92_adam_m_conv2d_12_bias:@7
)assignvariableop_93_adam_v_conv2d_12_bias:@E
+assignvariableop_94_adam_m_conv2d_13_kernel:@@E
+assignvariableop_95_adam_v_conv2d_13_kernel:@@7
)assignvariableop_96_adam_m_conv2d_13_bias:@7
)assignvariableop_97_adam_v_conv2d_13_bias:@E
+assignvariableop_98_adam_m_conv2d_14_kernel:@@E
+assignvariableop_99_adam_v_conv2d_14_kernel:@@8
*assignvariableop_100_adam_m_conv2d_14_bias:@8
*assignvariableop_101_adam_v_conv2d_14_bias:@F
,assignvariableop_102_adam_m_conv2d_15_kernel:@@F
,assignvariableop_103_adam_v_conv2d_15_kernel:@@8
*assignvariableop_104_adam_m_conv2d_15_bias:@8
*assignvariableop_105_adam_v_conv2d_15_bias:@F
,assignvariableop_106_adam_m_conv2d_16_kernel:@@F
,assignvariableop_107_adam_v_conv2d_16_kernel:@@8
*assignvariableop_108_adam_m_conv2d_16_bias:@8
*assignvariableop_109_adam_v_conv2d_16_bias:@F
,assignvariableop_110_adam_m_conv2d_17_kernel:@@F
,assignvariableop_111_adam_v_conv2d_17_kernel:@@8
*assignvariableop_112_adam_m_conv2d_17_bias:@8
*assignvariableop_113_adam_v_conv2d_17_bias:@F
,assignvariableop_114_adam_m_conv2d_18_kernel:@@F
,assignvariableop_115_adam_v_conv2d_18_kernel:@@8
*assignvariableop_116_adam_m_conv2d_18_bias:@8
*assignvariableop_117_adam_v_conv2d_18_bias:@F
,assignvariableop_118_adam_m_conv2d_19_kernel:@F
,assignvariableop_119_adam_v_conv2d_19_kernel:@8
*assignvariableop_120_adam_m_conv2d_19_bias:8
*assignvariableop_121_adam_v_conv2d_19_bias:&
assignvariableop_122_total_1: &
assignvariableop_123_count_1: $
assignvariableop_124_total: $
assignvariableop_125_count: 
identity_127ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_100ЂAssignVariableOp_101ЂAssignVariableOp_102ЂAssignVariableOp_103ЂAssignVariableOp_104ЂAssignVariableOp_105ЂAssignVariableOp_106ЂAssignVariableOp_107ЂAssignVariableOp_108ЂAssignVariableOp_109ЂAssignVariableOp_11ЂAssignVariableOp_110ЂAssignVariableOp_111ЂAssignVariableOp_112ЂAssignVariableOp_113ЂAssignVariableOp_114ЂAssignVariableOp_115ЂAssignVariableOp_116ЂAssignVariableOp_117ЂAssignVariableOp_118ЂAssignVariableOp_119ЂAssignVariableOp_12ЂAssignVariableOp_120ЂAssignVariableOp_121ЂAssignVariableOp_122ЂAssignVariableOp_123ЂAssignVariableOp_124ЂAssignVariableOp_125ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_79ЂAssignVariableOp_8ЂAssignVariableOp_80ЂAssignVariableOp_81ЂAssignVariableOp_82ЂAssignVariableOp_83ЂAssignVariableOp_84ЂAssignVariableOp_85ЂAssignVariableOp_86ЂAssignVariableOp_87ЂAssignVariableOp_88ЂAssignVariableOp_89ЂAssignVariableOp_9ЂAssignVariableOp_90ЂAssignVariableOp_91ЂAssignVariableOp_92ЂAssignVariableOp_93ЂAssignVariableOp_94ЂAssignVariableOp_95ЂAssignVariableOp_96ЂAssignVariableOp_97ЂAssignVariableOp_98ЂAssignVariableOp_99с0
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*0
value§/Bњ/B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHё
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesџ
ќ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_6_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_6_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_7_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv2d_7_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_8_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_8_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_9_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_19AssignVariableOp!assignvariableop_19_conv2d_9_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv2d_10_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_21AssignVariableOp"assignvariableop_21_conv2d_10_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_22AssignVariableOp$assignvariableop_22_conv2d_11_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_23AssignVariableOp"assignvariableop_23_conv2d_11_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_12_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_12_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv2d_13_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_27AssignVariableOp"assignvariableop_27_conv2d_13_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_14_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv2d_14_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_15_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_15_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_32AssignVariableOp$assignvariableop_32_conv2d_16_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_33AssignVariableOp"assignvariableop_33_conv2d_16_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_34AssignVariableOp$assignvariableop_34_conv2d_17_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_35AssignVariableOp"assignvariableop_35_conv2d_17_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_36AssignVariableOp$assignvariableop_36_conv2d_18_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_37AssignVariableOp"assignvariableop_37_conv2d_18_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_38AssignVariableOp$assignvariableop_38_conv2d_19_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_39AssignVariableOp"assignvariableop_39_conv2d_19_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_40AssignVariableOpassignvariableop_40_iterationIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_41AssignVariableOp!assignvariableop_41_learning_rateIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_m_conv2d_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_v_conv2d_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_m_conv2d_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_45AssignVariableOp&assignvariableop_45_adam_v_conv2d_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_m_conv2d_1_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_v_conv2d_1_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_m_conv2d_1_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_v_conv2d_1_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_m_conv2d_2_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_v_conv2d_2_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_m_conv2d_2_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_v_conv2d_2_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_m_conv2d_3_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_v_conv2d_3_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_m_conv2d_3_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_v_conv2d_3_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_m_conv2d_4_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_v_conv2d_4_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_m_conv2d_4_biasIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_v_conv2d_4_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_m_conv2d_5_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_v_conv2d_5_kernelIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_m_conv2d_5_biasIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_v_conv2d_5_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_m_conv2d_6_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_v_conv2d_6_kernelIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_m_conv2d_6_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_69AssignVariableOp(assignvariableop_69_adam_v_conv2d_6_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_70AssignVariableOp*assignvariableop_70_adam_m_conv2d_7_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_v_conv2d_7_kernelIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_m_conv2d_7_biasIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_73AssignVariableOp(assignvariableop_73_adam_v_conv2d_7_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_m_conv2d_8_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_v_conv2d_8_kernelIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_m_conv2d_8_biasIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_77AssignVariableOp(assignvariableop_77_adam_v_conv2d_8_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_m_conv2d_9_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_79AssignVariableOp*assignvariableop_79_adam_v_conv2d_9_kernelIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_80AssignVariableOp(assignvariableop_80_adam_m_conv2d_9_biasIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_81AssignVariableOp(assignvariableop_81_adam_v_conv2d_9_biasIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_82AssignVariableOp+assignvariableop_82_adam_m_conv2d_10_kernelIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_v_conv2d_10_kernelIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_m_conv2d_10_biasIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_85AssignVariableOp)assignvariableop_85_adam_v_conv2d_10_biasIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_86AssignVariableOp+assignvariableop_86_adam_m_conv2d_11_kernelIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_v_conv2d_11_kernelIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_m_conv2d_11_biasIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_89AssignVariableOp)assignvariableop_89_adam_v_conv2d_11_biasIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_90AssignVariableOp+assignvariableop_90_adam_m_conv2d_12_kernelIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_91AssignVariableOp+assignvariableop_91_adam_v_conv2d_12_kernelIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_m_conv2d_12_biasIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_93AssignVariableOp)assignvariableop_93_adam_v_conv2d_12_biasIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_94AssignVariableOp+assignvariableop_94_adam_m_conv2d_13_kernelIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_v_conv2d_13_kernelIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_m_conv2d_13_biasIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_97AssignVariableOp)assignvariableop_97_adam_v_conv2d_13_biasIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_98AssignVariableOp+assignvariableop_98_adam_m_conv2d_14_kernelIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_99AssignVariableOp+assignvariableop_99_adam_v_conv2d_14_kernelIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_100AssignVariableOp*assignvariableop_100_adam_m_conv2d_14_biasIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_101AssignVariableOp*assignvariableop_101_adam_v_conv2d_14_biasIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_102AssignVariableOp,assignvariableop_102_adam_m_conv2d_15_kernelIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_v_conv2d_15_kernelIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_m_conv2d_15_biasIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_105AssignVariableOp*assignvariableop_105_adam_v_conv2d_15_biasIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_106AssignVariableOp,assignvariableop_106_adam_m_conv2d_16_kernelIdentity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_107AssignVariableOp,assignvariableop_107_adam_v_conv2d_16_kernelIdentity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_108AssignVariableOp*assignvariableop_108_adam_m_conv2d_16_biasIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_109AssignVariableOp*assignvariableop_109_adam_v_conv2d_16_biasIdentity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_110AssignVariableOp,assignvariableop_110_adam_m_conv2d_17_kernelIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_111AssignVariableOp,assignvariableop_111_adam_v_conv2d_17_kernelIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_112AssignVariableOp*assignvariableop_112_adam_m_conv2d_17_biasIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_113AssignVariableOp*assignvariableop_113_adam_v_conv2d_17_biasIdentity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_114AssignVariableOp,assignvariableop_114_adam_m_conv2d_18_kernelIdentity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_v_conv2d_18_kernelIdentity_115:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_m_conv2d_18_biasIdentity_116:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_117AssignVariableOp*assignvariableop_117_adam_v_conv2d_18_biasIdentity_117:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_118AssignVariableOp,assignvariableop_118_adam_m_conv2d_19_kernelIdentity_118:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_119AssignVariableOp,assignvariableop_119_adam_v_conv2d_19_kernelIdentity_119:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_120AssignVariableOp*assignvariableop_120_adam_m_conv2d_19_biasIdentity_120:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_121AssignVariableOp*assignvariableop_121_adam_v_conv2d_19_biasIdentity_121:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_122AssignVariableOpassignvariableop_122_total_1Identity_122:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_123AssignVariableOpassignvariableop_123_count_1Identity_123:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_124AssignVariableOpassignvariableop_124_totalIdentity_124:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_125AssignVariableOpassignvariableop_125_countIdentity_125:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 О
Identity_126Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_127IdentityIdentity_126:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_127Identity_127:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:/	+
)
_user_specified_nameconv2d_4/kernel:-
)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_5/kernel:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_6/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_8/kernel:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_9/kernel:-)
'
_user_specified_nameconv2d_9/bias:0,
*
_user_specified_nameconv2d_10/kernel:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_11/kernel:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_12/kernel:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_13/kernel:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_14/kernel:.*
(
_user_specified_nameconv2d_14/bias:0,
*
_user_specified_nameconv2d_15/kernel:. *
(
_user_specified_nameconv2d_15/bias:0!,
*
_user_specified_nameconv2d_16/kernel:."*
(
_user_specified_nameconv2d_16/bias:0#,
*
_user_specified_nameconv2d_17/kernel:.$*
(
_user_specified_nameconv2d_17/bias:0%,
*
_user_specified_nameconv2d_18/kernel:.&*
(
_user_specified_nameconv2d_18/bias:0',
*
_user_specified_nameconv2d_19/kernel:.(*
(
_user_specified_nameconv2d_19/bias:))%
#
_user_specified_name	iteration:-*)
'
_user_specified_namelearning_rate:4+0
.
_user_specified_nameAdam/m/conv2d/kernel:4,0
.
_user_specified_nameAdam/v/conv2d/kernel:2-.
,
_user_specified_nameAdam/m/conv2d/bias:2..
,
_user_specified_nameAdam/v/conv2d/bias:6/2
0
_user_specified_nameAdam/m/conv2d_1/kernel:602
0
_user_specified_nameAdam/v/conv2d_1/kernel:410
.
_user_specified_nameAdam/m/conv2d_1/bias:420
.
_user_specified_nameAdam/v/conv2d_1/bias:632
0
_user_specified_nameAdam/m/conv2d_2/kernel:642
0
_user_specified_nameAdam/v/conv2d_2/kernel:450
.
_user_specified_nameAdam/m/conv2d_2/bias:460
.
_user_specified_nameAdam/v/conv2d_2/bias:672
0
_user_specified_nameAdam/m/conv2d_3/kernel:682
0
_user_specified_nameAdam/v/conv2d_3/kernel:490
.
_user_specified_nameAdam/m/conv2d_3/bias:4:0
.
_user_specified_nameAdam/v/conv2d_3/bias:6;2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6<2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4=0
.
_user_specified_nameAdam/m/conv2d_4/bias:4>0
.
_user_specified_nameAdam/v/conv2d_4/bias:6?2
0
_user_specified_nameAdam/m/conv2d_5/kernel:6@2
0
_user_specified_nameAdam/v/conv2d_5/kernel:4A0
.
_user_specified_nameAdam/m/conv2d_5/bias:4B0
.
_user_specified_nameAdam/v/conv2d_5/bias:6C2
0
_user_specified_nameAdam/m/conv2d_6/kernel:6D2
0
_user_specified_nameAdam/v/conv2d_6/kernel:4E0
.
_user_specified_nameAdam/m/conv2d_6/bias:4F0
.
_user_specified_nameAdam/v/conv2d_6/bias:6G2
0
_user_specified_nameAdam/m/conv2d_7/kernel:6H2
0
_user_specified_nameAdam/v/conv2d_7/kernel:4I0
.
_user_specified_nameAdam/m/conv2d_7/bias:4J0
.
_user_specified_nameAdam/v/conv2d_7/bias:6K2
0
_user_specified_nameAdam/m/conv2d_8/kernel:6L2
0
_user_specified_nameAdam/v/conv2d_8/kernel:4M0
.
_user_specified_nameAdam/m/conv2d_8/bias:4N0
.
_user_specified_nameAdam/v/conv2d_8/bias:6O2
0
_user_specified_nameAdam/m/conv2d_9/kernel:6P2
0
_user_specified_nameAdam/v/conv2d_9/kernel:4Q0
.
_user_specified_nameAdam/m/conv2d_9/bias:4R0
.
_user_specified_nameAdam/v/conv2d_9/bias:7S3
1
_user_specified_nameAdam/m/conv2d_10/kernel:7T3
1
_user_specified_nameAdam/v/conv2d_10/kernel:5U1
/
_user_specified_nameAdam/m/conv2d_10/bias:5V1
/
_user_specified_nameAdam/v/conv2d_10/bias:7W3
1
_user_specified_nameAdam/m/conv2d_11/kernel:7X3
1
_user_specified_nameAdam/v/conv2d_11/kernel:5Y1
/
_user_specified_nameAdam/m/conv2d_11/bias:5Z1
/
_user_specified_nameAdam/v/conv2d_11/bias:7[3
1
_user_specified_nameAdam/m/conv2d_12/kernel:7\3
1
_user_specified_nameAdam/v/conv2d_12/kernel:5]1
/
_user_specified_nameAdam/m/conv2d_12/bias:5^1
/
_user_specified_nameAdam/v/conv2d_12/bias:7_3
1
_user_specified_nameAdam/m/conv2d_13/kernel:7`3
1
_user_specified_nameAdam/v/conv2d_13/kernel:5a1
/
_user_specified_nameAdam/m/conv2d_13/bias:5b1
/
_user_specified_nameAdam/v/conv2d_13/bias:7c3
1
_user_specified_nameAdam/m/conv2d_14/kernel:7d3
1
_user_specified_nameAdam/v/conv2d_14/kernel:5e1
/
_user_specified_nameAdam/m/conv2d_14/bias:5f1
/
_user_specified_nameAdam/v/conv2d_14/bias:7g3
1
_user_specified_nameAdam/m/conv2d_15/kernel:7h3
1
_user_specified_nameAdam/v/conv2d_15/kernel:5i1
/
_user_specified_nameAdam/m/conv2d_15/bias:5j1
/
_user_specified_nameAdam/v/conv2d_15/bias:7k3
1
_user_specified_nameAdam/m/conv2d_16/kernel:7l3
1
_user_specified_nameAdam/v/conv2d_16/kernel:5m1
/
_user_specified_nameAdam/m/conv2d_16/bias:5n1
/
_user_specified_nameAdam/v/conv2d_16/bias:7o3
1
_user_specified_nameAdam/m/conv2d_17/kernel:7p3
1
_user_specified_nameAdam/v/conv2d_17/kernel:5q1
/
_user_specified_nameAdam/m/conv2d_17/bias:5r1
/
_user_specified_nameAdam/v/conv2d_17/bias:7s3
1
_user_specified_nameAdam/m/conv2d_18/kernel:7t3
1
_user_specified_nameAdam/v/conv2d_18/kernel:5u1
/
_user_specified_nameAdam/m/conv2d_18/bias:5v1
/
_user_specified_nameAdam/v/conv2d_18/bias:7w3
1
_user_specified_nameAdam/m/conv2d_19/kernel:7x3
1
_user_specified_nameAdam/v/conv2d_19/kernel:5y1
/
_user_specified_nameAdam/m/conv2d_19/bias:5z1
/
_user_specified_nameAdam/v/conv2d_19/bias:'{#
!
_user_specified_name	total_1:'|#
!
_user_specified_name	count_1:%}!

_user_specified_nametotal:%~!

_user_specified_namecount
Њ
I
!__inference__update_step_xla_9839
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
 
§
D__inference_conv2d_11_layer_call_and_return_conditional_losses_42448

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
§
D__inference_conv2d_18_layer_call_and_return_conditional_losses_42588

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
р

)__inference_conv2d_15_layer_call_fn_42517

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_41230
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42511:%!

_user_specified_name42513

ќ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_41118

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
р

)__inference_conv2d_13_layer_call_fn_42477

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_41198
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42471:%!

_user_specified_name42473
 
§
D__inference_conv2d_16_layer_call_and_return_conditional_losses_42548

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о

(__inference_conv2d_9_layer_call_fn_42397

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_41134
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42391:%!

_user_specified_name42393
Ю
U
!__inference__update_step_xla_9904
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Д"
в

%__inference_model_layer_call_fn_42102
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19:@@

unknown_20:@$

unknown_21:@@

unknown_22:@$

unknown_23:@@

unknown_24:@$

unknown_25:@@

unknown_26:@$

unknown_27:@@

unknown_28:@$

unknown_29:@@

unknown_30:@$

unknown_31:@@

unknown_32:@$

unknown_33:@@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37:@

unknown_38:
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_41932
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1:%!

_user_specified_name42020:%!

_user_specified_name42022:%!

_user_specified_name42024:%!

_user_specified_name42026:%!

_user_specified_name42028:%!

_user_specified_name42030:%!

_user_specified_name42032:%!

_user_specified_name42034:%	!

_user_specified_name42036:%
!

_user_specified_name42038:%!

_user_specified_name42040:%!

_user_specified_name42042:%!

_user_specified_name42044:%!

_user_specified_name42046:%!

_user_specified_name42048:%!

_user_specified_name42050:%!

_user_specified_name42052:%!

_user_specified_name42054:%!

_user_specified_name42056:%!

_user_specified_name42058:%!

_user_specified_name42060:%!

_user_specified_name42062:%!

_user_specified_name42064:%!

_user_specified_name42066:%!

_user_specified_name42068:%!

_user_specified_name42070:%!

_user_specified_name42072:%!

_user_specified_name42074:%!

_user_specified_name42076:%!

_user_specified_name42078:%!

_user_specified_name42080:% !

_user_specified_name42082:%!!

_user_specified_name42084:%"!

_user_specified_name42086:%#!

_user_specified_name42088:%$!

_user_specified_name42090:%%!

_user_specified_name42092:%&!

_user_specified_name42094:%'!

_user_specified_name42096:%(!

_user_specified_name42098

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_41038

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
к

&__inference_conv2d_layer_call_fn_42217

inputs!
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_40990
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name42211:%!

_user_specified_name42213
Њ
I
!__inference__update_step_xla_9859
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_41086

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њ
I
!__inference__update_step_xla_9889
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9864
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
v
о
E__inference_sequential_layer_call_and_return_conditional_losses_41300
conv2d_input&
conv2d_40991:@
conv2d_40993:@(
conv2d_1_41007:@@
conv2d_1_41009:@(
conv2d_2_41023:@@
conv2d_2_41025:@(
conv2d_3_41039:@@
conv2d_3_41041:@(
conv2d_4_41055:@@
conv2d_4_41057:@(
conv2d_5_41071:@@
conv2d_5_41073:@(
conv2d_6_41087:@@
conv2d_6_41089:@(
conv2d_7_41103:@@
conv2d_7_41105:@(
conv2d_8_41119:@@
conv2d_8_41121:@(
conv2d_9_41135:@@
conv2d_9_41137:@)
conv2d_10_41151:@@
conv2d_10_41153:@)
conv2d_11_41167:@@
conv2d_11_41169:@)
conv2d_12_41183:@@
conv2d_12_41185:@)
conv2d_13_41199:@@
conv2d_13_41201:@)
conv2d_14_41215:@@
conv2d_14_41217:@)
conv2d_15_41231:@@
conv2d_15_41233:@)
conv2d_16_41247:@@
conv2d_16_41249:@)
conv2d_17_41263:@@
conv2d_17_41265:@)
conv2d_18_41279:@@
conv2d_18_41281:@)
conv2d_19_41294:@
conv2d_19_41296:
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ!conv2d_12/StatefulPartitionedCallЂ!conv2d_13/StatefulPartitionedCallЂ!conv2d_14/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCallЂ conv2d_7/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_40991conv2d_40993*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_40990Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_41007conv2d_1_41009*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_41006­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_41023conv2d_2_41025*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_41022­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_41039conv2d_3_41041*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_41038­
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_41055conv2d_4_41057*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_41054­
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_41071conv2d_5_41073*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_41070­
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_41087conv2d_6_41089*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_41086­
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_41103conv2d_7_41105*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_41102­
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_41119conv2d_8_41121*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_41118­
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_41135conv2d_9_41137*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_41134Б
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_41151conv2d_10_41153*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_41150В
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_41167conv2d_11_41169*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_41166В
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0conv2d_12_41183conv2d_12_41185*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_41182В
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_41199conv2d_13_41201*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_41198В
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_41215conv2d_14_41217*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_41214В
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_41231conv2d_15_41233*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_41230В
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_41247conv2d_16_41249*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_41246В
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_41263conv2d_17_41265*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_41262В
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_41279conv2d_18_41281*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_41278В
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_41294conv2d_19_41296*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_41293
IdentityIdentity*conv2d_19/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџц
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall:o k
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
&
_user_specified_nameconv2d_input:%!

_user_specified_name40991:%!

_user_specified_name40993:%!

_user_specified_name41007:%!

_user_specified_name41009:%!

_user_specified_name41023:%!

_user_specified_name41025:%!

_user_specified_name41039:%!

_user_specified_name41041:%	!

_user_specified_name41055:%
!

_user_specified_name41057:%!

_user_specified_name41071:%!

_user_specified_name41073:%!

_user_specified_name41087:%!

_user_specified_name41089:%!

_user_specified_name41103:%!

_user_specified_name41105:%!

_user_specified_name41119:%!

_user_specified_name41121:%!

_user_specified_name41135:%!

_user_specified_name41137:%!

_user_specified_name41151:%!

_user_specified_name41153:%!

_user_specified_name41167:%!

_user_specified_name41169:%!

_user_specified_name41183:%!

_user_specified_name41185:%!

_user_specified_name41199:%!

_user_specified_name41201:%!

_user_specified_name41215:%!

_user_specified_name41217:%!

_user_specified_name41231:% !

_user_specified_name41233:%!!

_user_specified_name41247:%"!

_user_specified_name41249:%#!

_user_specified_name41263:%$!

_user_specified_name41265:%%!

_user_specified_name41279:%&!

_user_specified_name41281:%'!

_user_specified_name41294:%(!

_user_specified_name41296

ќ
C__inference_conv2d_9_layer_call_and_return_conditional_losses_41134

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Э"
м

*__inference_sequential_layer_call_fn_41574
conv2d_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19:@@

unknown_20:@$

unknown_21:@@

unknown_22:@$

unknown_23:@@

unknown_24:@$

unknown_25:@@

unknown_26:@$

unknown_27:@@

unknown_28:@$

unknown_29:@@

unknown_30:@$

unknown_31:@@

unknown_32:@$

unknown_33:@@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37:@

unknown_38:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_41404
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:o k
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
&
_user_specified_nameconv2d_input:%!

_user_specified_name41492:%!

_user_specified_name41494:%!

_user_specified_name41496:%!

_user_specified_name41498:%!

_user_specified_name41500:%!

_user_specified_name41502:%!

_user_specified_name41504:%!

_user_specified_name41506:%	!

_user_specified_name41508:%
!

_user_specified_name41510:%!

_user_specified_name41512:%!

_user_specified_name41514:%!

_user_specified_name41516:%!

_user_specified_name41518:%!

_user_specified_name41520:%!

_user_specified_name41522:%!

_user_specified_name41524:%!

_user_specified_name41526:%!

_user_specified_name41528:%!

_user_specified_name41530:%!

_user_specified_name41532:%!

_user_specified_name41534:%!

_user_specified_name41536:%!

_user_specified_name41538:%!

_user_specified_name41540:%!

_user_specified_name41542:%!

_user_specified_name41544:%!

_user_specified_name41546:%!

_user_specified_name41548:%!

_user_specified_name41550:%!

_user_specified_name41552:% !

_user_specified_name41554:%!!

_user_specified_name41556:%"!

_user_specified_name41558:%#!

_user_specified_name41560:%$!

_user_specified_name41562:%%!

_user_specified_name41564:%&!

_user_specified_name41566:%'!

_user_specified_name41568:%(!

_user_specified_name41570
лЏ
Џv
__inference__traced_save_43385
file_prefix>
$read_disablecopyonread_conv2d_kernel:@2
$read_1_disablecopyonread_conv2d_bias:@B
(read_2_disablecopyonread_conv2d_1_kernel:@@4
&read_3_disablecopyonread_conv2d_1_bias:@B
(read_4_disablecopyonread_conv2d_2_kernel:@@4
&read_5_disablecopyonread_conv2d_2_bias:@B
(read_6_disablecopyonread_conv2d_3_kernel:@@4
&read_7_disablecopyonread_conv2d_3_bias:@B
(read_8_disablecopyonread_conv2d_4_kernel:@@4
&read_9_disablecopyonread_conv2d_4_bias:@C
)read_10_disablecopyonread_conv2d_5_kernel:@@5
'read_11_disablecopyonread_conv2d_5_bias:@C
)read_12_disablecopyonread_conv2d_6_kernel:@@5
'read_13_disablecopyonread_conv2d_6_bias:@C
)read_14_disablecopyonread_conv2d_7_kernel:@@5
'read_15_disablecopyonread_conv2d_7_bias:@C
)read_16_disablecopyonread_conv2d_8_kernel:@@5
'read_17_disablecopyonread_conv2d_8_bias:@C
)read_18_disablecopyonread_conv2d_9_kernel:@@5
'read_19_disablecopyonread_conv2d_9_bias:@D
*read_20_disablecopyonread_conv2d_10_kernel:@@6
(read_21_disablecopyonread_conv2d_10_bias:@D
*read_22_disablecopyonread_conv2d_11_kernel:@@6
(read_23_disablecopyonread_conv2d_11_bias:@D
*read_24_disablecopyonread_conv2d_12_kernel:@@6
(read_25_disablecopyonread_conv2d_12_bias:@D
*read_26_disablecopyonread_conv2d_13_kernel:@@6
(read_27_disablecopyonread_conv2d_13_bias:@D
*read_28_disablecopyonread_conv2d_14_kernel:@@6
(read_29_disablecopyonread_conv2d_14_bias:@D
*read_30_disablecopyonread_conv2d_15_kernel:@@6
(read_31_disablecopyonread_conv2d_15_bias:@D
*read_32_disablecopyonread_conv2d_16_kernel:@@6
(read_33_disablecopyonread_conv2d_16_bias:@D
*read_34_disablecopyonread_conv2d_17_kernel:@@6
(read_35_disablecopyonread_conv2d_17_bias:@D
*read_36_disablecopyonread_conv2d_18_kernel:@@6
(read_37_disablecopyonread_conv2d_18_bias:@D
*read_38_disablecopyonread_conv2d_19_kernel:@6
(read_39_disablecopyonread_conv2d_19_bias:-
#read_40_disablecopyonread_iteration:	 1
'read_41_disablecopyonread_learning_rate: H
.read_42_disablecopyonread_adam_m_conv2d_kernel:@H
.read_43_disablecopyonread_adam_v_conv2d_kernel:@:
,read_44_disablecopyonread_adam_m_conv2d_bias:@:
,read_45_disablecopyonread_adam_v_conv2d_bias:@J
0read_46_disablecopyonread_adam_m_conv2d_1_kernel:@@J
0read_47_disablecopyonread_adam_v_conv2d_1_kernel:@@<
.read_48_disablecopyonread_adam_m_conv2d_1_bias:@<
.read_49_disablecopyonread_adam_v_conv2d_1_bias:@J
0read_50_disablecopyonread_adam_m_conv2d_2_kernel:@@J
0read_51_disablecopyonread_adam_v_conv2d_2_kernel:@@<
.read_52_disablecopyonread_adam_m_conv2d_2_bias:@<
.read_53_disablecopyonread_adam_v_conv2d_2_bias:@J
0read_54_disablecopyonread_adam_m_conv2d_3_kernel:@@J
0read_55_disablecopyonread_adam_v_conv2d_3_kernel:@@<
.read_56_disablecopyonread_adam_m_conv2d_3_bias:@<
.read_57_disablecopyonread_adam_v_conv2d_3_bias:@J
0read_58_disablecopyonread_adam_m_conv2d_4_kernel:@@J
0read_59_disablecopyonread_adam_v_conv2d_4_kernel:@@<
.read_60_disablecopyonread_adam_m_conv2d_4_bias:@<
.read_61_disablecopyonread_adam_v_conv2d_4_bias:@J
0read_62_disablecopyonread_adam_m_conv2d_5_kernel:@@J
0read_63_disablecopyonread_adam_v_conv2d_5_kernel:@@<
.read_64_disablecopyonread_adam_m_conv2d_5_bias:@<
.read_65_disablecopyonread_adam_v_conv2d_5_bias:@J
0read_66_disablecopyonread_adam_m_conv2d_6_kernel:@@J
0read_67_disablecopyonread_adam_v_conv2d_6_kernel:@@<
.read_68_disablecopyonread_adam_m_conv2d_6_bias:@<
.read_69_disablecopyonread_adam_v_conv2d_6_bias:@J
0read_70_disablecopyonread_adam_m_conv2d_7_kernel:@@J
0read_71_disablecopyonread_adam_v_conv2d_7_kernel:@@<
.read_72_disablecopyonread_adam_m_conv2d_7_bias:@<
.read_73_disablecopyonread_adam_v_conv2d_7_bias:@J
0read_74_disablecopyonread_adam_m_conv2d_8_kernel:@@J
0read_75_disablecopyonread_adam_v_conv2d_8_kernel:@@<
.read_76_disablecopyonread_adam_m_conv2d_8_bias:@<
.read_77_disablecopyonread_adam_v_conv2d_8_bias:@J
0read_78_disablecopyonread_adam_m_conv2d_9_kernel:@@J
0read_79_disablecopyonread_adam_v_conv2d_9_kernel:@@<
.read_80_disablecopyonread_adam_m_conv2d_9_bias:@<
.read_81_disablecopyonread_adam_v_conv2d_9_bias:@K
1read_82_disablecopyonread_adam_m_conv2d_10_kernel:@@K
1read_83_disablecopyonread_adam_v_conv2d_10_kernel:@@=
/read_84_disablecopyonread_adam_m_conv2d_10_bias:@=
/read_85_disablecopyonread_adam_v_conv2d_10_bias:@K
1read_86_disablecopyonread_adam_m_conv2d_11_kernel:@@K
1read_87_disablecopyonread_adam_v_conv2d_11_kernel:@@=
/read_88_disablecopyonread_adam_m_conv2d_11_bias:@=
/read_89_disablecopyonread_adam_v_conv2d_11_bias:@K
1read_90_disablecopyonread_adam_m_conv2d_12_kernel:@@K
1read_91_disablecopyonread_adam_v_conv2d_12_kernel:@@=
/read_92_disablecopyonread_adam_m_conv2d_12_bias:@=
/read_93_disablecopyonread_adam_v_conv2d_12_bias:@K
1read_94_disablecopyonread_adam_m_conv2d_13_kernel:@@K
1read_95_disablecopyonread_adam_v_conv2d_13_kernel:@@=
/read_96_disablecopyonread_adam_m_conv2d_13_bias:@=
/read_97_disablecopyonread_adam_v_conv2d_13_bias:@K
1read_98_disablecopyonread_adam_m_conv2d_14_kernel:@@K
1read_99_disablecopyonread_adam_v_conv2d_14_kernel:@@>
0read_100_disablecopyonread_adam_m_conv2d_14_bias:@>
0read_101_disablecopyonread_adam_v_conv2d_14_bias:@L
2read_102_disablecopyonread_adam_m_conv2d_15_kernel:@@L
2read_103_disablecopyonread_adam_v_conv2d_15_kernel:@@>
0read_104_disablecopyonread_adam_m_conv2d_15_bias:@>
0read_105_disablecopyonread_adam_v_conv2d_15_bias:@L
2read_106_disablecopyonread_adam_m_conv2d_16_kernel:@@L
2read_107_disablecopyonread_adam_v_conv2d_16_kernel:@@>
0read_108_disablecopyonread_adam_m_conv2d_16_bias:@>
0read_109_disablecopyonread_adam_v_conv2d_16_bias:@L
2read_110_disablecopyonread_adam_m_conv2d_17_kernel:@@L
2read_111_disablecopyonread_adam_v_conv2d_17_kernel:@@>
0read_112_disablecopyonread_adam_m_conv2d_17_bias:@>
0read_113_disablecopyonread_adam_v_conv2d_17_bias:@L
2read_114_disablecopyonread_adam_m_conv2d_18_kernel:@@L
2read_115_disablecopyonread_adam_v_conv2d_18_kernel:@@>
0read_116_disablecopyonread_adam_m_conv2d_18_bias:@>
0read_117_disablecopyonread_adam_v_conv2d_18_bias:@L
2read_118_disablecopyonread_adam_m_conv2d_19_kernel:@L
2read_119_disablecopyonread_adam_v_conv2d_19_kernel:@>
0read_120_disablecopyonread_adam_m_conv2d_19_bias:>
0read_121_disablecopyonread_adam_v_conv2d_19_bias:,
"read_122_disablecopyonread_total_1: ,
"read_123_disablecopyonread_count_1: *
 read_124_disablecopyonread_total: *
 read_125_disablecopyonread_count: 
savev2_const
identity_253ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_100/DisableCopyOnReadЂRead_100/ReadVariableOpЂRead_101/DisableCopyOnReadЂRead_101/ReadVariableOpЂRead_102/DisableCopyOnReadЂRead_102/ReadVariableOpЂRead_103/DisableCopyOnReadЂRead_103/ReadVariableOpЂRead_104/DisableCopyOnReadЂRead_104/ReadVariableOpЂRead_105/DisableCopyOnReadЂRead_105/ReadVariableOpЂRead_106/DisableCopyOnReadЂRead_106/ReadVariableOpЂRead_107/DisableCopyOnReadЂRead_107/ReadVariableOpЂRead_108/DisableCopyOnReadЂRead_108/ReadVariableOpЂRead_109/DisableCopyOnReadЂRead_109/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_110/DisableCopyOnReadЂRead_110/ReadVariableOpЂRead_111/DisableCopyOnReadЂRead_111/ReadVariableOpЂRead_112/DisableCopyOnReadЂRead_112/ReadVariableOpЂRead_113/DisableCopyOnReadЂRead_113/ReadVariableOpЂRead_114/DisableCopyOnReadЂRead_114/ReadVariableOpЂRead_115/DisableCopyOnReadЂRead_115/ReadVariableOpЂRead_116/DisableCopyOnReadЂRead_116/ReadVariableOpЂRead_117/DisableCopyOnReadЂRead_117/ReadVariableOpЂRead_118/DisableCopyOnReadЂRead_118/ReadVariableOpЂRead_119/DisableCopyOnReadЂRead_119/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_120/DisableCopyOnReadЂRead_120/ReadVariableOpЂRead_121/DisableCopyOnReadЂRead_121/ReadVariableOpЂRead_122/DisableCopyOnReadЂRead_122/ReadVariableOpЂRead_123/DisableCopyOnReadЂRead_123/ReadVariableOpЂRead_124/DisableCopyOnReadЂRead_124/ReadVariableOpЂRead_125/DisableCopyOnReadЂRead_125/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_30/DisableCopyOnReadЂRead_30/ReadVariableOpЂRead_31/DisableCopyOnReadЂRead_31/ReadVariableOpЂRead_32/DisableCopyOnReadЂRead_32/ReadVariableOpЂRead_33/DisableCopyOnReadЂRead_33/ReadVariableOpЂRead_34/DisableCopyOnReadЂRead_34/ReadVariableOpЂRead_35/DisableCopyOnReadЂRead_35/ReadVariableOpЂRead_36/DisableCopyOnReadЂRead_36/ReadVariableOpЂRead_37/DisableCopyOnReadЂRead_37/ReadVariableOpЂRead_38/DisableCopyOnReadЂRead_38/ReadVariableOpЂRead_39/DisableCopyOnReadЂRead_39/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_40/DisableCopyOnReadЂRead_40/ReadVariableOpЂRead_41/DisableCopyOnReadЂRead_41/ReadVariableOpЂRead_42/DisableCopyOnReadЂRead_42/ReadVariableOpЂRead_43/DisableCopyOnReadЂRead_43/ReadVariableOpЂRead_44/DisableCopyOnReadЂRead_44/ReadVariableOpЂRead_45/DisableCopyOnReadЂRead_45/ReadVariableOpЂRead_46/DisableCopyOnReadЂRead_46/ReadVariableOpЂRead_47/DisableCopyOnReadЂRead_47/ReadVariableOpЂRead_48/DisableCopyOnReadЂRead_48/ReadVariableOpЂRead_49/DisableCopyOnReadЂRead_49/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_50/DisableCopyOnReadЂRead_50/ReadVariableOpЂRead_51/DisableCopyOnReadЂRead_51/ReadVariableOpЂRead_52/DisableCopyOnReadЂRead_52/ReadVariableOpЂRead_53/DisableCopyOnReadЂRead_53/ReadVariableOpЂRead_54/DisableCopyOnReadЂRead_54/ReadVariableOpЂRead_55/DisableCopyOnReadЂRead_55/ReadVariableOpЂRead_56/DisableCopyOnReadЂRead_56/ReadVariableOpЂRead_57/DisableCopyOnReadЂRead_57/ReadVariableOpЂRead_58/DisableCopyOnReadЂRead_58/ReadVariableOpЂRead_59/DisableCopyOnReadЂRead_59/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_60/DisableCopyOnReadЂRead_60/ReadVariableOpЂRead_61/DisableCopyOnReadЂRead_61/ReadVariableOpЂRead_62/DisableCopyOnReadЂRead_62/ReadVariableOpЂRead_63/DisableCopyOnReadЂRead_63/ReadVariableOpЂRead_64/DisableCopyOnReadЂRead_64/ReadVariableOpЂRead_65/DisableCopyOnReadЂRead_65/ReadVariableOpЂRead_66/DisableCopyOnReadЂRead_66/ReadVariableOpЂRead_67/DisableCopyOnReadЂRead_67/ReadVariableOpЂRead_68/DisableCopyOnReadЂRead_68/ReadVariableOpЂRead_69/DisableCopyOnReadЂRead_69/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_70/DisableCopyOnReadЂRead_70/ReadVariableOpЂRead_71/DisableCopyOnReadЂRead_71/ReadVariableOpЂRead_72/DisableCopyOnReadЂRead_72/ReadVariableOpЂRead_73/DisableCopyOnReadЂRead_73/ReadVariableOpЂRead_74/DisableCopyOnReadЂRead_74/ReadVariableOpЂRead_75/DisableCopyOnReadЂRead_75/ReadVariableOpЂRead_76/DisableCopyOnReadЂRead_76/ReadVariableOpЂRead_77/DisableCopyOnReadЂRead_77/ReadVariableOpЂRead_78/DisableCopyOnReadЂRead_78/ReadVariableOpЂRead_79/DisableCopyOnReadЂRead_79/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_80/DisableCopyOnReadЂRead_80/ReadVariableOpЂRead_81/DisableCopyOnReadЂRead_81/ReadVariableOpЂRead_82/DisableCopyOnReadЂRead_82/ReadVariableOpЂRead_83/DisableCopyOnReadЂRead_83/ReadVariableOpЂRead_84/DisableCopyOnReadЂRead_84/ReadVariableOpЂRead_85/DisableCopyOnReadЂRead_85/ReadVariableOpЂRead_86/DisableCopyOnReadЂRead_86/ReadVariableOpЂRead_87/DisableCopyOnReadЂRead_87/ReadVariableOpЂRead_88/DisableCopyOnReadЂRead_88/ReadVariableOpЂRead_89/DisableCopyOnReadЂRead_89/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpЂRead_90/DisableCopyOnReadЂRead_90/ReadVariableOpЂRead_91/DisableCopyOnReadЂRead_91/ReadVariableOpЂRead_92/DisableCopyOnReadЂRead_92/ReadVariableOpЂRead_93/DisableCopyOnReadЂRead_93/ReadVariableOpЂRead_94/DisableCopyOnReadЂRead_94/ReadVariableOpЂRead_95/DisableCopyOnReadЂRead_95/ReadVariableOpЂRead_96/DisableCopyOnReadЂRead_96/ReadVariableOpЂRead_97/DisableCopyOnReadЂRead_97/ReadVariableOpЂRead_98/DisableCopyOnReadЂRead_98/ReadVariableOpЂRead_99/DisableCopyOnReadЂRead_99/ReadVariableOpw
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
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 Ј
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:@x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
  
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 А
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 А
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 А
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 А
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_conv2d_4_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_conv2d_4_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 Г
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_conv2d_5_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_conv2d_5_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 Г
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_conv2d_6_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_conv2d_6_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 Г
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_conv2d_7_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_conv2d_7_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 Г
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_conv2d_8_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_conv2d_8_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_conv2d_8_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_18/DisableCopyOnReadDisableCopyOnRead)read_18_disablecopyonread_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 Г
Read_18/ReadVariableOpReadVariableOp)read_18_disablecopyonread_conv2d_9_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@|
Read_19/DisableCopyOnReadDisableCopyOnRead'read_19_disablecopyonread_conv2d_9_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_19/ReadVariableOpReadVariableOp'read_19_disablecopyonread_conv2d_9_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_20/DisableCopyOnReadDisableCopyOnRead*read_20_disablecopyonread_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 Д
Read_20/ReadVariableOpReadVariableOp*read_20_disablecopyonread_conv2d_10_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_21/DisableCopyOnReadDisableCopyOnRead(read_21_disablecopyonread_conv2d_10_bias"/device:CPU:0*
_output_shapes
 І
Read_21/ReadVariableOpReadVariableOp(read_21_disablecopyonread_conv2d_10_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_22/DisableCopyOnReadDisableCopyOnRead*read_22_disablecopyonread_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 Д
Read_22/ReadVariableOpReadVariableOp*read_22_disablecopyonread_conv2d_11_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_23/DisableCopyOnReadDisableCopyOnRead(read_23_disablecopyonread_conv2d_11_bias"/device:CPU:0*
_output_shapes
 І
Read_23/ReadVariableOpReadVariableOp(read_23_disablecopyonread_conv2d_11_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_24/DisableCopyOnReadDisableCopyOnRead*read_24_disablecopyonread_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 Д
Read_24/ReadVariableOpReadVariableOp*read_24_disablecopyonread_conv2d_12_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_conv2d_12_bias"/device:CPU:0*
_output_shapes
 І
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_conv2d_12_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_26/DisableCopyOnReadDisableCopyOnRead*read_26_disablecopyonread_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 Д
Read_26/ReadVariableOpReadVariableOp*read_26_disablecopyonread_conv2d_13_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_27/DisableCopyOnReadDisableCopyOnRead(read_27_disablecopyonread_conv2d_13_bias"/device:CPU:0*
_output_shapes
 І
Read_27/ReadVariableOpReadVariableOp(read_27_disablecopyonread_conv2d_13_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_28/DisableCopyOnReadDisableCopyOnRead*read_28_disablecopyonread_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 Д
Read_28/ReadVariableOpReadVariableOp*read_28_disablecopyonread_conv2d_14_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_29/DisableCopyOnReadDisableCopyOnRead(read_29_disablecopyonread_conv2d_14_bias"/device:CPU:0*
_output_shapes
 І
Read_29/ReadVariableOpReadVariableOp(read_29_disablecopyonread_conv2d_14_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_30/DisableCopyOnReadDisableCopyOnRead*read_30_disablecopyonread_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 Д
Read_30/ReadVariableOpReadVariableOp*read_30_disablecopyonread_conv2d_15_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_31/DisableCopyOnReadDisableCopyOnRead(read_31_disablecopyonread_conv2d_15_bias"/device:CPU:0*
_output_shapes
 І
Read_31/ReadVariableOpReadVariableOp(read_31_disablecopyonread_conv2d_15_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_32/DisableCopyOnReadDisableCopyOnRead*read_32_disablecopyonread_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 Д
Read_32/ReadVariableOpReadVariableOp*read_32_disablecopyonread_conv2d_16_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_33/DisableCopyOnReadDisableCopyOnRead(read_33_disablecopyonread_conv2d_16_bias"/device:CPU:0*
_output_shapes
 І
Read_33/ReadVariableOpReadVariableOp(read_33_disablecopyonread_conv2d_16_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_34/DisableCopyOnReadDisableCopyOnRead*read_34_disablecopyonread_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 Д
Read_34/ReadVariableOpReadVariableOp*read_34_disablecopyonread_conv2d_17_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_35/DisableCopyOnReadDisableCopyOnRead(read_35_disablecopyonread_conv2d_17_bias"/device:CPU:0*
_output_shapes
 І
Read_35/ReadVariableOpReadVariableOp(read_35_disablecopyonread_conv2d_17_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_36/DisableCopyOnReadDisableCopyOnRead*read_36_disablecopyonread_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 Д
Read_36/ReadVariableOpReadVariableOp*read_36_disablecopyonread_conv2d_18_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_37/DisableCopyOnReadDisableCopyOnRead(read_37_disablecopyonread_conv2d_18_bias"/device:CPU:0*
_output_shapes
 І
Read_37/ReadVariableOpReadVariableOp(read_37_disablecopyonread_conv2d_18_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_38/DisableCopyOnReadDisableCopyOnRead*read_38_disablecopyonread_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 Д
Read_38/ReadVariableOpReadVariableOp*read_38_disablecopyonread_conv2d_19_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
:@}
Read_39/DisableCopyOnReadDisableCopyOnRead(read_39_disablecopyonread_conv2d_19_bias"/device:CPU:0*
_output_shapes
 І
Read_39/ReadVariableOpReadVariableOp(read_39_disablecopyonread_conv2d_19_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_40/DisableCopyOnReadDisableCopyOnRead#read_40_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_40/ReadVariableOpReadVariableOp#read_40_disablecopyonread_iteration^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_41/DisableCopyOnReadDisableCopyOnRead'read_41_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ё
Read_41/ReadVariableOpReadVariableOp'read_41_disablecopyonread_learning_rate^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_42/DisableCopyOnReadDisableCopyOnRead.read_42_disablecopyonread_adam_m_conv2d_kernel"/device:CPU:0*
_output_shapes
 И
Read_42/ReadVariableOpReadVariableOp.read_42_disablecopyonread_adam_m_conv2d_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*&
_output_shapes
:@
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_adam_v_conv2d_kernel"/device:CPU:0*
_output_shapes
 И
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_adam_v_conv2d_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*&
_output_shapes
:@
Read_44/DisableCopyOnReadDisableCopyOnRead,read_44_disablecopyonread_adam_m_conv2d_bias"/device:CPU:0*
_output_shapes
 Њ
Read_44/ReadVariableOpReadVariableOp,read_44_disablecopyonread_adam_m_conv2d_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_45/DisableCopyOnReadDisableCopyOnRead,read_45_disablecopyonread_adam_v_conv2d_bias"/device:CPU:0*
_output_shapes
 Њ
Read_45/ReadVariableOpReadVariableOp,read_45_disablecopyonread_adam_v_conv2d_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_46/DisableCopyOnReadDisableCopyOnRead0read_46_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_46/ReadVariableOpReadVariableOp0read_46_disablecopyonread_adam_m_conv2d_1_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_47/DisableCopyOnReadDisableCopyOnRead0read_47_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_47/ReadVariableOpReadVariableOp0read_47_disablecopyonread_adam_v_conv2d_1_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_48/DisableCopyOnReadDisableCopyOnRead.read_48_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_48/ReadVariableOpReadVariableOp.read_48_disablecopyonread_adam_m_conv2d_1_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_49/DisableCopyOnReadDisableCopyOnRead.read_49_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_49/ReadVariableOpReadVariableOp.read_49_disablecopyonread_adam_v_conv2d_1_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_50/DisableCopyOnReadDisableCopyOnRead0read_50_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 К
Read_50/ReadVariableOpReadVariableOp0read_50_disablecopyonread_adam_m_conv2d_2_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_51/DisableCopyOnReadDisableCopyOnRead0read_51_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 К
Read_51/ReadVariableOpReadVariableOp0read_51_disablecopyonread_adam_v_conv2d_2_kernel^Read_51/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_52/DisableCopyOnReadDisableCopyOnRead.read_52_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_52/ReadVariableOpReadVariableOp.read_52_disablecopyonread_adam_m_conv2d_2_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_53/DisableCopyOnReadDisableCopyOnRead.read_53_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_53/ReadVariableOpReadVariableOp.read_53_disablecopyonread_adam_v_conv2d_2_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_54/DisableCopyOnReadDisableCopyOnRead0read_54_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 К
Read_54/ReadVariableOpReadVariableOp0read_54_disablecopyonread_adam_m_conv2d_3_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_55/DisableCopyOnReadDisableCopyOnRead0read_55_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 К
Read_55/ReadVariableOpReadVariableOp0read_55_disablecopyonread_adam_v_conv2d_3_kernel^Read_55/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_56/DisableCopyOnReadDisableCopyOnRead.read_56_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_56/ReadVariableOpReadVariableOp.read_56_disablecopyonread_adam_m_conv2d_3_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_57/DisableCopyOnReadDisableCopyOnRead.read_57_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_57/ReadVariableOpReadVariableOp.read_57_disablecopyonread_adam_v_conv2d_3_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_58/DisableCopyOnReadDisableCopyOnRead0read_58_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 К
Read_58/ReadVariableOpReadVariableOp0read_58_disablecopyonread_adam_m_conv2d_4_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_59/DisableCopyOnReadDisableCopyOnRead0read_59_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 К
Read_59/ReadVariableOpReadVariableOp0read_59_disablecopyonread_adam_v_conv2d_4_kernel^Read_59/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_60/DisableCopyOnReadDisableCopyOnRead.read_60_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_60/ReadVariableOpReadVariableOp.read_60_disablecopyonread_adam_m_conv2d_4_bias^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_61/DisableCopyOnReadDisableCopyOnRead.read_61_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_61/ReadVariableOpReadVariableOp.read_61_disablecopyonread_adam_v_conv2d_4_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_62/DisableCopyOnReadDisableCopyOnRead0read_62_disablecopyonread_adam_m_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 К
Read_62/ReadVariableOpReadVariableOp0read_62_disablecopyonread_adam_m_conv2d_5_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_63/DisableCopyOnReadDisableCopyOnRead0read_63_disablecopyonread_adam_v_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 К
Read_63/ReadVariableOpReadVariableOp0read_63_disablecopyonread_adam_v_conv2d_5_kernel^Read_63/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_64/DisableCopyOnReadDisableCopyOnRead.read_64_disablecopyonread_adam_m_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_64/ReadVariableOpReadVariableOp.read_64_disablecopyonread_adam_m_conv2d_5_bias^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_65/DisableCopyOnReadDisableCopyOnRead.read_65_disablecopyonread_adam_v_conv2d_5_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_65/ReadVariableOpReadVariableOp.read_65_disablecopyonread_adam_v_conv2d_5_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_66/DisableCopyOnReadDisableCopyOnRead0read_66_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 К
Read_66/ReadVariableOpReadVariableOp0read_66_disablecopyonread_adam_m_conv2d_6_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_67/DisableCopyOnReadDisableCopyOnRead0read_67_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 К
Read_67/ReadVariableOpReadVariableOp0read_67_disablecopyonread_adam_v_conv2d_6_kernel^Read_67/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_68/DisableCopyOnReadDisableCopyOnRead.read_68_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_68/ReadVariableOpReadVariableOp.read_68_disablecopyonread_adam_m_conv2d_6_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_69/DisableCopyOnReadDisableCopyOnRead.read_69_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_69/ReadVariableOpReadVariableOp.read_69_disablecopyonread_adam_v_conv2d_6_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_70/DisableCopyOnReadDisableCopyOnRead0read_70_disablecopyonread_adam_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 К
Read_70/ReadVariableOpReadVariableOp0read_70_disablecopyonread_adam_m_conv2d_7_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_71/DisableCopyOnReadDisableCopyOnRead0read_71_disablecopyonread_adam_v_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 К
Read_71/ReadVariableOpReadVariableOp0read_71_disablecopyonread_adam_v_conv2d_7_kernel^Read_71/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_72/DisableCopyOnReadDisableCopyOnRead.read_72_disablecopyonread_adam_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_72/ReadVariableOpReadVariableOp.read_72_disablecopyonread_adam_m_conv2d_7_bias^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_73/DisableCopyOnReadDisableCopyOnRead.read_73_disablecopyonread_adam_v_conv2d_7_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_73/ReadVariableOpReadVariableOp.read_73_disablecopyonread_adam_v_conv2d_7_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_74/DisableCopyOnReadDisableCopyOnRead0read_74_disablecopyonread_adam_m_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 К
Read_74/ReadVariableOpReadVariableOp0read_74_disablecopyonread_adam_m_conv2d_8_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_75/DisableCopyOnReadDisableCopyOnRead0read_75_disablecopyonread_adam_v_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 К
Read_75/ReadVariableOpReadVariableOp0read_75_disablecopyonread_adam_v_conv2d_8_kernel^Read_75/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_76/DisableCopyOnReadDisableCopyOnRead.read_76_disablecopyonread_adam_m_conv2d_8_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_76/ReadVariableOpReadVariableOp.read_76_disablecopyonread_adam_m_conv2d_8_bias^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_77/DisableCopyOnReadDisableCopyOnRead.read_77_disablecopyonread_adam_v_conv2d_8_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_77/ReadVariableOpReadVariableOp.read_77_disablecopyonread_adam_v_conv2d_8_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_78/DisableCopyOnReadDisableCopyOnRead0read_78_disablecopyonread_adam_m_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 К
Read_78/ReadVariableOpReadVariableOp0read_78_disablecopyonread_adam_m_conv2d_9_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_79/DisableCopyOnReadDisableCopyOnRead0read_79_disablecopyonread_adam_v_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 К
Read_79/ReadVariableOpReadVariableOp0read_79_disablecopyonread_adam_v_conv2d_9_kernel^Read_79/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_80/DisableCopyOnReadDisableCopyOnRead.read_80_disablecopyonread_adam_m_conv2d_9_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_80/ReadVariableOpReadVariableOp.read_80_disablecopyonread_adam_m_conv2d_9_bias^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_81/DisableCopyOnReadDisableCopyOnRead.read_81_disablecopyonread_adam_v_conv2d_9_bias"/device:CPU:0*
_output_shapes
 Ќ
Read_81/ReadVariableOpReadVariableOp.read_81_disablecopyonread_adam_v_conv2d_9_bias^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_82/DisableCopyOnReadDisableCopyOnRead1read_82_disablecopyonread_adam_m_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 Л
Read_82/ReadVariableOpReadVariableOp1read_82_disablecopyonread_adam_m_conv2d_10_kernel^Read_82/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_83/DisableCopyOnReadDisableCopyOnRead1read_83_disablecopyonread_adam_v_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 Л
Read_83/ReadVariableOpReadVariableOp1read_83_disablecopyonread_adam_v_conv2d_10_kernel^Read_83/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_84/DisableCopyOnReadDisableCopyOnRead/read_84_disablecopyonread_adam_m_conv2d_10_bias"/device:CPU:0*
_output_shapes
 ­
Read_84/ReadVariableOpReadVariableOp/read_84_disablecopyonread_adam_m_conv2d_10_bias^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_85/DisableCopyOnReadDisableCopyOnRead/read_85_disablecopyonread_adam_v_conv2d_10_bias"/device:CPU:0*
_output_shapes
 ­
Read_85/ReadVariableOpReadVariableOp/read_85_disablecopyonread_adam_v_conv2d_10_bias^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_86/DisableCopyOnReadDisableCopyOnRead1read_86_disablecopyonread_adam_m_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 Л
Read_86/ReadVariableOpReadVariableOp1read_86_disablecopyonread_adam_m_conv2d_11_kernel^Read_86/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_87/DisableCopyOnReadDisableCopyOnRead1read_87_disablecopyonread_adam_v_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 Л
Read_87/ReadVariableOpReadVariableOp1read_87_disablecopyonread_adam_v_conv2d_11_kernel^Read_87/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_88/DisableCopyOnReadDisableCopyOnRead/read_88_disablecopyonread_adam_m_conv2d_11_bias"/device:CPU:0*
_output_shapes
 ­
Read_88/ReadVariableOpReadVariableOp/read_88_disablecopyonread_adam_m_conv2d_11_bias^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_89/DisableCopyOnReadDisableCopyOnRead/read_89_disablecopyonread_adam_v_conv2d_11_bias"/device:CPU:0*
_output_shapes
 ­
Read_89/ReadVariableOpReadVariableOp/read_89_disablecopyonread_adam_v_conv2d_11_bias^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_90/DisableCopyOnReadDisableCopyOnRead1read_90_disablecopyonread_adam_m_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 Л
Read_90/ReadVariableOpReadVariableOp1read_90_disablecopyonread_adam_m_conv2d_12_kernel^Read_90/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_91/DisableCopyOnReadDisableCopyOnRead1read_91_disablecopyonread_adam_v_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 Л
Read_91/ReadVariableOpReadVariableOp1read_91_disablecopyonread_adam_v_conv2d_12_kernel^Read_91/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_92/DisableCopyOnReadDisableCopyOnRead/read_92_disablecopyonread_adam_m_conv2d_12_bias"/device:CPU:0*
_output_shapes
 ­
Read_92/ReadVariableOpReadVariableOp/read_92_disablecopyonread_adam_m_conv2d_12_bias^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_93/DisableCopyOnReadDisableCopyOnRead/read_93_disablecopyonread_adam_v_conv2d_12_bias"/device:CPU:0*
_output_shapes
 ­
Read_93/ReadVariableOpReadVariableOp/read_93_disablecopyonread_adam_v_conv2d_12_bias^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_94/DisableCopyOnReadDisableCopyOnRead1read_94_disablecopyonread_adam_m_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 Л
Read_94/ReadVariableOpReadVariableOp1read_94_disablecopyonread_adam_m_conv2d_13_kernel^Read_94/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_95/DisableCopyOnReadDisableCopyOnRead1read_95_disablecopyonread_adam_v_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 Л
Read_95/ReadVariableOpReadVariableOp1read_95_disablecopyonread_adam_v_conv2d_13_kernel^Read_95/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_96/DisableCopyOnReadDisableCopyOnRead/read_96_disablecopyonread_adam_m_conv2d_13_bias"/device:CPU:0*
_output_shapes
 ­
Read_96/ReadVariableOpReadVariableOp/read_96_disablecopyonread_adam_m_conv2d_13_bias^Read_96/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_97/DisableCopyOnReadDisableCopyOnRead/read_97_disablecopyonread_adam_v_conv2d_13_bias"/device:CPU:0*
_output_shapes
 ­
Read_97/ReadVariableOpReadVariableOp/read_97_disablecopyonread_adam_v_conv2d_13_bias^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_98/DisableCopyOnReadDisableCopyOnRead1read_98_disablecopyonread_adam_m_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 Л
Read_98/ReadVariableOpReadVariableOp1read_98_disablecopyonread_adam_m_conv2d_14_kernel^Read_98/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_99/DisableCopyOnReadDisableCopyOnRead1read_99_disablecopyonread_adam_v_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 Л
Read_99/ReadVariableOpReadVariableOp1read_99_disablecopyonread_adam_v_conv2d_14_kernel^Read_99/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_100/DisableCopyOnReadDisableCopyOnRead0read_100_disablecopyonread_adam_m_conv2d_14_bias"/device:CPU:0*
_output_shapes
 А
Read_100/ReadVariableOpReadVariableOp0read_100_disablecopyonread_adam_m_conv2d_14_bias^Read_100/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_101/DisableCopyOnReadDisableCopyOnRead0read_101_disablecopyonread_adam_v_conv2d_14_bias"/device:CPU:0*
_output_shapes
 А
Read_101/ReadVariableOpReadVariableOp0read_101_disablecopyonread_adam_v_conv2d_14_bias^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_102/DisableCopyOnReadDisableCopyOnRead2read_102_disablecopyonread_adam_m_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 О
Read_102/ReadVariableOpReadVariableOp2read_102_disablecopyonread_adam_m_conv2d_15_kernel^Read_102/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_103/DisableCopyOnReadDisableCopyOnRead2read_103_disablecopyonread_adam_v_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 О
Read_103/ReadVariableOpReadVariableOp2read_103_disablecopyonread_adam_v_conv2d_15_kernel^Read_103/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_104/DisableCopyOnReadDisableCopyOnRead0read_104_disablecopyonread_adam_m_conv2d_15_bias"/device:CPU:0*
_output_shapes
 А
Read_104/ReadVariableOpReadVariableOp0read_104_disablecopyonread_adam_m_conv2d_15_bias^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_105/DisableCopyOnReadDisableCopyOnRead0read_105_disablecopyonread_adam_v_conv2d_15_bias"/device:CPU:0*
_output_shapes
 А
Read_105/ReadVariableOpReadVariableOp0read_105_disablecopyonread_adam_v_conv2d_15_bias^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_106/DisableCopyOnReadDisableCopyOnRead2read_106_disablecopyonread_adam_m_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 О
Read_106/ReadVariableOpReadVariableOp2read_106_disablecopyonread_adam_m_conv2d_16_kernel^Read_106/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_107/DisableCopyOnReadDisableCopyOnRead2read_107_disablecopyonread_adam_v_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 О
Read_107/ReadVariableOpReadVariableOp2read_107_disablecopyonread_adam_v_conv2d_16_kernel^Read_107/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_108/DisableCopyOnReadDisableCopyOnRead0read_108_disablecopyonread_adam_m_conv2d_16_bias"/device:CPU:0*
_output_shapes
 А
Read_108/ReadVariableOpReadVariableOp0read_108_disablecopyonread_adam_m_conv2d_16_bias^Read_108/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_109/DisableCopyOnReadDisableCopyOnRead0read_109_disablecopyonread_adam_v_conv2d_16_bias"/device:CPU:0*
_output_shapes
 А
Read_109/ReadVariableOpReadVariableOp0read_109_disablecopyonread_adam_v_conv2d_16_bias^Read_109/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_110/DisableCopyOnReadDisableCopyOnRead2read_110_disablecopyonread_adam_m_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 О
Read_110/ReadVariableOpReadVariableOp2read_110_disablecopyonread_adam_m_conv2d_17_kernel^Read_110/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_111/DisableCopyOnReadDisableCopyOnRead2read_111_disablecopyonread_adam_v_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 О
Read_111/ReadVariableOpReadVariableOp2read_111_disablecopyonread_adam_v_conv2d_17_kernel^Read_111/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_112/DisableCopyOnReadDisableCopyOnRead0read_112_disablecopyonread_adam_m_conv2d_17_bias"/device:CPU:0*
_output_shapes
 А
Read_112/ReadVariableOpReadVariableOp0read_112_disablecopyonread_adam_m_conv2d_17_bias^Read_112/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_113/DisableCopyOnReadDisableCopyOnRead0read_113_disablecopyonread_adam_v_conv2d_17_bias"/device:CPU:0*
_output_shapes
 А
Read_113/ReadVariableOpReadVariableOp0read_113_disablecopyonread_adam_v_conv2d_17_bias^Read_113/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_226IdentityRead_113/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_114/DisableCopyOnReadDisableCopyOnRead2read_114_disablecopyonread_adam_m_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 О
Read_114/ReadVariableOpReadVariableOp2read_114_disablecopyonread_adam_m_conv2d_18_kernel^Read_114/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_228IdentityRead_114/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_115/DisableCopyOnReadDisableCopyOnRead2read_115_disablecopyonread_adam_v_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 О
Read_115/ReadVariableOpReadVariableOp2read_115_disablecopyonread_adam_v_conv2d_18_kernel^Read_115/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0y
Identity_230IdentityRead_115/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_231IdentityIdentity_230:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@
Read_116/DisableCopyOnReadDisableCopyOnRead0read_116_disablecopyonread_adam_m_conv2d_18_bias"/device:CPU:0*
_output_shapes
 А
Read_116/ReadVariableOpReadVariableOp0read_116_disablecopyonread_adam_m_conv2d_18_bias^Read_116/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_232IdentityRead_116/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_233IdentityIdentity_232:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_117/DisableCopyOnReadDisableCopyOnRead0read_117_disablecopyonread_adam_v_conv2d_18_bias"/device:CPU:0*
_output_shapes
 А
Read_117/ReadVariableOpReadVariableOp0read_117_disablecopyonread_adam_v_conv2d_18_bias^Read_117/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_234IdentityRead_117/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_235IdentityIdentity_234:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_118/DisableCopyOnReadDisableCopyOnRead2read_118_disablecopyonread_adam_m_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 О
Read_118/ReadVariableOpReadVariableOp2read_118_disablecopyonread_adam_m_conv2d_19_kernel^Read_118/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0y
Identity_236IdentityRead_118/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_237IdentityIdentity_236:output:0"/device:CPU:0*
T0*&
_output_shapes
:@
Read_119/DisableCopyOnReadDisableCopyOnRead2read_119_disablecopyonread_adam_v_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 О
Read_119/ReadVariableOpReadVariableOp2read_119_disablecopyonread_adam_v_conv2d_19_kernel^Read_119/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0y
Identity_238IdentityRead_119/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_239IdentityIdentity_238:output:0"/device:CPU:0*
T0*&
_output_shapes
:@
Read_120/DisableCopyOnReadDisableCopyOnRead0read_120_disablecopyonread_adam_m_conv2d_19_bias"/device:CPU:0*
_output_shapes
 А
Read_120/ReadVariableOpReadVariableOp0read_120_disablecopyonread_adam_m_conv2d_19_bias^Read_120/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_240IdentityRead_120/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_241IdentityIdentity_240:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_121/DisableCopyOnReadDisableCopyOnRead0read_121_disablecopyonread_adam_v_conv2d_19_bias"/device:CPU:0*
_output_shapes
 А
Read_121/ReadVariableOpReadVariableOp0read_121_disablecopyonread_adam_v_conv2d_19_bias^Read_121/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_242IdentityRead_121/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_243IdentityIdentity_242:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_122/DisableCopyOnReadDisableCopyOnRead"read_122_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 
Read_122/ReadVariableOpReadVariableOp"read_122_disablecopyonread_total_1^Read_122/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_244IdentityRead_122/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_245IdentityIdentity_244:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_123/DisableCopyOnReadDisableCopyOnRead"read_123_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 
Read_123/ReadVariableOpReadVariableOp"read_123_disablecopyonread_count_1^Read_123/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_246IdentityRead_123/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_247IdentityIdentity_246:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_124/DisableCopyOnReadDisableCopyOnRead read_124_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_124/ReadVariableOpReadVariableOp read_124_disablecopyonread_total^Read_124/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_248IdentityRead_124/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_249IdentityIdentity_248:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_125/DisableCopyOnReadDisableCopyOnRead read_125_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_125/ReadVariableOpReadVariableOp read_125_disablecopyonread_count^Read_125/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_250IdentityRead_125/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_251IdentityIdentity_250:output:0"/device:CPU:0*
T0*
_output_shapes
: о0
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*0
value§/Bњ/B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/79/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/80/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHю
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B є
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0Identity_231:output:0Identity_233:output:0Identity_235:output:0Identity_237:output:0Identity_239:output:0Identity_241:output:0Identity_243:output:0Identity_245:output:0Identity_247:output:0Identity_249:output:0Identity_251:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_252Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_253IdentityIdentity_252:output:0^NoOp*
T0*
_output_shapes
: щ4
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_115/DisableCopyOnRead^Read_115/ReadVariableOp^Read_116/DisableCopyOnRead^Read_116/ReadVariableOp^Read_117/DisableCopyOnRead^Read_117/ReadVariableOp^Read_118/DisableCopyOnRead^Read_118/ReadVariableOp^Read_119/DisableCopyOnRead^Read_119/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_120/DisableCopyOnRead^Read_120/ReadVariableOp^Read_121/DisableCopyOnRead^Read_121/ReadVariableOp^Read_122/DisableCopyOnRead^Read_122/ReadVariableOp^Read_123/DisableCopyOnRead^Read_123/ReadVariableOp^Read_124/DisableCopyOnRead^Read_124/ReadVariableOp^Read_125/DisableCopyOnRead^Read_125/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_253Identity_253:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp28
Read_115/DisableCopyOnReadRead_115/DisableCopyOnRead22
Read_115/ReadVariableOpRead_115/ReadVariableOp28
Read_116/DisableCopyOnReadRead_116/DisableCopyOnRead22
Read_116/ReadVariableOpRead_116/ReadVariableOp28
Read_117/DisableCopyOnReadRead_117/DisableCopyOnRead22
Read_117/ReadVariableOpRead_117/ReadVariableOp28
Read_118/DisableCopyOnReadRead_118/DisableCopyOnRead22
Read_118/ReadVariableOpRead_118/ReadVariableOp28
Read_119/DisableCopyOnReadRead_119/DisableCopyOnRead22
Read_119/ReadVariableOpRead_119/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp28
Read_120/DisableCopyOnReadRead_120/DisableCopyOnRead22
Read_120/ReadVariableOpRead_120/ReadVariableOp28
Read_121/DisableCopyOnReadRead_121/DisableCopyOnRead22
Read_121/ReadVariableOpRead_121/ReadVariableOp28
Read_122/DisableCopyOnReadRead_122/DisableCopyOnRead22
Read_122/ReadVariableOpRead_122/ReadVariableOp28
Read_123/DisableCopyOnReadRead_123/DisableCopyOnRead22
Read_123/ReadVariableOpRead_123/ReadVariableOp28
Read_124/DisableCopyOnReadRead_124/DisableCopyOnRead22
Read_124/ReadVariableOpRead_124/ReadVariableOp28
Read_125/DisableCopyOnReadRead_125/DisableCopyOnRead22
Read_125/ReadVariableOpRead_125/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_3/bias:/	+
)
_user_specified_nameconv2d_4/kernel:-
)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_5/kernel:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_6/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_8/kernel:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_9/kernel:-)
'
_user_specified_nameconv2d_9/bias:0,
*
_user_specified_nameconv2d_10/kernel:.*
(
_user_specified_nameconv2d_10/bias:0,
*
_user_specified_nameconv2d_11/kernel:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_12/kernel:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_13/kernel:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_14/kernel:.*
(
_user_specified_nameconv2d_14/bias:0,
*
_user_specified_nameconv2d_15/kernel:. *
(
_user_specified_nameconv2d_15/bias:0!,
*
_user_specified_nameconv2d_16/kernel:."*
(
_user_specified_nameconv2d_16/bias:0#,
*
_user_specified_nameconv2d_17/kernel:.$*
(
_user_specified_nameconv2d_17/bias:0%,
*
_user_specified_nameconv2d_18/kernel:.&*
(
_user_specified_nameconv2d_18/bias:0',
*
_user_specified_nameconv2d_19/kernel:.(*
(
_user_specified_nameconv2d_19/bias:))%
#
_user_specified_name	iteration:-*)
'
_user_specified_namelearning_rate:4+0
.
_user_specified_nameAdam/m/conv2d/kernel:4,0
.
_user_specified_nameAdam/v/conv2d/kernel:2-.
,
_user_specified_nameAdam/m/conv2d/bias:2..
,
_user_specified_nameAdam/v/conv2d/bias:6/2
0
_user_specified_nameAdam/m/conv2d_1/kernel:602
0
_user_specified_nameAdam/v/conv2d_1/kernel:410
.
_user_specified_nameAdam/m/conv2d_1/bias:420
.
_user_specified_nameAdam/v/conv2d_1/bias:632
0
_user_specified_nameAdam/m/conv2d_2/kernel:642
0
_user_specified_nameAdam/v/conv2d_2/kernel:450
.
_user_specified_nameAdam/m/conv2d_2/bias:460
.
_user_specified_nameAdam/v/conv2d_2/bias:672
0
_user_specified_nameAdam/m/conv2d_3/kernel:682
0
_user_specified_nameAdam/v/conv2d_3/kernel:490
.
_user_specified_nameAdam/m/conv2d_3/bias:4:0
.
_user_specified_nameAdam/v/conv2d_3/bias:6;2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6<2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4=0
.
_user_specified_nameAdam/m/conv2d_4/bias:4>0
.
_user_specified_nameAdam/v/conv2d_4/bias:6?2
0
_user_specified_nameAdam/m/conv2d_5/kernel:6@2
0
_user_specified_nameAdam/v/conv2d_5/kernel:4A0
.
_user_specified_nameAdam/m/conv2d_5/bias:4B0
.
_user_specified_nameAdam/v/conv2d_5/bias:6C2
0
_user_specified_nameAdam/m/conv2d_6/kernel:6D2
0
_user_specified_nameAdam/v/conv2d_6/kernel:4E0
.
_user_specified_nameAdam/m/conv2d_6/bias:4F0
.
_user_specified_nameAdam/v/conv2d_6/bias:6G2
0
_user_specified_nameAdam/m/conv2d_7/kernel:6H2
0
_user_specified_nameAdam/v/conv2d_7/kernel:4I0
.
_user_specified_nameAdam/m/conv2d_7/bias:4J0
.
_user_specified_nameAdam/v/conv2d_7/bias:6K2
0
_user_specified_nameAdam/m/conv2d_8/kernel:6L2
0
_user_specified_nameAdam/v/conv2d_8/kernel:4M0
.
_user_specified_nameAdam/m/conv2d_8/bias:4N0
.
_user_specified_nameAdam/v/conv2d_8/bias:6O2
0
_user_specified_nameAdam/m/conv2d_9/kernel:6P2
0
_user_specified_nameAdam/v/conv2d_9/kernel:4Q0
.
_user_specified_nameAdam/m/conv2d_9/bias:4R0
.
_user_specified_nameAdam/v/conv2d_9/bias:7S3
1
_user_specified_nameAdam/m/conv2d_10/kernel:7T3
1
_user_specified_nameAdam/v/conv2d_10/kernel:5U1
/
_user_specified_nameAdam/m/conv2d_10/bias:5V1
/
_user_specified_nameAdam/v/conv2d_10/bias:7W3
1
_user_specified_nameAdam/m/conv2d_11/kernel:7X3
1
_user_specified_nameAdam/v/conv2d_11/kernel:5Y1
/
_user_specified_nameAdam/m/conv2d_11/bias:5Z1
/
_user_specified_nameAdam/v/conv2d_11/bias:7[3
1
_user_specified_nameAdam/m/conv2d_12/kernel:7\3
1
_user_specified_nameAdam/v/conv2d_12/kernel:5]1
/
_user_specified_nameAdam/m/conv2d_12/bias:5^1
/
_user_specified_nameAdam/v/conv2d_12/bias:7_3
1
_user_specified_nameAdam/m/conv2d_13/kernel:7`3
1
_user_specified_nameAdam/v/conv2d_13/kernel:5a1
/
_user_specified_nameAdam/m/conv2d_13/bias:5b1
/
_user_specified_nameAdam/v/conv2d_13/bias:7c3
1
_user_specified_nameAdam/m/conv2d_14/kernel:7d3
1
_user_specified_nameAdam/v/conv2d_14/kernel:5e1
/
_user_specified_nameAdam/m/conv2d_14/bias:5f1
/
_user_specified_nameAdam/v/conv2d_14/bias:7g3
1
_user_specified_nameAdam/m/conv2d_15/kernel:7h3
1
_user_specified_nameAdam/v/conv2d_15/kernel:5i1
/
_user_specified_nameAdam/m/conv2d_15/bias:5j1
/
_user_specified_nameAdam/v/conv2d_15/bias:7k3
1
_user_specified_nameAdam/m/conv2d_16/kernel:7l3
1
_user_specified_nameAdam/v/conv2d_16/kernel:5m1
/
_user_specified_nameAdam/m/conv2d_16/bias:5n1
/
_user_specified_nameAdam/v/conv2d_16/bias:7o3
1
_user_specified_nameAdam/m/conv2d_17/kernel:7p3
1
_user_specified_nameAdam/v/conv2d_17/kernel:5q1
/
_user_specified_nameAdam/m/conv2d_17/bias:5r1
/
_user_specified_nameAdam/v/conv2d_17/bias:7s3
1
_user_specified_nameAdam/m/conv2d_18/kernel:7t3
1
_user_specified_nameAdam/v/conv2d_18/kernel:5u1
/
_user_specified_nameAdam/m/conv2d_18/bias:5v1
/
_user_specified_nameAdam/v/conv2d_18/bias:7w3
1
_user_specified_nameAdam/m/conv2d_19/kernel:7x3
1
_user_specified_nameAdam/v/conv2d_19/kernel:5y1
/
_user_specified_nameAdam/m/conv2d_19/bias:5z1
/
_user_specified_nameAdam/v/conv2d_19/bias:'{#
!
_user_specified_name	total_1:'|#
!
_user_specified_name	count_1:%}!

_user_specified_nametotal:%~!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst

ќ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_42388

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

ќ
C__inference_conv2d_7_layer_call_and_return_conditional_losses_42368

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ю
U
!__inference__update_step_xla_9764
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
"
а

#__inference_signature_wrapper_42196
input_1!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19:@@

unknown_20:@$

unknown_21:@@

unknown_22:@$

unknown_23:@@

unknown_24:@$

unknown_25:@@

unknown_26:@$

unknown_27:@@

unknown_28:@$

unknown_29:@@

unknown_30:@$

unknown_31:@@

unknown_32:@$

unknown_33:@@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37:@

unknown_38:
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_40977
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1:%!

_user_specified_name42114:%!

_user_specified_name42116:%!

_user_specified_name42118:%!

_user_specified_name42120:%!

_user_specified_name42122:%!

_user_specified_name42124:%!

_user_specified_name42126:%!

_user_specified_name42128:%	!

_user_specified_name42130:%
!

_user_specified_name42132:%!

_user_specified_name42134:%!

_user_specified_name42136:%!

_user_specified_name42138:%!

_user_specified_name42140:%!

_user_specified_name42142:%!

_user_specified_name42144:%!

_user_specified_name42146:%!

_user_specified_name42148:%!

_user_specified_name42150:%!

_user_specified_name42152:%!

_user_specified_name42154:%!

_user_specified_name42156:%!

_user_specified_name42158:%!

_user_specified_name42160:%!

_user_specified_name42162:%!

_user_specified_name42164:%!

_user_specified_name42166:%!

_user_specified_name42168:%!

_user_specified_name42170:%!

_user_specified_name42172:%!

_user_specified_name42174:% !

_user_specified_name42176:%!!

_user_specified_name42178:%"!

_user_specified_name42180:%#!

_user_specified_name42182:%$!

_user_specified_name42184:%%!

_user_specified_name42186:%&!

_user_specified_name42188:%'!

_user_specified_name42190:%(!

_user_specified_name42192
Њ
I
!__inference__update_step_xla_9899
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9774
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њ
I
!__inference__update_step_xla_9869
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
р

)__inference_conv2d_12_layer_call_fn_42457

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_41182
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42451:%!

_user_specified_name42453
v
о
E__inference_sequential_layer_call_and_return_conditional_losses_41404
conv2d_input&
conv2d_41303:@
conv2d_41305:@(
conv2d_1_41308:@@
conv2d_1_41310:@(
conv2d_2_41313:@@
conv2d_2_41315:@(
conv2d_3_41318:@@
conv2d_3_41320:@(
conv2d_4_41323:@@
conv2d_4_41325:@(
conv2d_5_41328:@@
conv2d_5_41330:@(
conv2d_6_41333:@@
conv2d_6_41335:@(
conv2d_7_41338:@@
conv2d_7_41340:@(
conv2d_8_41343:@@
conv2d_8_41345:@(
conv2d_9_41348:@@
conv2d_9_41350:@)
conv2d_10_41353:@@
conv2d_10_41355:@)
conv2d_11_41358:@@
conv2d_11_41360:@)
conv2d_12_41363:@@
conv2d_12_41365:@)
conv2d_13_41368:@@
conv2d_13_41370:@)
conv2d_14_41373:@@
conv2d_14_41375:@)
conv2d_15_41378:@@
conv2d_15_41380:@)
conv2d_16_41383:@@
conv2d_16_41385:@)
conv2d_17_41388:@@
conv2d_17_41390:@)
conv2d_18_41393:@@
conv2d_18_41395:@)
conv2d_19_41398:@
conv2d_19_41400:
identityЂconv2d/StatefulPartitionedCallЂ conv2d_1/StatefulPartitionedCallЂ!conv2d_10/StatefulPartitionedCallЂ!conv2d_11/StatefulPartitionedCallЂ!conv2d_12/StatefulPartitionedCallЂ!conv2d_13/StatefulPartitionedCallЂ!conv2d_14/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЂ conv2d_2/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂ conv2d_6/StatefulPartitionedCallЂ conv2d_7/StatefulPartitionedCallЂ conv2d_8/StatefulPartitionedCallЂ conv2d_9/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_41303conv2d_41305*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_40990Ћ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_41308conv2d_1_41310*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_41006­
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_41313conv2d_2_41315*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_41022­
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_41318conv2d_3_41320*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_41038­
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0conv2d_4_41323conv2d_4_41325*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_41054­
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_41328conv2d_5_41330*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_41070­
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_41333conv2d_6_41335*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_41086­
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_41338conv2d_7_41340*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_41102­
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0conv2d_8_41343conv2d_8_41345*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_41118­
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0conv2d_9_41348conv2d_9_41350*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_41134Б
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0conv2d_10_41353conv2d_10_41355*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_41150В
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0conv2d_11_41358conv2d_11_41360*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_41166В
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0conv2d_12_41363conv2d_12_41365*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_41182В
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0conv2d_13_41368conv2d_13_41370*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_41198В
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0conv2d_14_41373conv2d_14_41375*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_41214В
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0conv2d_15_41378conv2d_15_41380*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_41230В
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0conv2d_16_41383conv2d_16_41385*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_41246В
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0conv2d_17_41388conv2d_17_41390*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_41262В
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0conv2d_18_41393conv2d_18_41395*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_41278В
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_41398conv2d_19_41400*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_41293
IdentityIdentity*conv2d_19/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџц
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall:o k
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
&
_user_specified_nameconv2d_input:%!

_user_specified_name41303:%!

_user_specified_name41305:%!

_user_specified_name41308:%!

_user_specified_name41310:%!

_user_specified_name41313:%!

_user_specified_name41315:%!

_user_specified_name41318:%!

_user_specified_name41320:%	!

_user_specified_name41323:%
!

_user_specified_name41325:%!

_user_specified_name41328:%!

_user_specified_name41330:%!

_user_specified_name41333:%!

_user_specified_name41335:%!

_user_specified_name41338:%!

_user_specified_name41340:%!

_user_specified_name41343:%!

_user_specified_name41345:%!

_user_specified_name41348:%!

_user_specified_name41350:%!

_user_specified_name41353:%!

_user_specified_name41355:%!

_user_specified_name41358:%!

_user_specified_name41360:%!

_user_specified_name41363:%!

_user_specified_name41365:%!

_user_specified_name41368:%!

_user_specified_name41370:%!

_user_specified_name41373:%!

_user_specified_name41375:%!

_user_specified_name41378:% !

_user_specified_name41380:%!!

_user_specified_name41383:%"!

_user_specified_name41385:%#!

_user_specified_name41388:%$!

_user_specified_name41390:%%!

_user_specified_name41393:%&!

_user_specified_name41395:%'!

_user_specified_name41398:%(!

_user_specified_name41400
Њ
I
!__inference__update_step_xla_9729
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Е
O
#__inference_add_layer_call_fn_42202
inputs_0
inputs_1
identityг
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_41843z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_1

ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_41022

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
§
D__inference_conv2d_16_layer_call_and_return_conditional_losses_41246

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
§
D__inference_conv2d_10_layer_call_and_return_conditional_losses_42428

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_42328

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
§
D__inference_conv2d_18_layer_call_and_return_conditional_losses_41278

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ю
U
!__inference__update_step_xla_9874
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_9_layer_call_and_return_conditional_losses_42408

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
В
§
D__inference_conv2d_19_layer_call_and_return_conditional_losses_41293

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџy
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

њ
A__inference_conv2d_layer_call_and_return_conditional_losses_42228

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њ
I
!__inference__update_step_xla_9829
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
р

)__inference_conv2d_10_layer_call_fn_42417

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_41150
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42411:%!

_user_specified_name42413
Ю
U
!__inference__update_step_xla_9884
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Э"
м

*__inference_sequential_layer_call_fn_41489
conv2d_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@$

unknown_19:@@

unknown_20:@$

unknown_21:@@

unknown_22:@$

unknown_23:@@

unknown_24:@$

unknown_25:@@

unknown_26:@$

unknown_27:@@

unknown_28:@$

unknown_29:@@

unknown_30:@$

unknown_31:@@

unknown_32:@$

unknown_33:@@

unknown_34:@$

unknown_35:@@

unknown_36:@$

unknown_37:@

unknown_38:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_41300
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:o k
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
&
_user_specified_nameconv2d_input:%!

_user_specified_name41407:%!

_user_specified_name41409:%!

_user_specified_name41411:%!

_user_specified_name41413:%!

_user_specified_name41415:%!

_user_specified_name41417:%!

_user_specified_name41419:%!

_user_specified_name41421:%	!

_user_specified_name41423:%
!

_user_specified_name41425:%!

_user_specified_name41427:%!

_user_specified_name41429:%!

_user_specified_name41431:%!

_user_specified_name41433:%!

_user_specified_name41435:%!

_user_specified_name41437:%!

_user_specified_name41439:%!

_user_specified_name41441:%!

_user_specified_name41443:%!

_user_specified_name41445:%!

_user_specified_name41447:%!

_user_specified_name41449:%!

_user_specified_name41451:%!

_user_specified_name41453:%!

_user_specified_name41455:%!

_user_specified_name41457:%!

_user_specified_name41459:%!

_user_specified_name41461:%!

_user_specified_name41463:%!

_user_specified_name41465:%!

_user_specified_name41467:% !

_user_specified_name41469:%!!

_user_specified_name41471:%"!

_user_specified_name41473:%#!

_user_specified_name41475:%$!

_user_specified_name41477:%%!

_user_specified_name41479:%&!

_user_specified_name41481:%'!

_user_specified_name41483:%(!

_user_specified_name41485
Ю
U
!__inference__update_step_xla_9854
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
о

(__inference_conv2d_4_layer_call_fn_42297

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_41054
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42291:%!

_user_specified_name42293
§)
ѕ
@__inference_model_layer_call_and_return_conditional_losses_41932
input_1*
sequential_41849:@
sequential_41851:@*
sequential_41853:@@
sequential_41855:@*
sequential_41857:@@
sequential_41859:@*
sequential_41861:@@
sequential_41863:@*
sequential_41865:@@
sequential_41867:@*
sequential_41869:@@
sequential_41871:@*
sequential_41873:@@
sequential_41875:@*
sequential_41877:@@
sequential_41879:@*
sequential_41881:@@
sequential_41883:@*
sequential_41885:@@
sequential_41887:@*
sequential_41889:@@
sequential_41891:@*
sequential_41893:@@
sequential_41895:@*
sequential_41897:@@
sequential_41899:@*
sequential_41901:@@
sequential_41903:@*
sequential_41905:@@
sequential_41907:@*
sequential_41909:@@
sequential_41911:@*
sequential_41913:@@
sequential_41915:@*
sequential_41917:@@
sequential_41919:@*
sequential_41921:@@
sequential_41923:@*
sequential_41925:@
sequential_41927:
identityЂ"sequential/StatefulPartitionedCall	
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_41849sequential_41851sequential_41853sequential_41855sequential_41857sequential_41859sequential_41861sequential_41863sequential_41865sequential_41867sequential_41869sequential_41871sequential_41873sequential_41875sequential_41877sequential_41879sequential_41881sequential_41883sequential_41885sequential_41887sequential_41889sequential_41891sequential_41893sequential_41895sequential_41897sequential_41899sequential_41901sequential_41903sequential_41905sequential_41907sequential_41909sequential_41911sequential_41913sequential_41915sequential_41917sequential_41919sequential_41921sequential_41923sequential_41925sequential_41927*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_41404љ
add/PartitionedCallPartitionedCallinput_1+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_41843
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџG
NoOpNoOp#^sequential/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1:%!

_user_specified_name41849:%!

_user_specified_name41851:%!

_user_specified_name41853:%!

_user_specified_name41855:%!

_user_specified_name41857:%!

_user_specified_name41859:%!

_user_specified_name41861:%!

_user_specified_name41863:%	!

_user_specified_name41865:%
!

_user_specified_name41867:%!

_user_specified_name41869:%!

_user_specified_name41871:%!

_user_specified_name41873:%!

_user_specified_name41875:%!

_user_specified_name41877:%!

_user_specified_name41879:%!

_user_specified_name41881:%!

_user_specified_name41883:%!

_user_specified_name41885:%!

_user_specified_name41887:%!

_user_specified_name41889:%!

_user_specified_name41891:%!

_user_specified_name41893:%!

_user_specified_name41895:%!

_user_specified_name41897:%!

_user_specified_name41899:%!

_user_specified_name41901:%!

_user_specified_name41903:%!

_user_specified_name41905:%!

_user_specified_name41907:%!

_user_specified_name41909:% !

_user_specified_name41911:%!!

_user_specified_name41913:%"!

_user_specified_name41915:%#!

_user_specified_name41917:%$!

_user_specified_name41919:%%!

_user_specified_name41921:%&!

_user_specified_name41923:%'!

_user_specified_name41925:%(!

_user_specified_name41927

ќ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_42268

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њ
I
!__inference__update_step_xla_9749
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
 
§
D__inference_conv2d_12_layer_call_and_return_conditional_losses_41182

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_42308

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
§
D__inference_conv2d_17_layer_call_and_return_conditional_losses_41262

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ю
U
!__inference__update_step_xla_9894
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9784
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њ
I
!__inference__update_step_xla_9819
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9794
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_42348

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

њ
A__inference_conv2d_layer_call_and_return_conditional_losses_40990

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
В
§
D__inference_conv2d_19_layer_call_and_return_conditional_losses_42607

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџy
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
§
D__inference_conv2d_15_layer_call_and_return_conditional_losses_42528

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

ќ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_41070

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

ќ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_42288

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Њ
I
!__inference__update_step_xla_9919
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9844
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
 
§
D__inference_conv2d_17_layer_call_and_return_conditional_losses_42568

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
р

)__inference_conv2d_18_layer_call_fn_42577

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_41278
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42571:%!

_user_specified_name42573
о

(__inference_conv2d_7_layer_call_fn_42357

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_41102
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42351:%!

_user_specified_name42353
Њ
I
!__inference__update_step_xla_9799
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
і
)
 __inference__wrapped_model_40977
input_1P
6model_sequential_conv2d_conv2d_readvariableop_resource:@E
7model_sequential_conv2d_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_1_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_1_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_2_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_2_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_3_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_3_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_4_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_4_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_5_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_5_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_6_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_6_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_7_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_7_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_8_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_8_biasadd_readvariableop_resource:@R
8model_sequential_conv2d_9_conv2d_readvariableop_resource:@@G
9model_sequential_conv2d_9_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_10_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_10_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_11_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_11_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_12_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_12_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_13_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_13_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_14_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_14_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_15_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_15_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_16_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_16_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_17_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_17_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_18_conv2d_readvariableop_resource:@@H
:model_sequential_conv2d_18_biasadd_readvariableop_resource:@S
9model_sequential_conv2d_19_conv2d_readvariableop_resource:@H
:model_sequential_conv2d_19_biasadd_readvariableop_resource:
identityЂ.model/sequential/conv2d/BiasAdd/ReadVariableOpЂ-model/sequential/conv2d/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_1/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_1/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_10/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_10/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_11/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_11/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_12/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_12/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_13/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_13/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_14/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_14/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_15/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_15/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_16/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_16/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_17/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_17/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_18/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_18/Conv2D/ReadVariableOpЂ1model/sequential/conv2d_19/BiasAdd/ReadVariableOpЂ0model/sequential/conv2d_19/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_2/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_2/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_3/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_3/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_4/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_4/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_5/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_5/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_6/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_6/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_7/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_7/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_8/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_8/Conv2D/ReadVariableOpЂ0model/sequential/conv2d_9/BiasAdd/ReadVariableOpЂ/model/sequential/conv2d_9/Conv2D/ReadVariableOpЌ
-model/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp6model_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0м
model/sequential/conv2d/Conv2DConv2Dinput_15model/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ђ
.model/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp7model_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0з
model/sequential/conv2d/BiasAddBiasAdd'model/sequential/conv2d/Conv2D:output:06model/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d/ReluRelu(model/sequential/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_1/Conv2DConv2D*model/sequential/conv2d/Relu:activations:07model/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_1/BiasAddBiasAdd)model/sequential/conv2d_1/Conv2D:output:08model/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_1/ReluRelu*model/sequential/conv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_2/Conv2DConv2D,model/sequential/conv2d_1/Relu:activations:07model/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_2/BiasAddBiasAdd)model/sequential/conv2d_2/Conv2D:output:08model/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_2/ReluRelu*model/sequential/conv2d_2/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_3/Conv2DConv2D,model/sequential/conv2d_2/Relu:activations:07model/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_3/BiasAddBiasAdd)model/sequential/conv2d_3/Conv2D:output:08model/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_3/ReluRelu*model/sequential/conv2d_3/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_4/Conv2DConv2D,model/sequential/conv2d_3/Relu:activations:07model/sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_4/BiasAddBiasAdd)model/sequential/conv2d_4/Conv2D:output:08model/sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_4/ReluRelu*model/sequential/conv2d_4/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_5/Conv2DConv2D,model/sequential/conv2d_4/Relu:activations:07model/sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_5/BiasAddBiasAdd)model/sequential/conv2d_5/Conv2D:output:08model/sequential/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_5/ReluRelu*model/sequential/conv2d_5/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_6/Conv2DConv2D,model/sequential/conv2d_5/Relu:activations:07model/sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_6/BiasAddBiasAdd)model/sequential/conv2d_6/Conv2D:output:08model/sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_6/ReluRelu*model/sequential/conv2d_6/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_7/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_7/Conv2DConv2D,model/sequential/conv2d_6/Relu:activations:07model/sequential/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_7/BiasAddBiasAdd)model/sequential/conv2d_7/Conv2D:output:08model/sequential/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_7/ReluRelu*model/sequential/conv2d_7/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_8/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_8/Conv2DConv2D,model/sequential/conv2d_7/Relu:activations:07model/sequential/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_8/BiasAddBiasAdd)model/sequential/conv2d_8/Conv2D:output:08model/sequential/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_8/ReluRelu*model/sequential/conv2d_8/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
/model/sequential/conv2d_9/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
 model/sequential/conv2d_9/Conv2DConv2D,model/sequential/conv2d_8/Relu:activations:07model/sequential/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
І
0model/sequential/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0н
!model/sequential/conv2d_9/BiasAddBiasAdd)model/sequential/conv2d_9/Conv2D:output:08model/sequential/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
model/sequential/conv2d_9/ReluRelu*model/sequential/conv2d_9/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_10/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_10/Conv2DConv2D,model/sequential/conv2d_9/Relu:activations:08model/sequential/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_10/BiasAddBiasAdd*model/sequential/conv2d_10/Conv2D:output:09model/sequential/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_10/ReluRelu+model/sequential/conv2d_10/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_11/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_11/Conv2DConv2D-model/sequential/conv2d_10/Relu:activations:08model/sequential/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_11/BiasAddBiasAdd*model/sequential/conv2d_11/Conv2D:output:09model/sequential/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_11/ReluRelu+model/sequential/conv2d_11/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_12/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_12/Conv2DConv2D-model/sequential/conv2d_11/Relu:activations:08model/sequential/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_12/BiasAddBiasAdd*model/sequential/conv2d_12/Conv2D:output:09model/sequential/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_12/ReluRelu+model/sequential/conv2d_12/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_13/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_13/Conv2DConv2D-model/sequential/conv2d_12/Relu:activations:08model/sequential/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_13/BiasAddBiasAdd*model/sequential/conv2d_13/Conv2D:output:09model/sequential/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_13/ReluRelu+model/sequential/conv2d_13/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_14/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_14/Conv2DConv2D-model/sequential/conv2d_13/Relu:activations:08model/sequential/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_14/BiasAddBiasAdd*model/sequential/conv2d_14/Conv2D:output:09model/sequential/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_14/ReluRelu+model/sequential/conv2d_14/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_15/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_15/Conv2DConv2D-model/sequential/conv2d_14/Relu:activations:08model/sequential/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_15/BiasAddBiasAdd*model/sequential/conv2d_15/Conv2D:output:09model/sequential/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_15/ReluRelu+model/sequential/conv2d_15/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_16/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_16/Conv2DConv2D-model/sequential/conv2d_15/Relu:activations:08model/sequential/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_16/BiasAddBiasAdd*model/sequential/conv2d_16/Conv2D:output:09model/sequential/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_16/ReluRelu+model/sequential/conv2d_16/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_17/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_17/Conv2DConv2D-model/sequential/conv2d_16/Relu:activations:08model/sequential/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_17/BiasAddBiasAdd*model/sequential/conv2d_17/Conv2D:output:09model/sequential/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_17/ReluRelu+model/sequential/conv2d_17/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_18/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
!model/sequential/conv2d_18/Conv2DConv2D-model/sequential/conv2d_17/Relu:activations:08model/sequential/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Ј
1model/sequential/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0р
"model/sequential/conv2d_18/BiasAddBiasAdd*model/sequential/conv2d_18/Conv2D:output:09model/sequential/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ 
model/sequential/conv2d_18/ReluRelu+model/sequential/conv2d_18/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@В
0model/sequential/conv2d_19/Conv2D/ReadVariableOpReadVariableOp9model_sequential_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
!model/sequential/conv2d_19/Conv2DConv2D-model/sequential/conv2d_18/Relu:activations:08model/sequential/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
Ј
1model/sequential/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0р
"model/sequential/conv2d_19/BiasAddBiasAdd*model/sequential/conv2d_19/Conv2D:output:09model/sequential/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
model/add/addAddV2input_1+model/sequential/conv2d_19/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџz
IdentityIdentitymodel/add/add:z:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp/^model/sequential/conv2d/BiasAdd/ReadVariableOp.^model/sequential/conv2d/Conv2D/ReadVariableOp1^model/sequential/conv2d_1/BiasAdd/ReadVariableOp0^model/sequential/conv2d_1/Conv2D/ReadVariableOp2^model/sequential/conv2d_10/BiasAdd/ReadVariableOp1^model/sequential/conv2d_10/Conv2D/ReadVariableOp2^model/sequential/conv2d_11/BiasAdd/ReadVariableOp1^model/sequential/conv2d_11/Conv2D/ReadVariableOp2^model/sequential/conv2d_12/BiasAdd/ReadVariableOp1^model/sequential/conv2d_12/Conv2D/ReadVariableOp2^model/sequential/conv2d_13/BiasAdd/ReadVariableOp1^model/sequential/conv2d_13/Conv2D/ReadVariableOp2^model/sequential/conv2d_14/BiasAdd/ReadVariableOp1^model/sequential/conv2d_14/Conv2D/ReadVariableOp2^model/sequential/conv2d_15/BiasAdd/ReadVariableOp1^model/sequential/conv2d_15/Conv2D/ReadVariableOp2^model/sequential/conv2d_16/BiasAdd/ReadVariableOp1^model/sequential/conv2d_16/Conv2D/ReadVariableOp2^model/sequential/conv2d_17/BiasAdd/ReadVariableOp1^model/sequential/conv2d_17/Conv2D/ReadVariableOp2^model/sequential/conv2d_18/BiasAdd/ReadVariableOp1^model/sequential/conv2d_18/Conv2D/ReadVariableOp2^model/sequential/conv2d_19/BiasAdd/ReadVariableOp1^model/sequential/conv2d_19/Conv2D/ReadVariableOp1^model/sequential/conv2d_2/BiasAdd/ReadVariableOp0^model/sequential/conv2d_2/Conv2D/ReadVariableOp1^model/sequential/conv2d_3/BiasAdd/ReadVariableOp0^model/sequential/conv2d_3/Conv2D/ReadVariableOp1^model/sequential/conv2d_4/BiasAdd/ReadVariableOp0^model/sequential/conv2d_4/Conv2D/ReadVariableOp1^model/sequential/conv2d_5/BiasAdd/ReadVariableOp0^model/sequential/conv2d_5/Conv2D/ReadVariableOp1^model/sequential/conv2d_6/BiasAdd/ReadVariableOp0^model/sequential/conv2d_6/Conv2D/ReadVariableOp1^model/sequential/conv2d_7/BiasAdd/ReadVariableOp0^model/sequential/conv2d_7/Conv2D/ReadVariableOp1^model/sequential/conv2d_8/BiasAdd/ReadVariableOp0^model/sequential/conv2d_8/Conv2D/ReadVariableOp1^model/sequential/conv2d_9/BiasAdd/ReadVariableOp0^model/sequential/conv2d_9/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.model/sequential/conv2d/BiasAdd/ReadVariableOp.model/sequential/conv2d/BiasAdd/ReadVariableOp2^
-model/sequential/conv2d/Conv2D/ReadVariableOp-model/sequential/conv2d/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_1/BiasAdd/ReadVariableOp0model/sequential/conv2d_1/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_1/Conv2D/ReadVariableOp/model/sequential/conv2d_1/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_10/BiasAdd/ReadVariableOp1model/sequential/conv2d_10/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_10/Conv2D/ReadVariableOp0model/sequential/conv2d_10/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_11/BiasAdd/ReadVariableOp1model/sequential/conv2d_11/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_11/Conv2D/ReadVariableOp0model/sequential/conv2d_11/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_12/BiasAdd/ReadVariableOp1model/sequential/conv2d_12/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_12/Conv2D/ReadVariableOp0model/sequential/conv2d_12/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_13/BiasAdd/ReadVariableOp1model/sequential/conv2d_13/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_13/Conv2D/ReadVariableOp0model/sequential/conv2d_13/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_14/BiasAdd/ReadVariableOp1model/sequential/conv2d_14/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_14/Conv2D/ReadVariableOp0model/sequential/conv2d_14/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_15/BiasAdd/ReadVariableOp1model/sequential/conv2d_15/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_15/Conv2D/ReadVariableOp0model/sequential/conv2d_15/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_16/BiasAdd/ReadVariableOp1model/sequential/conv2d_16/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_16/Conv2D/ReadVariableOp0model/sequential/conv2d_16/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_17/BiasAdd/ReadVariableOp1model/sequential/conv2d_17/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_17/Conv2D/ReadVariableOp0model/sequential/conv2d_17/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_18/BiasAdd/ReadVariableOp1model/sequential/conv2d_18/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_18/Conv2D/ReadVariableOp0model/sequential/conv2d_18/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_19/BiasAdd/ReadVariableOp1model/sequential/conv2d_19/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d_19/Conv2D/ReadVariableOp0model/sequential/conv2d_19/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_2/BiasAdd/ReadVariableOp0model/sequential/conv2d_2/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_2/Conv2D/ReadVariableOp/model/sequential/conv2d_2/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_3/BiasAdd/ReadVariableOp0model/sequential/conv2d_3/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_3/Conv2D/ReadVariableOp/model/sequential/conv2d_3/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_4/BiasAdd/ReadVariableOp0model/sequential/conv2d_4/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_4/Conv2D/ReadVariableOp/model/sequential/conv2d_4/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_5/BiasAdd/ReadVariableOp0model/sequential/conv2d_5/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_5/Conv2D/ReadVariableOp/model/sequential/conv2d_5/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_6/BiasAdd/ReadVariableOp0model/sequential/conv2d_6/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_6/Conv2D/ReadVariableOp/model/sequential/conv2d_6/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_7/BiasAdd/ReadVariableOp0model/sequential/conv2d_7/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_7/Conv2D/ReadVariableOp/model/sequential/conv2d_7/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_8/BiasAdd/ReadVariableOp0model/sequential/conv2d_8/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_8/Conv2D/ReadVariableOp/model/sequential/conv2d_8/Conv2D/ReadVariableOp2d
0model/sequential/conv2d_9/BiasAdd/ReadVariableOp0model/sequential/conv2d_9/BiasAdd/ReadVariableOp2b
/model/sequential/conv2d_9/Conv2D/ReadVariableOp/model/sequential/conv2d_9/Conv2D/ReadVariableOp:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource
 
§
D__inference_conv2d_13_layer_call_and_return_conditional_losses_42488

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
р

)__inference_conv2d_11_layer_call_fn_42437

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_41166
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42431:%!

_user_specified_name42433
Ю
U
!__inference__update_step_xla_9734
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
 
§
D__inference_conv2d_10_layer_call_and_return_conditional_losses_41150

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о

(__inference_conv2d_1_layer_call_fn_42237

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_41006
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42231:%!

_user_specified_name42233
р

)__inference_conv2d_17_layer_call_fn_42557

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_41262
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42551:%!

_user_specified_name42553
Њ
I
!__inference__update_step_xla_9849
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
 
§
D__inference_conv2d_12_layer_call_and_return_conditional_losses_42468

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
§)
ѕ
@__inference_model_layer_call_and_return_conditional_losses_41846
input_1*
sequential_41757:@
sequential_41759:@*
sequential_41761:@@
sequential_41763:@*
sequential_41765:@@
sequential_41767:@*
sequential_41769:@@
sequential_41771:@*
sequential_41773:@@
sequential_41775:@*
sequential_41777:@@
sequential_41779:@*
sequential_41781:@@
sequential_41783:@*
sequential_41785:@@
sequential_41787:@*
sequential_41789:@@
sequential_41791:@*
sequential_41793:@@
sequential_41795:@*
sequential_41797:@@
sequential_41799:@*
sequential_41801:@@
sequential_41803:@*
sequential_41805:@@
sequential_41807:@*
sequential_41809:@@
sequential_41811:@*
sequential_41813:@@
sequential_41815:@*
sequential_41817:@@
sequential_41819:@*
sequential_41821:@@
sequential_41823:@*
sequential_41825:@@
sequential_41827:@*
sequential_41829:@@
sequential_41831:@*
sequential_41833:@
sequential_41835:
identityЂ"sequential/StatefulPartitionedCall	
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_41757sequential_41759sequential_41761sequential_41763sequential_41765sequential_41767sequential_41769sequential_41771sequential_41773sequential_41775sequential_41777sequential_41779sequential_41781sequential_41783sequential_41785sequential_41787sequential_41789sequential_41791sequential_41793sequential_41795sequential_41797sequential_41799sequential_41801sequential_41803sequential_41805sequential_41807sequential_41809sequential_41811sequential_41813sequential_41815sequential_41817sequential_41819sequential_41821sequential_41823sequential_41825sequential_41827sequential_41829sequential_41831sequential_41833sequential_41835*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_41300љ
add/PartitionedCallPartitionedCallinput_1+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_41843
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџG
NoOpNoOp#^sequential/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
}:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:j f
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
!
_user_specified_name	input_1:%!

_user_specified_name41757:%!

_user_specified_name41759:%!

_user_specified_name41761:%!

_user_specified_name41763:%!

_user_specified_name41765:%!

_user_specified_name41767:%!

_user_specified_name41769:%!

_user_specified_name41771:%	!

_user_specified_name41773:%
!

_user_specified_name41775:%!

_user_specified_name41777:%!

_user_specified_name41779:%!

_user_specified_name41781:%!

_user_specified_name41783:%!

_user_specified_name41785:%!

_user_specified_name41787:%!

_user_specified_name41789:%!

_user_specified_name41791:%!

_user_specified_name41793:%!

_user_specified_name41795:%!

_user_specified_name41797:%!

_user_specified_name41799:%!

_user_specified_name41801:%!

_user_specified_name41803:%!

_user_specified_name41805:%!

_user_specified_name41807:%!

_user_specified_name41809:%!

_user_specified_name41811:%!

_user_specified_name41813:%!

_user_specified_name41815:%!

_user_specified_name41817:% !

_user_specified_name41819:%!!

_user_specified_name41821:%"!

_user_specified_name41823:%#!

_user_specified_name41825:%$!

_user_specified_name41827:%%!

_user_specified_name41829:%&!

_user_specified_name41831:%'!

_user_specified_name41833:%(!

_user_specified_name41835
Њ
I
!__inference__update_step_xla_9909
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њ
I
!__inference__update_step_xla_9779
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њ
I
!__inference__update_step_xla_9769
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

ќ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_41054

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
о

(__inference_conv2d_2_layer_call_fn_42257

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_41022
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42251:%!

_user_specified_name42253
Ю
U
!__inference__update_step_xla_9804
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9754
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њ
I
!__inference__update_step_xla_9739
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
р

)__inference_conv2d_16_layer_call_fn_42537

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_41246
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42531:%!

_user_specified_name42533
 
§
D__inference_conv2d_11_layer_call_and_return_conditional_losses_41166

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ю
U
!__inference__update_step_xla_9814
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Я
h
>__inference_add_layer_call_and_return_conditional_losses_41843

inputs
inputs_1
identityj
addAddV2inputsinputs_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџi
IdentityIdentityadd:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
 
§
D__inference_conv2d_14_layer_call_and_return_conditional_losses_41214

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
§
D__inference_conv2d_15_layer_call_and_return_conditional_losses_41230

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
р

)__inference_conv2d_14_layer_call_fn_42497

inputs!
unknown:@@
	unknown_0:@
identityЂStatefulPartitionedCallі
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_41214
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:%!

_user_specified_name42491:%!

_user_specified_name42493
Ю
U
!__inference__update_step_xla_9914
gradient"
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@: *
	_noinline(:P L
&
_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ю
U
!__inference__update_step_xla_9744
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Њ
I
!__inference__update_step_xla_9879
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
з
j
>__inference_add_layer_call_and_return_conditional_losses_42208
inputs_0
inputs_1
identityl
addAddV2inputs_0inputs_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџi
IdentityIdentityadd:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:k g
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:kg
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_1
Ю
U
!__inference__update_step_xla_9824
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*к
serving_defaultЦ
U
input_1J
serving_default_input_1:0+џџџџџџџџџџџџџџџџџџџџџџџџџџџQ
addJ
StatefulPartitionedCall:0+џџџџџџџџџџџџџџџџџџџџџџџџџџџtensorflow/serving/predict:Ћ
Є
layer-0
layer_with_weights-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ъ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
layer_with_weights-8
layer-8
layer_with_weights-9
layer-9
layer_with_weights-10
layer-10
layer_with_weights-11
layer-11
layer_with_weights-12
layer-12
layer_with_weights-13
layer-13
layer_with_weights-14
layer-14
layer_with_weights-15
layer-15
layer_with_weights-16
layer-16
layer_with_weights-17
layer-17
layer_with_weights-18
layer-18
 layer_with_weights-19
 layer-19
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ѕ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
ж
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39"
trackable_list_wrapper
ж
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
Н
Ztrace_0
[trace_12
%__inference_model_layer_call_fn_42017
%__inference_model_layer_call_fn_42102Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zZtrace_0z[trace_1
ѓ
\trace_0
]trace_12М
@__inference_model_layer_call_and_return_conditional_losses_41846
@__inference_model_layer_call_and_return_conditional_losses_41932Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z\trace_0z]trace_1
ЫBШ
 __inference__wrapped_model_40977input_1"
В
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

^
_variables
__iterations
`_learning_rate
a_index_dict
b
_momentums
c_velocities
d_update_step_xla"
experimentalOptimizer
,
eserving_default"
signature_map
н
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

-kernel
.bias
 l_jit_compiled_convolution_op"
_tf_keras_layer
н
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

/kernel
0bias
 s_jit_compiled_convolution_op"
_tf_keras_layer
н
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

1kernel
2bias
 z_jit_compiled_convolution_op"
_tf_keras_layer
п
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses

3kernel
4bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ф
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

5kernel
6bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ф
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

7kernel
8bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ф
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

9kernel
:bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ф
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

;kernel
<bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ф
	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses

=kernel
>bias
!Є_jit_compiled_convolution_op"
_tf_keras_layer
ф
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Ј	keras_api
Љ__call__
+Њ&call_and_return_all_conditional_losses

?kernel
@bias
!Ћ_jit_compiled_convolution_op"
_tf_keras_layer
ф
Ќ	variables
­trainable_variables
Ўregularization_losses
Џ	keras_api
А__call__
+Б&call_and_return_all_conditional_losses

Akernel
Bbias
!В_jit_compiled_convolution_op"
_tf_keras_layer
ф
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses

Ckernel
Dbias
!Й_jit_compiled_convolution_op"
_tf_keras_layer
ф
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses

Ekernel
Fbias
!Р_jit_compiled_convolution_op"
_tf_keras_layer
ф
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses

Gkernel
Hbias
!Ч_jit_compiled_convolution_op"
_tf_keras_layer
ф
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses

Ikernel
Jbias
!Ю_jit_compiled_convolution_op"
_tf_keras_layer
ф
Я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses

Kkernel
Lbias
!е_jit_compiled_convolution_op"
_tf_keras_layer
ф
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses

Mkernel
Nbias
!м_jit_compiled_convolution_op"
_tf_keras_layer
ф
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses

Okernel
Pbias
!у_jit_compiled_convolution_op"
_tf_keras_layer
ф
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses

Qkernel
Rbias
!ъ_jit_compiled_convolution_op"
_tf_keras_layer
ф
ы	variables
ьtrainable_variables
эregularization_losses
ю	keras_api
я__call__
+№&call_and_return_all_conditional_losses

Skernel
Tbias
!ё_jit_compiled_convolution_op"
_tf_keras_layer
ж
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39"
trackable_list_wrapper
ж
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
=16
>17
?18
@19
A20
B21
C22
D23
E24
F25
G26
H27
I28
J29
K30
L31
M32
N33
O34
P35
Q36
R37
S38
T39"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ђnon_trainable_variables
ѓlayers
єmetrics
 ѕlayer_regularization_losses
іlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Ы
їtrace_0
јtrace_12
*__inference_sequential_layer_call_fn_41489
*__inference_sequential_layer_call_fn_41574Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zїtrace_0zјtrace_1

љtrace_0
њtrace_12Ц
E__inference_sequential_layer_call_and_return_conditional_losses_41300
E__inference_sequential_layer_call_and_return_conditional_losses_41404Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zљtrace_0zњtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
ћnon_trainable_variables
ќlayers
§metrics
 ўlayer_regularization_losses
џlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
п
trace_02Р
#__inference_add_layer_call_fn_42202
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
њ
trace_02л
>__inference_add_layer_call_and_return_conditional_losses_42208
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
':%@2conv2d/kernel
:@2conv2d/bias
):'@@2conv2d_1/kernel
:@2conv2d_1/bias
):'@@2conv2d_2/kernel
:@2conv2d_2/bias
):'@@2conv2d_3/kernel
:@2conv2d_3/bias
):'@@2conv2d_4/kernel
:@2conv2d_4/bias
):'@@2conv2d_5/kernel
:@2conv2d_5/bias
):'@@2conv2d_6/kernel
:@2conv2d_6/bias
):'@@2conv2d_7/kernel
:@2conv2d_7/bias
):'@@2conv2d_8/kernel
:@2conv2d_8/bias
):'@@2conv2d_9/kernel
:@2conv2d_9/bias
*:(@@2conv2d_10/kernel
:@2conv2d_10/bias
*:(@@2conv2d_11/kernel
:@2conv2d_11/bias
*:(@@2conv2d_12/kernel
:@2conv2d_12/bias
*:(@@2conv2d_13/kernel
:@2conv2d_13/bias
*:(@@2conv2d_14/kernel
:@2conv2d_14/bias
*:(@@2conv2d_15/kernel
:@2conv2d_15/bias
*:(@@2conv2d_16/kernel
:@2conv2d_16/bias
*:(@@2conv2d_17/kernel
:@2conv2d_17/bias
*:(@@2conv2d_18/kernel
:@2conv2d_18/bias
*:(@2conv2d_19/kernel
:2conv2d_19/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
%__inference_model_layer_call_fn_42017input_1"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
фBс
%__inference_model_layer_call_fn_42102input_1"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
@__inference_model_layer_call_and_return_conditional_losses_41846input_1"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
@__inference_model_layer_call_and_return_conditional_losses_41932input_1"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю
_0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
 29
Ё30
Ђ31
Ѓ32
Є33
Ѕ34
І35
Ї36
Ј37
Љ38
Њ39
Ћ40
Ќ41
­42
Ў43
Џ44
А45
Б46
В47
Г48
Д49
Е50
Ж51
З52
И53
Й54
К55
Л56
М57
Н58
О59
П60
Р61
С62
Т63
У64
Ф65
Х66
Ц67
Ч68
Ш69
Щ70
Ъ71
Ы72
Ь73
Э74
Ю75
Я76
а77
б78
в79
г80"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
ў
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
Ђ15
Є16
І17
Ј18
Њ19
Ќ20
Ў21
А22
В23
Д24
Ж25
И26
К27
М28
О29
Р30
Т31
Ф32
Ц33
Ш34
Ъ35
Ь36
Ю37
а38
в39"
trackable_list_wrapper
ў
0
1
2
3
4
5
6
7
8
9
10
11
12
13
Ё14
Ѓ15
Ѕ16
Ї17
Љ18
Ћ19
­20
Џ21
Б22
Г23
Е24
З25
Й26
Л27
Н28
П29
С30
У31
Х32
Ч33
Щ34
Ы35
Э36
Я37
б38
г39"
trackable_list_wrapper
Щ
дtrace_0
еtrace_1
жtrace_2
зtrace_3
иtrace_4
йtrace_5
кtrace_6
лtrace_7
мtrace_8
нtrace_9
оtrace_10
пtrace_11
рtrace_12
сtrace_13
тtrace_14
уtrace_15
фtrace_16
хtrace_17
цtrace_18
чtrace_19
шtrace_20
щtrace_21
ъtrace_22
ыtrace_23
ьtrace_24
эtrace_25
юtrace_26
яtrace_27
№trace_28
ёtrace_29
ђtrace_30
ѓtrace_31
єtrace_32
ѕtrace_33
іtrace_34
їtrace_35
јtrace_36
љtrace_37
њtrace_38
ћtrace_392Њ
!__inference__update_step_xla_9724
!__inference__update_step_xla_9729
!__inference__update_step_xla_9734
!__inference__update_step_xla_9739
!__inference__update_step_xla_9744
!__inference__update_step_xla_9749
!__inference__update_step_xla_9754
!__inference__update_step_xla_9759
!__inference__update_step_xla_9764
!__inference__update_step_xla_9769
!__inference__update_step_xla_9774
!__inference__update_step_xla_9779
!__inference__update_step_xla_9784
!__inference__update_step_xla_9789
!__inference__update_step_xla_9794
!__inference__update_step_xla_9799
!__inference__update_step_xla_9804
!__inference__update_step_xla_9809
!__inference__update_step_xla_9814
!__inference__update_step_xla_9819
!__inference__update_step_xla_9824
!__inference__update_step_xla_9829
!__inference__update_step_xla_9834
!__inference__update_step_xla_9839
!__inference__update_step_xla_9844
!__inference__update_step_xla_9849
!__inference__update_step_xla_9854
!__inference__update_step_xla_9859
!__inference__update_step_xla_9864
!__inference__update_step_xla_9869
!__inference__update_step_xla_9874
!__inference__update_step_xla_9879
!__inference__update_step_xla_9884
!__inference__update_step_xla_9889
!__inference__update_step_xla_9894
!__inference__update_step_xla_9899
!__inference__update_step_xla_9904
!__inference__update_step_xla_9909
!__inference__update_step_xla_9914
!__inference__update_step_xla_9919Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zдtrace_0zеtrace_1zжtrace_2zзtrace_3zиtrace_4zйtrace_5zкtrace_6zлtrace_7zмtrace_8zнtrace_9zоtrace_10zпtrace_11zрtrace_12zсtrace_13zтtrace_14zуtrace_15zфtrace_16zхtrace_17zцtrace_18zчtrace_19zшtrace_20zщtrace_21zъtrace_22zыtrace_23zьtrace_24zэtrace_25zюtrace_26zяtrace_27z№trace_28zёtrace_29zђtrace_30zѓtrace_31zєtrace_32zѕtrace_33zіtrace_34zїtrace_35zјtrace_36zљtrace_37zњtrace_38zћtrace_39
ЯBЬ
#__inference_signature_wrapper_42196input_1"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs
	jinput_1
kwonlydefaults
 
annotationsЊ *
 
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
т
trace_02У
&__inference_conv2d_layer_call_fn_42217
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
§
trace_02о
A__inference_conv2d_layer_call_and_return_conditional_losses_42228
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_conv2d_1_layer_call_fn_42237
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_conv2d_1_layer_call_and_return_conditional_losses_42248
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_conv2d_2_layer_call_fn_42257
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_conv2d_2_layer_call_and_return_conditional_losses_42268
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
Д
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_conv2d_3_layer_call_fn_42277
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_conv2d_3_layer_call_and_return_conditional_losses_42288
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_conv2d_4_layer_call_fn_42297
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_conv2d_4_layer_call_and_return_conditional_losses_42308
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
Єtrace_02Х
(__inference_conv2d_5_layer_call_fn_42317
В
FullArgSpec
args

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
annotationsЊ *
 zЄtrace_0
џ
Ѕtrace_02р
C__inference_conv2d_5_layer_call_and_return_conditional_losses_42328
В
FullArgSpec
args

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
annotationsЊ *
 zЅtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Іnon_trainable_variables
Їlayers
Јmetrics
 Љlayer_regularization_losses
Њlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
Ћtrace_02Х
(__inference_conv2d_6_layer_call_fn_42337
В
FullArgSpec
args

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
annotationsЊ *
 zЋtrace_0
џ
Ќtrace_02р
C__inference_conv2d_6_layer_call_and_return_conditional_losses_42348
В
FullArgSpec
args

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
annotationsЊ *
 zЌtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
­non_trainable_variables
Ўlayers
Џmetrics
 Аlayer_regularization_losses
Бlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ф
Вtrace_02Х
(__inference_conv2d_7_layer_call_fn_42357
В
FullArgSpec
args

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
annotationsЊ *
 zВtrace_0
џ
Гtrace_02р
C__inference_conv2d_7_layer_call_and_return_conditional_losses_42368
В
FullArgSpec
args

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
annotationsЊ *
 zГtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
ф
Йtrace_02Х
(__inference_conv2d_8_layer_call_fn_42377
В
FullArgSpec
args

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
annotationsЊ *
 zЙtrace_0
џ
Кtrace_02р
C__inference_conv2d_8_layer_call_and_return_conditional_losses_42388
В
FullArgSpec
args

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
annotationsЊ *
 zКtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
Ѕ	variables
Іtrainable_variables
Їregularization_losses
Љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
ф
Рtrace_02Х
(__inference_conv2d_9_layer_call_fn_42397
В
FullArgSpec
args

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
annotationsЊ *
 zРtrace_0
џ
Сtrace_02р
C__inference_conv2d_9_layer_call_and_return_conditional_losses_42408
В
FullArgSpec
args

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
annotationsЊ *
 zСtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Ќ	variables
­trainable_variables
Ўregularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
х
Чtrace_02Ц
)__inference_conv2d_10_layer_call_fn_42417
В
FullArgSpec
args

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
annotationsЊ *
 zЧtrace_0

Шtrace_02с
D__inference_conv2d_10_layer_call_and_return_conditional_losses_42428
В
FullArgSpec
args

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
annotationsЊ *
 zШtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
х
Юtrace_02Ц
)__inference_conv2d_11_layer_call_fn_42437
В
FullArgSpec
args

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
annotationsЊ *
 zЮtrace_0

Яtrace_02с
D__inference_conv2d_11_layer_call_and_return_conditional_losses_42448
В
FullArgSpec
args

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
annotationsЊ *
 zЯtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
х
еtrace_02Ц
)__inference_conv2d_12_layer_call_fn_42457
В
FullArgSpec
args

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
annotationsЊ *
 zеtrace_0

жtrace_02с
D__inference_conv2d_12_layer_call_and_return_conditional_losses_42468
В
FullArgSpec
args

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
annotationsЊ *
 zжtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
х
мtrace_02Ц
)__inference_conv2d_13_layer_call_fn_42477
В
FullArgSpec
args

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
annotationsЊ *
 zмtrace_0

нtrace_02с
D__inference_conv2d_13_layer_call_and_return_conditional_losses_42488
В
FullArgSpec
args

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
annotationsЊ *
 zнtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
х
уtrace_02Ц
)__inference_conv2d_14_layer_call_fn_42497
В
FullArgSpec
args

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
annotationsЊ *
 zуtrace_0

фtrace_02с
D__inference_conv2d_14_layer_call_and_return_conditional_losses_42508
В
FullArgSpec
args

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
annotationsЊ *
 zфtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
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
И
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
Я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
х
ъtrace_02Ц
)__inference_conv2d_15_layer_call_fn_42517
В
FullArgSpec
args

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
annotationsЊ *
 zъtrace_0

ыtrace_02с
D__inference_conv2d_15_layer_call_and_return_conditional_losses_42528
В
FullArgSpec
args

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
annotationsЊ *
 zыtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
х
ёtrace_02Ц
)__inference_conv2d_16_layer_call_fn_42537
В
FullArgSpec
args

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
annotationsЊ *
 zёtrace_0

ђtrace_02с
D__inference_conv2d_16_layer_call_and_return_conditional_losses_42548
В
FullArgSpec
args

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
annotationsЊ *
 zђtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ѓnon_trainable_variables
єlayers
ѕmetrics
 іlayer_regularization_losses
їlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
х
јtrace_02Ц
)__inference_conv2d_17_layer_call_fn_42557
В
FullArgSpec
args

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
annotationsЊ *
 zјtrace_0

љtrace_02с
D__inference_conv2d_17_layer_call_and_return_conditional_losses_42568
В
FullArgSpec
args

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
annotationsЊ *
 zљtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
њnon_trainable_variables
ћlayers
ќmetrics
 §layer_regularization_losses
ўlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
х
џtrace_02Ц
)__inference_conv2d_18_layer_call_fn_42577
В
FullArgSpec
args

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
annotationsЊ *
 zџtrace_0

trace_02с
D__inference_conv2d_18_layer_call_and_return_conditional_losses_42588
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ы	variables
ьtrainable_variables
эregularization_losses
я__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
х
trace_02Ц
)__inference_conv2d_19_layer_call_fn_42597
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0

trace_02с
D__inference_conv2d_19_layer_call_and_return_conditional_losses_42607
В
FullArgSpec
args

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
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
 19"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
*__inference_sequential_layer_call_fn_41489conv2d_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
*__inference_sequential_layer_call_fn_41574conv2d_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_41300conv2d_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_sequential_layer_call_and_return_conditional_losses_41404conv2d_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
йBж
#__inference_add_layer_call_fn_42202inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
 
єBё
>__inference_add_layer_call_and_return_conditional_losses_42208inputs_0inputs_1"
В
FullArgSpec
args

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
annotationsЊ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
,:*@2Adam/m/conv2d/kernel
,:*@2Adam/v/conv2d/kernel
:@2Adam/m/conv2d/bias
:@2Adam/v/conv2d/bias
.:,@@2Adam/m/conv2d_1/kernel
.:,@@2Adam/v/conv2d_1/kernel
 :@2Adam/m/conv2d_1/bias
 :@2Adam/v/conv2d_1/bias
.:,@@2Adam/m/conv2d_2/kernel
.:,@@2Adam/v/conv2d_2/kernel
 :@2Adam/m/conv2d_2/bias
 :@2Adam/v/conv2d_2/bias
.:,@@2Adam/m/conv2d_3/kernel
.:,@@2Adam/v/conv2d_3/kernel
 :@2Adam/m/conv2d_3/bias
 :@2Adam/v/conv2d_3/bias
.:,@@2Adam/m/conv2d_4/kernel
.:,@@2Adam/v/conv2d_4/kernel
 :@2Adam/m/conv2d_4/bias
 :@2Adam/v/conv2d_4/bias
.:,@@2Adam/m/conv2d_5/kernel
.:,@@2Adam/v/conv2d_5/kernel
 :@2Adam/m/conv2d_5/bias
 :@2Adam/v/conv2d_5/bias
.:,@@2Adam/m/conv2d_6/kernel
.:,@@2Adam/v/conv2d_6/kernel
 :@2Adam/m/conv2d_6/bias
 :@2Adam/v/conv2d_6/bias
.:,@@2Adam/m/conv2d_7/kernel
.:,@@2Adam/v/conv2d_7/kernel
 :@2Adam/m/conv2d_7/bias
 :@2Adam/v/conv2d_7/bias
.:,@@2Adam/m/conv2d_8/kernel
.:,@@2Adam/v/conv2d_8/kernel
 :@2Adam/m/conv2d_8/bias
 :@2Adam/v/conv2d_8/bias
.:,@@2Adam/m/conv2d_9/kernel
.:,@@2Adam/v/conv2d_9/kernel
 :@2Adam/m/conv2d_9/bias
 :@2Adam/v/conv2d_9/bias
/:-@@2Adam/m/conv2d_10/kernel
/:-@@2Adam/v/conv2d_10/kernel
!:@2Adam/m/conv2d_10/bias
!:@2Adam/v/conv2d_10/bias
/:-@@2Adam/m/conv2d_11/kernel
/:-@@2Adam/v/conv2d_11/kernel
!:@2Adam/m/conv2d_11/bias
!:@2Adam/v/conv2d_11/bias
/:-@@2Adam/m/conv2d_12/kernel
/:-@@2Adam/v/conv2d_12/kernel
!:@2Adam/m/conv2d_12/bias
!:@2Adam/v/conv2d_12/bias
/:-@@2Adam/m/conv2d_13/kernel
/:-@@2Adam/v/conv2d_13/kernel
!:@2Adam/m/conv2d_13/bias
!:@2Adam/v/conv2d_13/bias
/:-@@2Adam/m/conv2d_14/kernel
/:-@@2Adam/v/conv2d_14/kernel
!:@2Adam/m/conv2d_14/bias
!:@2Adam/v/conv2d_14/bias
/:-@@2Adam/m/conv2d_15/kernel
/:-@@2Adam/v/conv2d_15/kernel
!:@2Adam/m/conv2d_15/bias
!:@2Adam/v/conv2d_15/bias
/:-@@2Adam/m/conv2d_16/kernel
/:-@@2Adam/v/conv2d_16/kernel
!:@2Adam/m/conv2d_16/bias
!:@2Adam/v/conv2d_16/bias
/:-@@2Adam/m/conv2d_17/kernel
/:-@@2Adam/v/conv2d_17/kernel
!:@2Adam/m/conv2d_17/bias
!:@2Adam/v/conv2d_17/bias
/:-@@2Adam/m/conv2d_18/kernel
/:-@@2Adam/v/conv2d_18/kernel
!:@2Adam/m/conv2d_18/bias
!:@2Adam/v/conv2d_18/bias
/:-@2Adam/m/conv2d_19/kernel
/:-@2Adam/v/conv2d_19/kernel
!:2Adam/m/conv2d_19/bias
!:2Adam/v/conv2d_19/bias
ьBщ
!__inference__update_step_xla_9724gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9729gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9734gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9739gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9744gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9749gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9754gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9759gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9764gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9769gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9774gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9779gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9784gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9789gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9794gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9799gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9804gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9809gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9814gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9819gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9824gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9829gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9834gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9839gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9844gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9849gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9854gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9859gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9864gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9869gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9874gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9879gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9884gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9889gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9894gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9899gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9904gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9909gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9914gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
!__inference__update_step_xla_9919gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
аBЭ
&__inference_conv2d_layer_call_fn_42217inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
ыBш
A__inference_conv2d_layer_call_and_return_conditional_losses_42228inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_1_layer_call_fn_42237inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_42248inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_2_layer_call_fn_42257inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_42268inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_3_layer_call_fn_42277inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_42288inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_4_layer_call_fn_42297inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_42308inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_5_layer_call_fn_42317inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_42328inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_6_layer_call_fn_42337inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_42348inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_7_layer_call_fn_42357inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_7_layer_call_and_return_conditional_losses_42368inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_8_layer_call_fn_42377inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_8_layer_call_and_return_conditional_losses_42388inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
вBЯ
(__inference_conv2d_9_layer_call_fn_42397inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
эBъ
C__inference_conv2d_9_layer_call_and_return_conditional_losses_42408inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_10_layer_call_fn_42417inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_10_layer_call_and_return_conditional_losses_42428inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_11_layer_call_fn_42437inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_11_layer_call_and_return_conditional_losses_42448inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_12_layer_call_fn_42457inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_12_layer_call_and_return_conditional_losses_42468inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_13_layer_call_fn_42477inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_13_layer_call_and_return_conditional_losses_42488inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_14_layer_call_fn_42497inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_14_layer_call_and_return_conditional_losses_42508inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_15_layer_call_fn_42517inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_15_layer_call_and_return_conditional_losses_42528inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_16_layer_call_fn_42537inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_16_layer_call_and_return_conditional_losses_42548inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_17_layer_call_fn_42557inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_17_layer_call_and_return_conditional_losses_42568inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_18_layer_call_fn_42577inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_18_layer_call_and_return_conditional_losses_42588inputs"
В
FullArgSpec
args

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
annotationsЊ *
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
гBа
)__inference_conv2d_19_layer_call_fn_42597inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
юBы
D__inference_conv2d_19_layer_call_and_return_conditional_losses_42607inputs"
В
FullArgSpec
args

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
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЃ
!__inference__update_step_xla_9724~xЂu
nЂk
!
gradient@
<9	%Ђ"
њ@

p
` VariableSpec 
` ВЯр<
Њ "
 
!__inference__update_step_xla_9729f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`РГЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9734~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РрЯр<
Њ "
 
!__inference__update_step_xla_9739f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` пЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9744~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РЯр<
Њ "
 
!__inference__update_step_xla_9749f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` Яр<
Њ "
 Ѓ
!__inference__update_step_xla_9754~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`ДЯр<
Њ "
 
!__inference__update_step_xla_9759f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` ЋЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9764~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РэЯр<
Њ "
 
!__inference__update_step_xla_9769f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` ьЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9774~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РЉЯр<
Њ "
 
!__inference__update_step_xla_9779f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` ЈЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9784~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`ЛЯр<
Њ "
 
!__inference__update_step_xla_9789f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` ЗЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9794~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`рсЯр<
Њ "
 
!__inference__update_step_xla_9799f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`РрЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9804~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`рЂЯр<
Њ "
 
!__inference__update_step_xla_9809f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`ЂЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9814~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РЛЂЯр<
Њ "
 
!__inference__update_step_xla_9819f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` КЂЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9824~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
` іЂЯр<
Њ "
 
!__inference__update_step_xla_9829f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`ѕЂЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9834~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РЃЯр<
Њ "
 
!__inference__update_step_xla_9839f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`рЃЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9844~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`РГЃЯр<
Њ "
 
!__inference__update_step_xla_9849f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` ВЃЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9854~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`ђЃЯр<
Њ "
 
!__inference__update_step_xla_9859f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`р№ЃЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9864~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`рмЃЯр<
Њ "
 
!__inference__update_step_xla_9869f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`РжЃЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9874~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
` АЌЯр<
Њ "
 
!__inference__update_step_xla_9879f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`ЏЌЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9884~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`№ЌЯр<
Њ "
 
!__inference__update_step_xla_9889f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`рюЌЯр<
Њ "
 Ѓ
!__inference__update_step_xla_9894~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`р­Яр<
Њ "
 
!__inference__update_step_xla_9899f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`Р­Яр<
Њ "
 Ѓ
!__inference__update_step_xla_9904~xЂu
nЂk
!
gradient@@
<9	%Ђ"
њ@@

p
` VariableSpec 
`рз­Яр<
Њ "
 
!__inference__update_step_xla_9909f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`Рж­Яр<
Њ "
 Ѓ
!__inference__update_step_xla_9914~xЂu
nЂk
!
gradient@
<9	%Ђ"
њ@

p
` VariableSpec 
`РлЯр<
Њ "
 
!__inference__update_step_xla_9919f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`РЂЯр<
Њ "
 р
 __inference__wrapped_model_40977Л(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTJЂG
@Ђ=
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "CЊ@
>
add74
add+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
>__inference_add_layer_call_and_return_conditional_losses_42208мЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 љ
#__inference_add_layer_call_fn_42202бЂ
Ђ
|
<9
inputs_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
<9
inputs_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџр
D__inference_conv2d_10_layer_call_and_return_conditional_losses_42428ABIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_10_layer_call_fn_42417ABIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_11_layer_call_and_return_conditional_losses_42448CDIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_11_layer_call_fn_42437CDIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_12_layer_call_and_return_conditional_losses_42468EFIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_12_layer_call_fn_42457EFIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_13_layer_call_and_return_conditional_losses_42488GHIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_13_layer_call_fn_42477GHIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_14_layer_call_and_return_conditional_losses_42508IJIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_14_layer_call_fn_42497IJIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_15_layer_call_and_return_conditional_losses_42528KLIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_15_layer_call_fn_42517KLIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_16_layer_call_and_return_conditional_losses_42548MNIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_16_layer_call_fn_42537MNIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_17_layer_call_and_return_conditional_losses_42568OPIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_17_layer_call_fn_42557OPIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_18_layer_call_and_return_conditional_losses_42588QRIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 К
)__inference_conv2d_18_layer_call_fn_42577QRIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@р
D__inference_conv2d_19_layer_call_and_return_conditional_losses_42607STIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 К
)__inference_conv2d_19_layer_call_fn_42597STIЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџп
C__inference_conv2d_1_layer_call_and_return_conditional_losses_42248/0IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_1_layer_call_fn_42237/0IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_2_layer_call_and_return_conditional_losses_4226812IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_2_layer_call_fn_4225712IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_3_layer_call_and_return_conditional_losses_4228834IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_3_layer_call_fn_4227734IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_4_layer_call_and_return_conditional_losses_4230856IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_4_layer_call_fn_4229756IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_5_layer_call_and_return_conditional_losses_4232878IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_5_layer_call_fn_4231778IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_6_layer_call_and_return_conditional_losses_423489:IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_6_layer_call_fn_423379:IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_7_layer_call_and_return_conditional_losses_42368;<IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_7_layer_call_fn_42357;<IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_8_layer_call_and_return_conditional_losses_42388=>IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_8_layer_call_fn_42377=>IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@п
C__inference_conv2d_9_layer_call_and_return_conditional_losses_42408?@IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Й
(__inference_conv2d_9_layer_call_fn_42397?@IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@н
A__inference_conv2d_layer_call_and_return_conditional_losses_42228-.IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 З
&__inference_conv2d_layer_call_fn_42217-.IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
@__inference_model_layer_call_and_return_conditional_losses_41846Ц(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
@__inference_model_layer_call_and_return_conditional_losses_41932Ц(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 х
%__inference_model_layer_call_fn_42017Л(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџх
%__inference_model_layer_call_fn_42102Л(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTRЂO
HЂE
;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
E__inference_sequential_layer_call_and_return_conditional_losses_41300Ы(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTWЂT
MЂJ
@=
conv2d_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
E__inference_sequential_layer_call_and_return_conditional_losses_41404Ы(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTWЂT
MЂJ
@=
conv2d_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 я
*__inference_sequential_layer_call_fn_41489Р(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTWЂT
MЂJ
@=
conv2d_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџя
*__inference_sequential_layer_call_fn_41574Р(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTWЂT
MЂJ
@=
conv2d_input+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџю
#__inference_signature_wrapper_42196Ц(-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUЂR
Ђ 
KЊH
F
input_1;8
input_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџ"CЊ@
>
add74
add+џџџџџџџџџџџџџџџџџџџџџџџџџџџ