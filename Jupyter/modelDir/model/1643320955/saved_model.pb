??
??
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
?
AsString

input"T

output"
Ttype:
2	
"
	precisionint?????????"

scientificbool( "
shortestbool( "
widthint?????????"
fillstring 
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
?
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 ?
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
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
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
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
?
global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_2Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_3Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_4Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_5Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_6Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_7Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_8Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_9Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_10Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_11Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_12Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_13Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_14Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_15Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_16Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_17Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_18Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_19Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_20Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_21Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_22Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_23Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_24Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_25Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_26Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_27Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_28Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_29Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_30Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_31Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_32Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_33Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_34Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_35Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_36Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_37Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_38Const*
_output_shapes
: *
dtype0*
valueB 
X
ParseExample/Const_39Const*
_output_shapes
: *
dtype0*
valueB 
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 
?
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:(*
dtype0*?
value?B?(Bmouth0xBmouth0yBmouth10xBmouth10yBmouth11xBmouth11yBmouth12xBmouth12yBmouth13xBmouth13yBmouth14xBmouth14yBmouth15xBmouth15yBmouth16xBmouth16yBmouth17xBmouth17yBmouth18xBmouth18yBmouth19xBmouth19yBmouth1xBmouth1yBmouth2xBmouth2yBmouth3xBmouth3yBmouth4xBmouth4yBmouth5xBmouth5yBmouth6xBmouth6yBmouth7xBmouth7yBmouth8xBmouth8yBmouth9xBmouth9y
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
?
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9ParseExample/Const_10ParseExample/Const_11ParseExample/Const_12ParseExample/Const_13ParseExample/Const_14ParseExample/Const_15ParseExample/Const_16ParseExample/Const_17ParseExample/Const_18ParseExample/Const_19ParseExample/Const_20ParseExample/Const_21ParseExample/Const_22ParseExample/Const_23ParseExample/Const_24ParseExample/Const_25ParseExample/Const_26ParseExample/Const_27ParseExample/Const_28ParseExample/Const_29ParseExample/Const_30ParseExample/Const_31ParseExample/Const_32ParseExample/Const_33ParseExample/Const_34ParseExample/Const_35ParseExample/Const_36ParseExample/Const_37ParseExample/Const_38ParseExample/Const_39*6
Tdense,
*2(*?
_output_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????*?
dense_shapes?
?::::::::::::::::::::::::::::::::::::::::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 
?
5linear/linear_model/mouth0x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth0x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth0x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth0x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth0x/weights
?
Dlinear/linear_model/mouth0x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth0x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth0x/weights/AssignAssignVariableOp#linear/linear_model/mouth0x/weights5linear/linear_model/mouth0x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth0x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth0x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth0y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth0y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth0y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth0y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth0y/weights
?
Dlinear/linear_model/mouth0y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth0y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth0y/weights/AssignAssignVariableOp#linear/linear_model/mouth0y/weights5linear/linear_model/mouth0y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth0y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth0y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth10x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth10x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth10x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth10x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth10x/weights
?
Elinear/linear_model/mouth10x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth10x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth10x/weights/AssignAssignVariableOp$linear/linear_model/mouth10x/weights6linear/linear_model/mouth10x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth10x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth10x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth10y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth10y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth10y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth10y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth10y/weights
?
Elinear/linear_model/mouth10y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth10y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth10y/weights/AssignAssignVariableOp$linear/linear_model/mouth10y/weights6linear/linear_model/mouth10y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth10y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth10y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth11x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth11x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth11x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth11x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth11x/weights
?
Elinear/linear_model/mouth11x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth11x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth11x/weights/AssignAssignVariableOp$linear/linear_model/mouth11x/weights6linear/linear_model/mouth11x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth11x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth11x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth11y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth11y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth11y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth11y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth11y/weights
?
Elinear/linear_model/mouth11y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth11y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth11y/weights/AssignAssignVariableOp$linear/linear_model/mouth11y/weights6linear/linear_model/mouth11y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth11y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth11y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth12x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth12x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth12x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth12x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth12x/weights
?
Elinear/linear_model/mouth12x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth12x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth12x/weights/AssignAssignVariableOp$linear/linear_model/mouth12x/weights6linear/linear_model/mouth12x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth12x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth12x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth12y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth12y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth12y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth12y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth12y/weights
?
Elinear/linear_model/mouth12y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth12y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth12y/weights/AssignAssignVariableOp$linear/linear_model/mouth12y/weights6linear/linear_model/mouth12y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth12y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth12y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth13x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth13x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth13x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth13x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth13x/weights
?
Elinear/linear_model/mouth13x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth13x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth13x/weights/AssignAssignVariableOp$linear/linear_model/mouth13x/weights6linear/linear_model/mouth13x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth13x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth13x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth13y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth13y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth13y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth13y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth13y/weights
?
Elinear/linear_model/mouth13y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth13y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth13y/weights/AssignAssignVariableOp$linear/linear_model/mouth13y/weights6linear/linear_model/mouth13y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth13y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth13y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth14x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth14x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth14x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth14x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth14x/weights
?
Elinear/linear_model/mouth14x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth14x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth14x/weights/AssignAssignVariableOp$linear/linear_model/mouth14x/weights6linear/linear_model/mouth14x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth14x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth14x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth14y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth14y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth14y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth14y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth14y/weights
?
Elinear/linear_model/mouth14y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth14y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth14y/weights/AssignAssignVariableOp$linear/linear_model/mouth14y/weights6linear/linear_model/mouth14y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth14y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth14y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth15x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth15x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth15x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth15x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth15x/weights
?
Elinear/linear_model/mouth15x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth15x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth15x/weights/AssignAssignVariableOp$linear/linear_model/mouth15x/weights6linear/linear_model/mouth15x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth15x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth15x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth15y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth15y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth15y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth15y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth15y/weights
?
Elinear/linear_model/mouth15y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth15y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth15y/weights/AssignAssignVariableOp$linear/linear_model/mouth15y/weights6linear/linear_model/mouth15y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth15y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth15y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth16x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth16x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth16x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth16x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth16x/weights
?
Elinear/linear_model/mouth16x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth16x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth16x/weights/AssignAssignVariableOp$linear/linear_model/mouth16x/weights6linear/linear_model/mouth16x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth16x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth16x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth16y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth16y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth16y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth16y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth16y/weights
?
Elinear/linear_model/mouth16y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth16y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth16y/weights/AssignAssignVariableOp$linear/linear_model/mouth16y/weights6linear/linear_model/mouth16y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth16y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth16y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth17x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth17x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth17x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth17x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth17x/weights
?
Elinear/linear_model/mouth17x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth17x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth17x/weights/AssignAssignVariableOp$linear/linear_model/mouth17x/weights6linear/linear_model/mouth17x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth17x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth17x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth17y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth17y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth17y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth17y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth17y/weights
?
Elinear/linear_model/mouth17y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth17y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth17y/weights/AssignAssignVariableOp$linear/linear_model/mouth17y/weights6linear/linear_model/mouth17y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth17y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth17y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth18x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth18x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth18x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth18x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth18x/weights
?
Elinear/linear_model/mouth18x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth18x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth18x/weights/AssignAssignVariableOp$linear/linear_model/mouth18x/weights6linear/linear_model/mouth18x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth18x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth18x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth18y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth18y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth18y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth18y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth18y/weights
?
Elinear/linear_model/mouth18y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth18y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth18y/weights/AssignAssignVariableOp$linear/linear_model/mouth18y/weights6linear/linear_model/mouth18y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth18y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth18y/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth19x/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth19x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth19x/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth19x/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth19x/weights
?
Elinear/linear_model/mouth19x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth19x/weights*
_output_shapes
: 
?
+linear/linear_model/mouth19x/weights/AssignAssignVariableOp$linear/linear_model/mouth19x/weights6linear/linear_model/mouth19x/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth19x/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth19x/weights*
_output_shapes

:*
dtype0
?
6linear/linear_model/mouth19y/weights/Initializer/zerosConst*7
_class-
+)loc:@linear/linear_model/mouth19y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
$linear/linear_model/mouth19y/weightsVarHandleOp*7
_class-
+)loc:@linear/linear_model/mouth19y/weights*
_output_shapes
: *
dtype0*
shape
:*5
shared_name&$linear/linear_model/mouth19y/weights
?
Elinear/linear_model/mouth19y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$linear/linear_model/mouth19y/weights*
_output_shapes
: 
?
+linear/linear_model/mouth19y/weights/AssignAssignVariableOp$linear/linear_model/mouth19y/weights6linear/linear_model/mouth19y/weights/Initializer/zeros*
dtype0
?
8linear/linear_model/mouth19y/weights/Read/ReadVariableOpReadVariableOp$linear/linear_model/mouth19y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth1x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth1x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth1x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth1x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth1x/weights
?
Dlinear/linear_model/mouth1x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth1x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth1x/weights/AssignAssignVariableOp#linear/linear_model/mouth1x/weights5linear/linear_model/mouth1x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth1x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth1x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth1y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth1y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth1y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth1y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth1y/weights
?
Dlinear/linear_model/mouth1y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth1y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth1y/weights/AssignAssignVariableOp#linear/linear_model/mouth1y/weights5linear/linear_model/mouth1y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth1y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth1y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth2x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth2x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth2x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth2x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth2x/weights
?
Dlinear/linear_model/mouth2x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth2x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth2x/weights/AssignAssignVariableOp#linear/linear_model/mouth2x/weights5linear/linear_model/mouth2x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth2x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth2x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth2y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth2y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth2y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth2y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth2y/weights
?
Dlinear/linear_model/mouth2y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth2y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth2y/weights/AssignAssignVariableOp#linear/linear_model/mouth2y/weights5linear/linear_model/mouth2y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth2y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth2y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth3x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth3x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth3x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth3x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth3x/weights
?
Dlinear/linear_model/mouth3x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth3x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth3x/weights/AssignAssignVariableOp#linear/linear_model/mouth3x/weights5linear/linear_model/mouth3x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth3x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth3x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth3y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth3y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth3y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth3y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth3y/weights
?
Dlinear/linear_model/mouth3y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth3y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth3y/weights/AssignAssignVariableOp#linear/linear_model/mouth3y/weights5linear/linear_model/mouth3y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth3y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth3y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth4x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth4x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth4x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth4x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth4x/weights
?
Dlinear/linear_model/mouth4x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth4x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth4x/weights/AssignAssignVariableOp#linear/linear_model/mouth4x/weights5linear/linear_model/mouth4x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth4x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth4x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth4y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth4y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth4y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth4y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth4y/weights
?
Dlinear/linear_model/mouth4y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth4y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth4y/weights/AssignAssignVariableOp#linear/linear_model/mouth4y/weights5linear/linear_model/mouth4y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth4y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth4y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth5x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth5x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth5x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth5x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth5x/weights
?
Dlinear/linear_model/mouth5x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth5x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth5x/weights/AssignAssignVariableOp#linear/linear_model/mouth5x/weights5linear/linear_model/mouth5x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth5x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth5x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth5y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth5y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth5y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth5y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth5y/weights
?
Dlinear/linear_model/mouth5y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth5y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth5y/weights/AssignAssignVariableOp#linear/linear_model/mouth5y/weights5linear/linear_model/mouth5y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth5y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth5y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth6x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth6x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth6x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth6x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth6x/weights
?
Dlinear/linear_model/mouth6x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth6x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth6x/weights/AssignAssignVariableOp#linear/linear_model/mouth6x/weights5linear/linear_model/mouth6x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth6x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth6x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth6y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth6y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth6y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth6y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth6y/weights
?
Dlinear/linear_model/mouth6y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth6y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth6y/weights/AssignAssignVariableOp#linear/linear_model/mouth6y/weights5linear/linear_model/mouth6y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth6y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth6y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth7x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth7x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth7x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth7x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth7x/weights
?
Dlinear/linear_model/mouth7x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth7x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth7x/weights/AssignAssignVariableOp#linear/linear_model/mouth7x/weights5linear/linear_model/mouth7x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth7x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth7x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth7y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth7y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth7y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth7y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth7y/weights
?
Dlinear/linear_model/mouth7y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth7y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth7y/weights/AssignAssignVariableOp#linear/linear_model/mouth7y/weights5linear/linear_model/mouth7y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth7y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth7y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth8x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth8x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth8x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth8x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth8x/weights
?
Dlinear/linear_model/mouth8x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth8x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth8x/weights/AssignAssignVariableOp#linear/linear_model/mouth8x/weights5linear/linear_model/mouth8x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth8x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth8x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth8y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth8y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth8y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth8y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth8y/weights
?
Dlinear/linear_model/mouth8y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth8y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth8y/weights/AssignAssignVariableOp#linear/linear_model/mouth8y/weights5linear/linear_model/mouth8y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth8y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth8y/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth9x/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth9x/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth9x/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth9x/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth9x/weights
?
Dlinear/linear_model/mouth9x/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth9x/weights*
_output_shapes
: 
?
*linear/linear_model/mouth9x/weights/AssignAssignVariableOp#linear/linear_model/mouth9x/weights5linear/linear_model/mouth9x/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth9x/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth9x/weights*
_output_shapes

:*
dtype0
?
5linear/linear_model/mouth9y/weights/Initializer/zerosConst*6
_class,
*(loc:@linear/linear_model/mouth9y/weights*
_output_shapes

:*
dtype0*
valueB*    
?
#linear/linear_model/mouth9y/weightsVarHandleOp*6
_class,
*(loc:@linear/linear_model/mouth9y/weights*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#linear/linear_model/mouth9y/weights
?
Dlinear/linear_model/mouth9y/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp#linear/linear_model/mouth9y/weights*
_output_shapes
: 
?
*linear/linear_model/mouth9y/weights/AssignAssignVariableOp#linear/linear_model/mouth9y/weights5linear/linear_model/mouth9y/weights/Initializer/zeros*
dtype0
?
7linear/linear_model/mouth9y/weights/Read/ReadVariableOpReadVariableOp#linear/linear_model/mouth9y/weights*
_output_shapes

:*
dtype0
?
2linear/linear_model/bias_weights/Initializer/zerosConst*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
:*
dtype0*
valueB*    
?
 linear/linear_model/bias_weightsVarHandleOp*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
: *
dtype0*
shape:*1
shared_name" linear/linear_model/bias_weights
?
Alinear/linear_model/bias_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp linear/linear_model/bias_weights*
_output_shapes
: 
?
'linear/linear_model/bias_weights/AssignAssignVariableOp linear/linear_model/bias_weights2linear/linear_model/bias_weights/Initializer/zeros*
dtype0
?
4linear/linear_model/bias_weights/Read/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/ShapeShapeParseExample/ParseExampleV2*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/ReshapeReshapeParseExample/ParseExampleV2Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth0x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth0x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth0x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/ShapeShapeParseExample/ParseExampleV2:1*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/ReshapeReshapeParseExample/ParseExampleV2:1Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth0y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth0y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth0y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/ShapeShapeParseExample/ParseExampleV2:2*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/ReshapeReshapeParseExample/ParseExampleV2:2Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth10x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth10x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth10x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/ShapeShapeParseExample/ParseExampleV2:3*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/ReshapeReshapeParseExample/ParseExampleV2:3Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth10y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth10y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth10y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/ShapeShapeParseExample/ParseExampleV2:4*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/ReshapeReshapeParseExample/ParseExampleV2:4Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth11x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth11x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth11x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/ShapeShapeParseExample/ParseExampleV2:5*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/ReshapeReshapeParseExample/ParseExampleV2:5Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth11y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth11y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth11y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/ShapeShapeParseExample/ParseExampleV2:6*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/ReshapeReshapeParseExample/ParseExampleV2:6Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth12x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth12x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth12x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/ShapeShapeParseExample/ParseExampleV2:7*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/ReshapeReshapeParseExample/ParseExampleV2:7Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth12y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth12y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth12y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/ShapeShapeParseExample/ParseExampleV2:8*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/ReshapeReshapeParseExample/ParseExampleV2:8Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth13x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth13x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth13x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/ShapeShapeParseExample/ParseExampleV2:9*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/ReshapeReshapeParseExample/ParseExampleV2:9Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth13y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth13y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth13y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/ShapeShapeParseExample/ParseExampleV2:10*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/ReshapeReshapeParseExample/ParseExampleV2:10Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth14x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth14x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth14x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/ShapeShapeParseExample/ParseExampleV2:11*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/ReshapeReshapeParseExample/ParseExampleV2:11Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth14y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth14y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth14y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/ShapeShapeParseExample/ParseExampleV2:12*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/ReshapeReshapeParseExample/ParseExampleV2:12Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth15x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth15x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth15x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/ShapeShapeParseExample/ParseExampleV2:13*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/ReshapeReshapeParseExample/ParseExampleV2:13Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth15y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth15y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth15y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/ShapeShapeParseExample/ParseExampleV2:14*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/ReshapeReshapeParseExample/ParseExampleV2:14Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth16x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth16x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth16x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/ShapeShapeParseExample/ParseExampleV2:15*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/ReshapeReshapeParseExample/ParseExampleV2:15Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth16y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth16y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth16y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/ShapeShapeParseExample/ParseExampleV2:16*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/ReshapeReshapeParseExample/ParseExampleV2:16Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth17x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth17x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth17x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/ShapeShapeParseExample/ParseExampleV2:17*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/ReshapeReshapeParseExample/ParseExampleV2:17Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth17y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth17y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth17y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/ShapeShapeParseExample/ParseExampleV2:18*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/ReshapeReshapeParseExample/ParseExampleV2:18Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth18x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth18x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth18x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/ShapeShapeParseExample/ParseExampleV2:19*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/ReshapeReshapeParseExample/ParseExampleV2:19Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth18y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth18y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth18y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/ShapeShapeParseExample/ParseExampleV2:20*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/ReshapeReshapeParseExample/ParseExampleV2:20Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth19x/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth19x/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth19x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Jlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/ShapeShapeParseExample/ParseExampleV2:21*
T0*
_output_shapes
:
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_sliceStridedSliceJlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/ShapeXlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_slice/stackZlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_slice/stack_1Zlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/Reshape/shapePackRlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/strided_sliceTlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Llinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/ReshapeReshapeParseExample/ParseExampleV2:21Rlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/mouth19y/weighted_sum/ReadVariableOpReadVariableOp$linear/linear_model/mouth19y/weights*
_output_shapes

:*
dtype0
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/weighted_sumMatMulLlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/Reshape`linear/linear_model/linear/linear_model/linear/linear_model/mouth19y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/ShapeShapeParseExample/ParseExampleV2:22*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/ReshapeReshapeParseExample/ParseExampleV2:22Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth1x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth1x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth1x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/ShapeShapeParseExample/ParseExampleV2:23*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/ReshapeReshapeParseExample/ParseExampleV2:23Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth1y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth1y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth1y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/ShapeShapeParseExample/ParseExampleV2:24*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/ReshapeReshapeParseExample/ParseExampleV2:24Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth2x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth2x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth2x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/ShapeShapeParseExample/ParseExampleV2:25*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/ReshapeReshapeParseExample/ParseExampleV2:25Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth2y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth2y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth2y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/ShapeShapeParseExample/ParseExampleV2:26*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/ReshapeReshapeParseExample/ParseExampleV2:26Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth3x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth3x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth3x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/ShapeShapeParseExample/ParseExampleV2:27*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/ReshapeReshapeParseExample/ParseExampleV2:27Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth3y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth3y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth3y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/ShapeShapeParseExample/ParseExampleV2:28*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/ReshapeReshapeParseExample/ParseExampleV2:28Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth4x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth4x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth4x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/ShapeShapeParseExample/ParseExampleV2:29*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/ReshapeReshapeParseExample/ParseExampleV2:29Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth4y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth4y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth4y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/ShapeShapeParseExample/ParseExampleV2:30*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/ReshapeReshapeParseExample/ParseExampleV2:30Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth5x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth5x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth5x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/ShapeShapeParseExample/ParseExampleV2:31*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/ReshapeReshapeParseExample/ParseExampleV2:31Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth5y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth5y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth5y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/ShapeShapeParseExample/ParseExampleV2:32*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/ReshapeReshapeParseExample/ParseExampleV2:32Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth6x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth6x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth6x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/ShapeShapeParseExample/ParseExampleV2:33*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/ReshapeReshapeParseExample/ParseExampleV2:33Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth6y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth6y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth6y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/ShapeShapeParseExample/ParseExampleV2:34*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/ReshapeReshapeParseExample/ParseExampleV2:34Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth7x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth7x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth7x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/ShapeShapeParseExample/ParseExampleV2:35*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/ReshapeReshapeParseExample/ParseExampleV2:35Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth7y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth7y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth7y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/ShapeShapeParseExample/ParseExampleV2:36*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/ReshapeReshapeParseExample/ParseExampleV2:36Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth8x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth8x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth8x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/ShapeShapeParseExample/ParseExampleV2:37*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/ReshapeReshapeParseExample/ParseExampleV2:37Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth8y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth8y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth8y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/ShapeShapeParseExample/ParseExampleV2:38*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/ReshapeReshapeParseExample/ParseExampleV2:38Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth9x/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth9x/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth9x/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Ilinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/ShapeShapeParseExample/ParseExampleV2:39*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_sliceStridedSliceIlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/ShapeWlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_slice/stackYlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_slice/stack_1Ylinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Slinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/Reshape/shapePackQlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/strided_sliceSlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Klinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/ReshapeReshapeParseExample/ParseExampleV2:39Qlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/Reshape/shape*
T0*'
_output_shapes
:?????????
?
_linear/linear_model/linear/linear_model/linear/linear_model/mouth9y/weighted_sum/ReadVariableOpReadVariableOp#linear/linear_model/mouth9y/weights*
_output_shapes

:*
dtype0
?
Plinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/weighted_sumMatMulKlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/Reshape_linear/linear_model/linear/linear_model/linear/linear_model/mouth9y/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Plinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasAddNPlinear/linear_model/linear/linear_model/linear/linear_model/mouth0x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth0y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth10x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth10y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth11x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth11y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth12x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth12y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth13x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth13y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth14x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth14y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth15x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth15y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth16x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth16y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth17x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth17y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth18x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth18y/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth19x/weighted_sumQlinear/linear_model/linear/linear_model/linear/linear_model/mouth19y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth1x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth1y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth2x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth2y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth3x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth3y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth4x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth4y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth5x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth5y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth6x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth6y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth7x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth7y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth8x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth8y/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth9x/weighted_sumPlinear/linear_model/linear/linear_model/linear/linear_model/mouth9y/weighted_sum*
N(*
T0*'
_output_shapes
:?????????
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
?
Hlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sumBiasAddPlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasWlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
k
ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_sliceStridedSliceReadVariableOpstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
N
	bias/tagsConst*
_output_shapes
: *
dtype0*
valueB
 Bbias
P
biasScalarSummary	bias/tagsstrided_slice*
T0*
_output_shapes
: 
?
,zero_fraction/total_size/Size/ReadVariableOpReadVariableOp#linear/linear_model/mouth0x/weights*
_output_shapes

:*
dtype0
_
zero_fraction/total_size/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp#linear/linear_model/mouth0y/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp$linear/linear_model/mouth10x/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_2Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp$linear/linear_model/mouth10y/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_3Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp$linear/linear_model/mouth11x/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_4Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp$linear/linear_model/mouth11y/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp$linear/linear_model/mouth12x/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_6Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp$linear/linear_model/mouth12y/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_7Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp$linear/linear_model/mouth13x/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_8Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_9/ReadVariableOpReadVariableOp$linear/linear_model/mouth13y/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_9Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_10/ReadVariableOpReadVariableOp$linear/linear_model/mouth14x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_10Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_11/ReadVariableOpReadVariableOp$linear/linear_model/mouth14y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_11Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_12/ReadVariableOpReadVariableOp$linear/linear_model/mouth15x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_12Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_13/ReadVariableOpReadVariableOp$linear/linear_model/mouth15y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_13Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_14/ReadVariableOpReadVariableOp$linear/linear_model/mouth16x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_14Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_15/ReadVariableOpReadVariableOp$linear/linear_model/mouth16y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_15Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_16/ReadVariableOpReadVariableOp$linear/linear_model/mouth17x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_16Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_17/ReadVariableOpReadVariableOp$linear/linear_model/mouth17y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_17Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_18/ReadVariableOpReadVariableOp$linear/linear_model/mouth18x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_18Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_19/ReadVariableOpReadVariableOp$linear/linear_model/mouth18y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_19Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_20/ReadVariableOpReadVariableOp$linear/linear_model/mouth19x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_20Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_21/ReadVariableOpReadVariableOp$linear/linear_model/mouth19y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_21Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_22/ReadVariableOpReadVariableOp#linear/linear_model/mouth1x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_22Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_23/ReadVariableOpReadVariableOp#linear/linear_model/mouth1y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_23Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_24/ReadVariableOpReadVariableOp#linear/linear_model/mouth2x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_24Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_25/ReadVariableOpReadVariableOp#linear/linear_model/mouth2y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_25Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_26/ReadVariableOpReadVariableOp#linear/linear_model/mouth3x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_26Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_27/ReadVariableOpReadVariableOp#linear/linear_model/mouth3y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_27Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_28/ReadVariableOpReadVariableOp#linear/linear_model/mouth4x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_28Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_29/ReadVariableOpReadVariableOp#linear/linear_model/mouth4y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_29Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_30/ReadVariableOpReadVariableOp#linear/linear_model/mouth5x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_30Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_31/ReadVariableOpReadVariableOp#linear/linear_model/mouth5y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_31Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_32/ReadVariableOpReadVariableOp#linear/linear_model/mouth6x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_32Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_33/ReadVariableOpReadVariableOp#linear/linear_model/mouth6y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_33Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_34/ReadVariableOpReadVariableOp#linear/linear_model/mouth7x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_34Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_35/ReadVariableOpReadVariableOp#linear/linear_model/mouth7y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_35Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_36/ReadVariableOpReadVariableOp#linear/linear_model/mouth8x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_36Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_37/ReadVariableOpReadVariableOp#linear/linear_model/mouth8y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_37Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_38/ReadVariableOpReadVariableOp#linear/linear_model/mouth9x/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_38Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
/zero_fraction/total_size/Size_39/ReadVariableOpReadVariableOp#linear/linear_model/mouth9y/weights*
_output_shapes

:*
dtype0
b
 zero_fraction/total_size/Size_39Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
zero_fraction/total_size/AddNAddNzero_fraction/total_size/Sizezero_fraction/total_size/Size_1zero_fraction/total_size/Size_2zero_fraction/total_size/Size_3zero_fraction/total_size/Size_4zero_fraction/total_size/Size_5zero_fraction/total_size/Size_6zero_fraction/total_size/Size_7zero_fraction/total_size/Size_8zero_fraction/total_size/Size_9 zero_fraction/total_size/Size_10 zero_fraction/total_size/Size_11 zero_fraction/total_size/Size_12 zero_fraction/total_size/Size_13 zero_fraction/total_size/Size_14 zero_fraction/total_size/Size_15 zero_fraction/total_size/Size_16 zero_fraction/total_size/Size_17 zero_fraction/total_size/Size_18 zero_fraction/total_size/Size_19 zero_fraction/total_size/Size_20 zero_fraction/total_size/Size_21 zero_fraction/total_size/Size_22 zero_fraction/total_size/Size_23 zero_fraction/total_size/Size_24 zero_fraction/total_size/Size_25 zero_fraction/total_size/Size_26 zero_fraction/total_size/Size_27 zero_fraction/total_size/Size_28 zero_fraction/total_size/Size_29 zero_fraction/total_size/Size_30 zero_fraction/total_size/Size_31 zero_fraction/total_size/Size_32 zero_fraction/total_size/Size_33 zero_fraction/total_size/Size_34 zero_fraction/total_size/Size_35 zero_fraction/total_size/Size_36 zero_fraction/total_size/Size_37 zero_fraction/total_size/Size_38 zero_fraction/total_size/Size_39*
N(*
T0	*
_output_shapes
: 
`
zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
zero_fraction/total_zero/EqualEqualzero_fraction/total_size/Sizezero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
?
#zero_fraction/total_zero/zero_countIfzero_fraction/total_zero/Equal#linear/linear_model/mouth0x/weightszero_fraction/total_size/Size*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*B
else_branch3R1
/zero_fraction_total_zero_zero_count_false_89593*
output_shapes
: *A
then_branch2R0
.zero_fraction_total_zero_zero_count_true_89592
~
,zero_fraction/total_zero/zero_count/IdentityIdentity#zero_fraction/total_zero/zero_count*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_1Equalzero_fraction/total_size/Size_1 zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_1If zero_fraction/total_zero/Equal_1#linear/linear_model/mouth0y/weightszero_fraction/total_size/Size_1*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_1_false_89636*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_1_true_89635
?
.zero_fraction/total_zero/zero_count_1/IdentityIdentity%zero_fraction/total_zero/zero_count_1*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_2Equalzero_fraction/total_size/Size_2 zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_2If zero_fraction/total_zero/Equal_2$linear/linear_model/mouth10x/weightszero_fraction/total_size/Size_2*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_2_false_89679*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_2_true_89678
?
.zero_fraction/total_zero/zero_count_2/IdentityIdentity%zero_fraction/total_zero/zero_count_2*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_3Equalzero_fraction/total_size/Size_3 zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_3If zero_fraction/total_zero/Equal_3$linear/linear_model/mouth10y/weightszero_fraction/total_size/Size_3*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_3_false_89722*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_3_true_89721
?
.zero_fraction/total_zero/zero_count_3/IdentityIdentity%zero_fraction/total_zero/zero_count_3*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_4Equalzero_fraction/total_size/Size_4 zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_4If zero_fraction/total_zero/Equal_4$linear/linear_model/mouth11x/weightszero_fraction/total_size/Size_4*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_4_false_89765*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_4_true_89764
?
.zero_fraction/total_zero/zero_count_4/IdentityIdentity%zero_fraction/total_zero/zero_count_4*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_5Equalzero_fraction/total_size/Size_5 zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_5If zero_fraction/total_zero/Equal_5$linear/linear_model/mouth11y/weightszero_fraction/total_size/Size_5*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_5_false_89808*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_5_true_89807
?
.zero_fraction/total_zero/zero_count_5/IdentityIdentity%zero_fraction/total_zero/zero_count_5*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_6Equalzero_fraction/total_size/Size_6 zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_6If zero_fraction/total_zero/Equal_6$linear/linear_model/mouth12x/weightszero_fraction/total_size/Size_6*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_6_false_89851*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_6_true_89850
?
.zero_fraction/total_zero/zero_count_6/IdentityIdentity%zero_fraction/total_zero/zero_count_6*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_7Equalzero_fraction/total_size/Size_7 zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_7If zero_fraction/total_zero/Equal_7$linear/linear_model/mouth12y/weightszero_fraction/total_size/Size_7*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_7_false_89894*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_7_true_89893
?
.zero_fraction/total_zero/zero_count_7/IdentityIdentity%zero_fraction/total_zero/zero_count_7*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_8Equalzero_fraction/total_size/Size_8 zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_8If zero_fraction/total_zero/Equal_8$linear/linear_model/mouth13x/weightszero_fraction/total_size/Size_8*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_8_false_89937*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_8_true_89936
?
.zero_fraction/total_zero/zero_count_8/IdentityIdentity%zero_fraction/total_zero/zero_count_8*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_9Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_9Equalzero_fraction/total_size/Size_9 zero_fraction/total_zero/Const_9*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_9If zero_fraction/total_zero/Equal_9$linear/linear_model/mouth13y/weightszero_fraction/total_size/Size_9*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_9_false_89980*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_9_true_89979
?
.zero_fraction/total_zero/zero_count_9/IdentityIdentity%zero_fraction/total_zero/zero_count_9*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_10Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_10Equal zero_fraction/total_size/Size_10!zero_fraction/total_zero/Const_10*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_10If!zero_fraction/total_zero/Equal_10$linear/linear_model/mouth14x/weights zero_fraction/total_size/Size_10*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_10_false_90023*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_10_true_90022
?
/zero_fraction/total_zero/zero_count_10/IdentityIdentity&zero_fraction/total_zero/zero_count_10*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_11Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_11Equal zero_fraction/total_size/Size_11!zero_fraction/total_zero/Const_11*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_11If!zero_fraction/total_zero/Equal_11$linear/linear_model/mouth14y/weights zero_fraction/total_size/Size_11*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_11_false_90066*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_11_true_90065
?
/zero_fraction/total_zero/zero_count_11/IdentityIdentity&zero_fraction/total_zero/zero_count_11*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_12Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_12Equal zero_fraction/total_size/Size_12!zero_fraction/total_zero/Const_12*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_12If!zero_fraction/total_zero/Equal_12$linear/linear_model/mouth15x/weights zero_fraction/total_size/Size_12*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_12_false_90109*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_12_true_90108
?
/zero_fraction/total_zero/zero_count_12/IdentityIdentity&zero_fraction/total_zero/zero_count_12*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_13Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_13Equal zero_fraction/total_size/Size_13!zero_fraction/total_zero/Const_13*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_13If!zero_fraction/total_zero/Equal_13$linear/linear_model/mouth15y/weights zero_fraction/total_size/Size_13*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_13_false_90152*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_13_true_90151
?
/zero_fraction/total_zero/zero_count_13/IdentityIdentity&zero_fraction/total_zero/zero_count_13*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_14Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_14Equal zero_fraction/total_size/Size_14!zero_fraction/total_zero/Const_14*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_14If!zero_fraction/total_zero/Equal_14$linear/linear_model/mouth16x/weights zero_fraction/total_size/Size_14*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_14_false_90195*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_14_true_90194
?
/zero_fraction/total_zero/zero_count_14/IdentityIdentity&zero_fraction/total_zero/zero_count_14*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_15Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_15Equal zero_fraction/total_size/Size_15!zero_fraction/total_zero/Const_15*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_15If!zero_fraction/total_zero/Equal_15$linear/linear_model/mouth16y/weights zero_fraction/total_size/Size_15*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_15_false_90238*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_15_true_90237
?
/zero_fraction/total_zero/zero_count_15/IdentityIdentity&zero_fraction/total_zero/zero_count_15*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_16Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_16Equal zero_fraction/total_size/Size_16!zero_fraction/total_zero/Const_16*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_16If!zero_fraction/total_zero/Equal_16$linear/linear_model/mouth17x/weights zero_fraction/total_size/Size_16*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_16_false_90281*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_16_true_90280
?
/zero_fraction/total_zero/zero_count_16/IdentityIdentity&zero_fraction/total_zero/zero_count_16*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_17Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_17Equal zero_fraction/total_size/Size_17!zero_fraction/total_zero/Const_17*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_17If!zero_fraction/total_zero/Equal_17$linear/linear_model/mouth17y/weights zero_fraction/total_size/Size_17*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_17_false_90324*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_17_true_90323
?
/zero_fraction/total_zero/zero_count_17/IdentityIdentity&zero_fraction/total_zero/zero_count_17*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_18Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_18Equal zero_fraction/total_size/Size_18!zero_fraction/total_zero/Const_18*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_18If!zero_fraction/total_zero/Equal_18$linear/linear_model/mouth18x/weights zero_fraction/total_size/Size_18*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_18_false_90367*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_18_true_90366
?
/zero_fraction/total_zero/zero_count_18/IdentityIdentity&zero_fraction/total_zero/zero_count_18*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_19Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_19Equal zero_fraction/total_size/Size_19!zero_fraction/total_zero/Const_19*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_19If!zero_fraction/total_zero/Equal_19$linear/linear_model/mouth18y/weights zero_fraction/total_size/Size_19*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_19_false_90410*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_19_true_90409
?
/zero_fraction/total_zero/zero_count_19/IdentityIdentity&zero_fraction/total_zero/zero_count_19*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_20Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_20Equal zero_fraction/total_size/Size_20!zero_fraction/total_zero/Const_20*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_20If!zero_fraction/total_zero/Equal_20$linear/linear_model/mouth19x/weights zero_fraction/total_size/Size_20*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_20_false_90453*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_20_true_90452
?
/zero_fraction/total_zero/zero_count_20/IdentityIdentity&zero_fraction/total_zero/zero_count_20*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_21Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_21Equal zero_fraction/total_size/Size_21!zero_fraction/total_zero/Const_21*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_21If!zero_fraction/total_zero/Equal_21$linear/linear_model/mouth19y/weights zero_fraction/total_size/Size_21*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_21_false_90496*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_21_true_90495
?
/zero_fraction/total_zero/zero_count_21/IdentityIdentity&zero_fraction/total_zero/zero_count_21*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_22Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_22Equal zero_fraction/total_size/Size_22!zero_fraction/total_zero/Const_22*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_22If!zero_fraction/total_zero/Equal_22#linear/linear_model/mouth1x/weights zero_fraction/total_size/Size_22*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_22_false_90539*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_22_true_90538
?
/zero_fraction/total_zero/zero_count_22/IdentityIdentity&zero_fraction/total_zero/zero_count_22*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_23Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_23Equal zero_fraction/total_size/Size_23!zero_fraction/total_zero/Const_23*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_23If!zero_fraction/total_zero/Equal_23#linear/linear_model/mouth1y/weights zero_fraction/total_size/Size_23*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_23_false_90582*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_23_true_90581
?
/zero_fraction/total_zero/zero_count_23/IdentityIdentity&zero_fraction/total_zero/zero_count_23*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_24Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_24Equal zero_fraction/total_size/Size_24!zero_fraction/total_zero/Const_24*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_24If!zero_fraction/total_zero/Equal_24#linear/linear_model/mouth2x/weights zero_fraction/total_size/Size_24*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_24_false_90625*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_24_true_90624
?
/zero_fraction/total_zero/zero_count_24/IdentityIdentity&zero_fraction/total_zero/zero_count_24*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_25Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_25Equal zero_fraction/total_size/Size_25!zero_fraction/total_zero/Const_25*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_25If!zero_fraction/total_zero/Equal_25#linear/linear_model/mouth2y/weights zero_fraction/total_size/Size_25*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_25_false_90668*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_25_true_90667
?
/zero_fraction/total_zero/zero_count_25/IdentityIdentity&zero_fraction/total_zero/zero_count_25*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_26Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_26Equal zero_fraction/total_size/Size_26!zero_fraction/total_zero/Const_26*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_26If!zero_fraction/total_zero/Equal_26#linear/linear_model/mouth3x/weights zero_fraction/total_size/Size_26*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_26_false_90711*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_26_true_90710
?
/zero_fraction/total_zero/zero_count_26/IdentityIdentity&zero_fraction/total_zero/zero_count_26*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_27Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_27Equal zero_fraction/total_size/Size_27!zero_fraction/total_zero/Const_27*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_27If!zero_fraction/total_zero/Equal_27#linear/linear_model/mouth3y/weights zero_fraction/total_size/Size_27*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_27_false_90754*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_27_true_90753
?
/zero_fraction/total_zero/zero_count_27/IdentityIdentity&zero_fraction/total_zero/zero_count_27*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_28Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_28Equal zero_fraction/total_size/Size_28!zero_fraction/total_zero/Const_28*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_28If!zero_fraction/total_zero/Equal_28#linear/linear_model/mouth4x/weights zero_fraction/total_size/Size_28*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_28_false_90797*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_28_true_90796
?
/zero_fraction/total_zero/zero_count_28/IdentityIdentity&zero_fraction/total_zero/zero_count_28*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_29Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_29Equal zero_fraction/total_size/Size_29!zero_fraction/total_zero/Const_29*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_29If!zero_fraction/total_zero/Equal_29#linear/linear_model/mouth4y/weights zero_fraction/total_size/Size_29*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_29_false_90840*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_29_true_90839
?
/zero_fraction/total_zero/zero_count_29/IdentityIdentity&zero_fraction/total_zero/zero_count_29*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_30Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_30Equal zero_fraction/total_size/Size_30!zero_fraction/total_zero/Const_30*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_30If!zero_fraction/total_zero/Equal_30#linear/linear_model/mouth5x/weights zero_fraction/total_size/Size_30*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_30_false_90883*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_30_true_90882
?
/zero_fraction/total_zero/zero_count_30/IdentityIdentity&zero_fraction/total_zero/zero_count_30*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_31Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_31Equal zero_fraction/total_size/Size_31!zero_fraction/total_zero/Const_31*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_31If!zero_fraction/total_zero/Equal_31#linear/linear_model/mouth5y/weights zero_fraction/total_size/Size_31*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_31_false_90926*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_31_true_90925
?
/zero_fraction/total_zero/zero_count_31/IdentityIdentity&zero_fraction/total_zero/zero_count_31*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_32Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_32Equal zero_fraction/total_size/Size_32!zero_fraction/total_zero/Const_32*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_32If!zero_fraction/total_zero/Equal_32#linear/linear_model/mouth6x/weights zero_fraction/total_size/Size_32*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_32_false_90969*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_32_true_90968
?
/zero_fraction/total_zero/zero_count_32/IdentityIdentity&zero_fraction/total_zero/zero_count_32*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_33Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_33Equal zero_fraction/total_size/Size_33!zero_fraction/total_zero/Const_33*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_33If!zero_fraction/total_zero/Equal_33#linear/linear_model/mouth6y/weights zero_fraction/total_size/Size_33*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_33_false_91012*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_33_true_91011
?
/zero_fraction/total_zero/zero_count_33/IdentityIdentity&zero_fraction/total_zero/zero_count_33*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_34Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_34Equal zero_fraction/total_size/Size_34!zero_fraction/total_zero/Const_34*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_34If!zero_fraction/total_zero/Equal_34#linear/linear_model/mouth7x/weights zero_fraction/total_size/Size_34*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_34_false_91055*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_34_true_91054
?
/zero_fraction/total_zero/zero_count_34/IdentityIdentity&zero_fraction/total_zero/zero_count_34*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_35Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_35Equal zero_fraction/total_size/Size_35!zero_fraction/total_zero/Const_35*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_35If!zero_fraction/total_zero/Equal_35#linear/linear_model/mouth7y/weights zero_fraction/total_size/Size_35*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_35_false_91098*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_35_true_91097
?
/zero_fraction/total_zero/zero_count_35/IdentityIdentity&zero_fraction/total_zero/zero_count_35*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_36Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_36Equal zero_fraction/total_size/Size_36!zero_fraction/total_zero/Const_36*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_36If!zero_fraction/total_zero/Equal_36#linear/linear_model/mouth8x/weights zero_fraction/total_size/Size_36*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_36_false_91141*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_36_true_91140
?
/zero_fraction/total_zero/zero_count_36/IdentityIdentity&zero_fraction/total_zero/zero_count_36*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_37Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_37Equal zero_fraction/total_size/Size_37!zero_fraction/total_zero/Const_37*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_37If!zero_fraction/total_zero/Equal_37#linear/linear_model/mouth8y/weights zero_fraction/total_size/Size_37*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_37_false_91184*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_37_true_91183
?
/zero_fraction/total_zero/zero_count_37/IdentityIdentity&zero_fraction/total_zero/zero_count_37*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_38Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_38Equal zero_fraction/total_size/Size_38!zero_fraction/total_zero/Const_38*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_38If!zero_fraction/total_zero/Equal_38#linear/linear_model/mouth9x/weights zero_fraction/total_size/Size_38*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_38_false_91227*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_38_true_91226
?
/zero_fraction/total_zero/zero_count_38/IdentityIdentity&zero_fraction/total_zero/zero_count_38*
T0*
_output_shapes
: 
c
!zero_fraction/total_zero/Const_39Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
!zero_fraction/total_zero/Equal_39Equal zero_fraction/total_size/Size_39!zero_fraction/total_zero/Const_39*
T0	*
_output_shapes
: 
?
&zero_fraction/total_zero/zero_count_39If!zero_fraction/total_zero/Equal_39#linear/linear_model/mouth9y/weights zero_fraction/total_size/Size_39*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*E
else_branch6R4
2zero_fraction_total_zero_zero_count_39_false_91270*
output_shapes
: *D
then_branch5R3
1zero_fraction_total_zero_zero_count_39_true_91269
?
/zero_fraction/total_zero/zero_count_39/IdentityIdentity&zero_fraction/total_zero/zero_count_39*
T0*
_output_shapes
: 
?
zero_fraction/total_zero/AddNAddN,zero_fraction/total_zero/zero_count/Identity.zero_fraction/total_zero/zero_count_1/Identity.zero_fraction/total_zero/zero_count_2/Identity.zero_fraction/total_zero/zero_count_3/Identity.zero_fraction/total_zero/zero_count_4/Identity.zero_fraction/total_zero/zero_count_5/Identity.zero_fraction/total_zero/zero_count_6/Identity.zero_fraction/total_zero/zero_count_7/Identity.zero_fraction/total_zero/zero_count_8/Identity.zero_fraction/total_zero/zero_count_9/Identity/zero_fraction/total_zero/zero_count_10/Identity/zero_fraction/total_zero/zero_count_11/Identity/zero_fraction/total_zero/zero_count_12/Identity/zero_fraction/total_zero/zero_count_13/Identity/zero_fraction/total_zero/zero_count_14/Identity/zero_fraction/total_zero/zero_count_15/Identity/zero_fraction/total_zero/zero_count_16/Identity/zero_fraction/total_zero/zero_count_17/Identity/zero_fraction/total_zero/zero_count_18/Identity/zero_fraction/total_zero/zero_count_19/Identity/zero_fraction/total_zero/zero_count_20/Identity/zero_fraction/total_zero/zero_count_21/Identity/zero_fraction/total_zero/zero_count_22/Identity/zero_fraction/total_zero/zero_count_23/Identity/zero_fraction/total_zero/zero_count_24/Identity/zero_fraction/total_zero/zero_count_25/Identity/zero_fraction/total_zero/zero_count_26/Identity/zero_fraction/total_zero/zero_count_27/Identity/zero_fraction/total_zero/zero_count_28/Identity/zero_fraction/total_zero/zero_count_29/Identity/zero_fraction/total_zero/zero_count_30/Identity/zero_fraction/total_zero/zero_count_31/Identity/zero_fraction/total_zero/zero_count_32/Identity/zero_fraction/total_zero/zero_count_33/Identity/zero_fraction/total_zero/zero_count_34/Identity/zero_fraction/total_zero/zero_count_35/Identity/zero_fraction/total_zero/zero_count_36/Identity/zero_fraction/total_zero/zero_count_37/Identity/zero_fraction/total_zero/zero_count_38/Identity/zero_fraction/total_zero/zero_count_39/Identity*
N(*
T0*
_output_shapes
: 
y
"zero_fraction/compute/float32_sizeCastzero_fraction/total_size/AddN*

DstT0*

SrcT0	*
_output_shapes
: 
?
zero_fraction/compute/truedivRealDivzero_fraction/total_zero/AddN"zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
n
"zero_fraction/zero_fraction_or_nanIdentityzero_fraction/compute/truediv*
T0*
_output_shapes
: 
v
fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*)
value B Bfraction_of_zero_weights
?
fraction_of_zero_weightsScalarSummaryfraction_of_zero_weights/tags"zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
?
head/logits/ShapeShapeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
?
head/predictions/logisticSigmoidHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*'
_output_shapes
:?????????
?
head/predictions/zeros_like	ZerosLikeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*'
_output_shapes
:?????????
q
&head/predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum&head/predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:?????????
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:?????????
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:?????????
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:?????????
?
head/predictions/ShapeShapeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:?????????
?
head/predictions/Shape_1ShapeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:?????????
X

head/ShapeShapehead/predictions/probabilities*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
d
head/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
d
head/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
R
head/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
R
head/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
R
head/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
e

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:
J
head/AsStringAsString
head/range*
T0*
_output_shapes
:
U
head/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
j
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
N*
T0*
_output_shapes
:
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:?????????

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp\part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*Bglobal_stepB linear/linear_model/bias_weightsB#linear/linear_model/mouth0x/weightsB#linear/linear_model/mouth0y/weightsB$linear/linear_model/mouth10x/weightsB$linear/linear_model/mouth10y/weightsB$linear/linear_model/mouth11x/weightsB$linear/linear_model/mouth11y/weightsB$linear/linear_model/mouth12x/weightsB$linear/linear_model/mouth12y/weightsB$linear/linear_model/mouth13x/weightsB$linear/linear_model/mouth13y/weightsB$linear/linear_model/mouth14x/weightsB$linear/linear_model/mouth14y/weightsB$linear/linear_model/mouth15x/weightsB$linear/linear_model/mouth15y/weightsB$linear/linear_model/mouth16x/weightsB$linear/linear_model/mouth16y/weightsB$linear/linear_model/mouth17x/weightsB$linear/linear_model/mouth17y/weightsB$linear/linear_model/mouth18x/weightsB$linear/linear_model/mouth18y/weightsB$linear/linear_model/mouth19x/weightsB$linear/linear_model/mouth19y/weightsB#linear/linear_model/mouth1x/weightsB#linear/linear_model/mouth1y/weightsB#linear/linear_model/mouth2x/weightsB#linear/linear_model/mouth2y/weightsB#linear/linear_model/mouth3x/weightsB#linear/linear_model/mouth3y/weightsB#linear/linear_model/mouth4x/weightsB#linear/linear_model/mouth4y/weightsB#linear/linear_model/mouth5x/weightsB#linear/linear_model/mouth5y/weightsB#linear/linear_model/mouth6x/weightsB#linear/linear_model/mouth6y/weightsB#linear/linear_model/mouth7x/weightsB#linear/linear_model/mouth7y/weightsB#linear/linear_model/mouth8x/weightsB#linear/linear_model/mouth8y/weightsB#linear/linear_model/mouth9x/weightsB#linear/linear_model/mouth9y/weights
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step/Read/ReadVariableOp4linear/linear_model/bias_weights/Read/ReadVariableOp7linear/linear_model/mouth0x/weights/Read/ReadVariableOp7linear/linear_model/mouth0y/weights/Read/ReadVariableOp8linear/linear_model/mouth10x/weights/Read/ReadVariableOp8linear/linear_model/mouth10y/weights/Read/ReadVariableOp8linear/linear_model/mouth11x/weights/Read/ReadVariableOp8linear/linear_model/mouth11y/weights/Read/ReadVariableOp8linear/linear_model/mouth12x/weights/Read/ReadVariableOp8linear/linear_model/mouth12y/weights/Read/ReadVariableOp8linear/linear_model/mouth13x/weights/Read/ReadVariableOp8linear/linear_model/mouth13y/weights/Read/ReadVariableOp8linear/linear_model/mouth14x/weights/Read/ReadVariableOp8linear/linear_model/mouth14y/weights/Read/ReadVariableOp8linear/linear_model/mouth15x/weights/Read/ReadVariableOp8linear/linear_model/mouth15y/weights/Read/ReadVariableOp8linear/linear_model/mouth16x/weights/Read/ReadVariableOp8linear/linear_model/mouth16y/weights/Read/ReadVariableOp8linear/linear_model/mouth17x/weights/Read/ReadVariableOp8linear/linear_model/mouth17y/weights/Read/ReadVariableOp8linear/linear_model/mouth18x/weights/Read/ReadVariableOp8linear/linear_model/mouth18y/weights/Read/ReadVariableOp8linear/linear_model/mouth19x/weights/Read/ReadVariableOp8linear/linear_model/mouth19y/weights/Read/ReadVariableOp7linear/linear_model/mouth1x/weights/Read/ReadVariableOp7linear/linear_model/mouth1y/weights/Read/ReadVariableOp7linear/linear_model/mouth2x/weights/Read/ReadVariableOp7linear/linear_model/mouth2y/weights/Read/ReadVariableOp7linear/linear_model/mouth3x/weights/Read/ReadVariableOp7linear/linear_model/mouth3y/weights/Read/ReadVariableOp7linear/linear_model/mouth4x/weights/Read/ReadVariableOp7linear/linear_model/mouth4y/weights/Read/ReadVariableOp7linear/linear_model/mouth5x/weights/Read/ReadVariableOp7linear/linear_model/mouth5y/weights/Read/ReadVariableOp7linear/linear_model/mouth6x/weights/Read/ReadVariableOp7linear/linear_model/mouth6y/weights/Read/ReadVariableOp7linear/linear_model/mouth7x/weights/Read/ReadVariableOp7linear/linear_model/mouth7y/weights/Read/ReadVariableOp7linear/linear_model/mouth8x/weights/Read/ReadVariableOp7linear/linear_model/mouth8y/weights/Read/ReadVariableOp7linear/linear_model/mouth9x/weights/Read/ReadVariableOp7linear/linear_model/mouth9y/weights/Read/ReadVariableOp"/device:CPU:0*8
dtypes.
,2*	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*Bglobal_stepB linear/linear_model/bias_weightsB#linear/linear_model/mouth0x/weightsB#linear/linear_model/mouth0y/weightsB$linear/linear_model/mouth10x/weightsB$linear/linear_model/mouth10y/weightsB$linear/linear_model/mouth11x/weightsB$linear/linear_model/mouth11y/weightsB$linear/linear_model/mouth12x/weightsB$linear/linear_model/mouth12y/weightsB$linear/linear_model/mouth13x/weightsB$linear/linear_model/mouth13y/weightsB$linear/linear_model/mouth14x/weightsB$linear/linear_model/mouth14y/weightsB$linear/linear_model/mouth15x/weightsB$linear/linear_model/mouth15y/weightsB$linear/linear_model/mouth16x/weightsB$linear/linear_model/mouth16y/weightsB$linear/linear_model/mouth17x/weightsB$linear/linear_model/mouth17y/weightsB$linear/linear_model/mouth18x/weightsB$linear/linear_model/mouth18y/weightsB$linear/linear_model/mouth19x/weightsB$linear/linear_model/mouth19y/weightsB#linear/linear_model/mouth1x/weightsB#linear/linear_model/mouth1y/weightsB#linear/linear_model/mouth2x/weightsB#linear/linear_model/mouth2y/weightsB#linear/linear_model/mouth3x/weightsB#linear/linear_model/mouth3y/weightsB#linear/linear_model/mouth4x/weightsB#linear/linear_model/mouth4y/weightsB#linear/linear_model/mouth5x/weightsB#linear/linear_model/mouth5y/weightsB#linear/linear_model/mouth6x/weightsB#linear/linear_model/mouth6y/weightsB#linear/linear_model/mouth7x/weightsB#linear/linear_model/mouth7y/weightsB#linear/linear_model/mouth8x/weightsB#linear/linear_model/mouth8y/weightsB#linear/linear_model/mouth9x/weightsB#linear/linear_model/mouth9y/weights
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	
N
save/Identity_1Identitysave/RestoreV2*
T0	*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpglobal_stepsave/Identity_1*
dtype0	
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
k
save/AssignVariableOp_1AssignVariableOp linear/linear_model/bias_weightssave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
n
save/AssignVariableOp_2AssignVariableOp#linear/linear_model/mouth0x/weightssave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
n
save/AssignVariableOp_3AssignVariableOp#linear/linear_model/mouth0y/weightssave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
o
save/AssignVariableOp_4AssignVariableOp$linear/linear_model/mouth10x/weightssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
o
save/AssignVariableOp_5AssignVariableOp$linear/linear_model/mouth10y/weightssave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
o
save/AssignVariableOp_6AssignVariableOp$linear/linear_model/mouth11x/weightssave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
o
save/AssignVariableOp_7AssignVariableOp$linear/linear_model/mouth11y/weightssave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
o
save/AssignVariableOp_8AssignVariableOp$linear/linear_model/mouth12x/weightssave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
p
save/AssignVariableOp_9AssignVariableOp$linear/linear_model/mouth12y/weightssave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
q
save/AssignVariableOp_10AssignVariableOp$linear/linear_model/mouth13x/weightssave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
q
save/AssignVariableOp_11AssignVariableOp$linear/linear_model/mouth13y/weightssave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
q
save/AssignVariableOp_12AssignVariableOp$linear/linear_model/mouth14x/weightssave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
q
save/AssignVariableOp_13AssignVariableOp$linear/linear_model/mouth14y/weightssave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
q
save/AssignVariableOp_14AssignVariableOp$linear/linear_model/mouth15x/weightssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
q
save/AssignVariableOp_15AssignVariableOp$linear/linear_model/mouth15y/weightssave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
q
save/AssignVariableOp_16AssignVariableOp$linear/linear_model/mouth16x/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
q
save/AssignVariableOp_17AssignVariableOp$linear/linear_model/mouth16y/weightssave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
q
save/AssignVariableOp_18AssignVariableOp$linear/linear_model/mouth17x/weightssave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
q
save/AssignVariableOp_19AssignVariableOp$linear/linear_model/mouth17y/weightssave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
q
save/AssignVariableOp_20AssignVariableOp$linear/linear_model/mouth18x/weightssave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
q
save/AssignVariableOp_21AssignVariableOp$linear/linear_model/mouth18y/weightssave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
q
save/AssignVariableOp_22AssignVariableOp$linear/linear_model/mouth19x/weightssave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
q
save/AssignVariableOp_23AssignVariableOp$linear/linear_model/mouth19y/weightssave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
p
save/AssignVariableOp_24AssignVariableOp#linear/linear_model/mouth1x/weightssave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
p
save/AssignVariableOp_25AssignVariableOp#linear/linear_model/mouth1y/weightssave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
p
save/AssignVariableOp_26AssignVariableOp#linear/linear_model/mouth2x/weightssave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
p
save/AssignVariableOp_27AssignVariableOp#linear/linear_model/mouth2y/weightssave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
p
save/AssignVariableOp_28AssignVariableOp#linear/linear_model/mouth3x/weightssave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
p
save/AssignVariableOp_29AssignVariableOp#linear/linear_model/mouth3y/weightssave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
p
save/AssignVariableOp_30AssignVariableOp#linear/linear_model/mouth4x/weightssave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
p
save/AssignVariableOp_31AssignVariableOp#linear/linear_model/mouth4y/weightssave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
p
save/AssignVariableOp_32AssignVariableOp#linear/linear_model/mouth5x/weightssave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
p
save/AssignVariableOp_33AssignVariableOp#linear/linear_model/mouth5y/weightssave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
p
save/AssignVariableOp_34AssignVariableOp#linear/linear_model/mouth6x/weightssave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
p
save/AssignVariableOp_35AssignVariableOp#linear/linear_model/mouth6y/weightssave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
p
save/AssignVariableOp_36AssignVariableOp#linear/linear_model/mouth7x/weightssave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
p
save/AssignVariableOp_37AssignVariableOp#linear/linear_model/mouth7y/weightssave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
p
save/AssignVariableOp_38AssignVariableOp#linear/linear_model/mouth8x/weightssave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
p
save/AssignVariableOp_39AssignVariableOp#linear/linear_model/mouth8y/weightssave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
p
save/AssignVariableOp_40AssignVariableOp#linear/linear_model/mouth9x/weightssave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
p
save/AssignVariableOp_41AssignVariableOp#linear/linear_model/mouth9y/weightssave/Identity_42*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard??	
?
b
1zero_fraction_total_zero_zero_count_17_true_90323
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_904637
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_16_true_90280
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_32_false_90969R
@zero_fraction_readvariableop_linear_linear_model_mouth6x_weights:)
%cast_zero_fraction_total_size_size_32	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth6x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90979*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90978e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_32*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_900327
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_2_true_89678
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_11_false_90066S
Azero_fraction_readvariableop_linear_linear_model_mouth14y_weights:)
%cast_zero_fraction_total_size_size_11	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth14y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90076*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90075e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_11*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_904207
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_24_false_90625R
@zero_fraction_readvariableop_linear_linear_model_mouth2x_weights:)
%cast_zero_fraction_total_size_size_24	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth2x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90635*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90634e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_24*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_25_false_90668R
@zero_fraction_readvariableop_linear_linear_model_mouth2y_weights:)
%cast_zero_fraction_total_size_size_25	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth2y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90678*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90677e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_25*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_900757
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_28_true_90796
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_22_false_90539R
@zero_fraction_readvariableop_linear_linear_model_mouth1x_weights:)
%cast_zero_fraction_total_size_size_22	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth1x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90549*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90548e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_22*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_24_true_90624
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_14_false_90195S
Azero_fraction_readvariableop_linear_linear_model_mouth16x_weights:)
%cast_zero_fraction_total_size_size_14	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth16x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90205*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90204e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_14*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_37_true_91183
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_907647
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_39_true_91269
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_38_true_91226
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_896897
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_9_true_89979
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_29_false_90840R
@zero_fraction_readvariableop_linear_linear_model_mouth4y_weights:)
%cast_zero_fraction_total_size_size_29	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth4y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90850*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90849e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_29*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_903777
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_902907
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_911077
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_902047
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_902057
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
_
.zero_fraction_total_zero_zero_count_true_89592
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_21_true_90495
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_5_true_89807
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_901627
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_908067
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_33_false_91012R
@zero_fraction_readvariableop_linear_linear_model_mouth6y_weights:)
%cast_zero_fraction_total_size_size_33	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth6y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_91022*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_91021e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_33*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_21_false_90496S
Azero_fraction_readvariableop_linear_linear_model_mouth19y_weights:)
%cast_zero_fraction_total_size_size_21	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth19y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90506*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90505e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_21*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_33_true_91011
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_19_false_90410S
Azero_fraction_readvariableop_linear_linear_model_mouth18y_weights:)
%cast_zero_fraction_total_size_size_19	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth18y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90420*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90419e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_19*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_912367
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_908077
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_19_true_90409
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_26_false_90711R
@zero_fraction_readvariableop_linear_linear_model_mouth3x_weights:)
%cast_zero_fraction_total_size_size_26	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth3x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90721*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90720e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_26*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_905057
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_905927
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_908507
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_902487
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_908937
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_38_false_91227R
@zero_fraction_readvariableop_linear_linear_model_mouth9x_weights:)
%cast_zero_fraction_total_size_size_38	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth9x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_91237*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_91236e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_38*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_896467
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_4_false_89765S
Azero_fraction_readvariableop_linear_linear_model_mouth11x_weights:(
$cast_zero_fraction_total_size_size_4	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth11x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89775*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89774e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_4*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_910217
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_16_false_90281S
Azero_fraction_readvariableop_linear_linear_model_mouth17x_weights:)
%cast_zero_fraction_total_size_size_16	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth17x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90291*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90290e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_16*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_25_true_90667
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_906357
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_12_true_90108
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_29_true_90839
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_30_false_90883R
@zero_fraction_readvariableop_linear_linear_model_mouth5x_weights:)
%cast_zero_fraction_total_size_size_30	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth5x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90893*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90892e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_30*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_13_true_90151
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_898187
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_910657
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_897327
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_908927
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_37_false_91184R
@zero_fraction_readvariableop_linear_linear_model_mouth8y_weights:)
%cast_zero_fraction_total_size_size_37	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth8y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_91194*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_91193e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_37*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_896887
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_912377
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_909357
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_896457
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_899477
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_899047
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_12_false_90109S
Azero_fraction_readvariableop_linear_linear_model_mouth15x_weights:)
%cast_zero_fraction_total_size_size_12	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth15x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90119*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90118e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_12*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_906787
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_35_false_91098R
@zero_fraction_readvariableop_linear_linear_model_mouth7y_weights:)
%cast_zero_fraction_total_size_size_35	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth7y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_91108*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_91107e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_35*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_31_false_90926R
@zero_fraction_readvariableop_linear_linear_model_mouth5y_weights:)
%cast_zero_fraction_total_size_size_31	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth5y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90936*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90935e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_31*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_1_false_89636R
@zero_fraction_readvariableop_linear_linear_model_mouth0y_weights:(
$cast_zero_fraction_total_size_size_1	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth0y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89646*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89645e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_1*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_905067
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_911087
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_7_true_89893
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_904627
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_899897
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_906777
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_904197
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_912807
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_902477
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_900767
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_901187
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_905497
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_907637
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_898617
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_17_false_90324S
Azero_fraction_readvariableop_linear_linear_model_mouth17y_weights:)
%cast_zero_fraction_total_size_size_17	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth17y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90334*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90333e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_17*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_32_true_90968
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_18_false_90367S
Azero_fraction_readvariableop_linear_linear_model_mouth18x_weights:)
%cast_zero_fraction_total_size_size_18	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth18x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90377*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90376e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_18*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_903337
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_911937
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_896037
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_905487
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_897747
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_15_true_90237
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_18_true_90366
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_20_false_90453S
Azero_fraction_readvariableop_linear_linear_model_mouth19x_weights:)
%cast_zero_fraction_total_size_size_20	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth19x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90463*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90462e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_20*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_911947
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_35_true_91097
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_912797
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_34_false_91055R
@zero_fraction_readvariableop_linear_linear_model_mouth7x_weights:)
%cast_zero_fraction_total_size_size_34	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth7x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_91065*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_91064e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_34*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_9_false_89980S
Azero_fraction_readvariableop_linear_linear_model_mouth13y_weights:(
$cast_zero_fraction_total_size_size_9	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth13y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89990*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89989e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_9*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_2_false_89679S
Azero_fraction_readvariableop_linear_linear_model_mouth10x_weights:(
$cast_zero_fraction_total_size_size_2	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth10x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89689*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89688e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_2*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_903347
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_906347
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_11_true_90065
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
/zero_fraction_total_zero_zero_count_false_89593R
@zero_fraction_readvariableop_linear_linear_model_mouth0x_weights:&
"cast_zero_fraction_total_size_size	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth0x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89603*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89602e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: `
CastCast"cast_zero_fraction_total_size_size*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_896027
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_14_true_90194
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_902917
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_27_true_90753
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_898177
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_10_false_90023S
Azero_fraction_readvariableop_linear_linear_model_mouth14x_weights:)
%cast_zero_fraction_total_size_size_10	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth14x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90033*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90032e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_10*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_8_true_89936
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_3_true_89721
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_899037
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_899467
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_4_true_89764
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_27_false_90754R
@zero_fraction_readvariableop_linear_linear_model_mouth3y_weights:)
%cast_zero_fraction_total_size_size_27	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth3y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90764*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90763e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_27*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_28_false_90797R
@zero_fraction_readvariableop_linear_linear_model_mouth4x_weights:)
%cast_zero_fraction_total_size_size_28	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth4x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90807*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90806e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_28*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_39_false_91270R
@zero_fraction_readvariableop_linear_linear_model_mouth9y_weights:)
%cast_zero_fraction_total_size_size_39	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth9y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_91280*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_91279e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_39*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_898607
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_901197
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_8_false_89937S
Azero_fraction_readvariableop_linear_linear_model_mouth13x_weights:(
$cast_zero_fraction_total_size_size_8	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth13x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89947*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89946e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_8*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_23_false_90582R
@zero_fraction_readvariableop_linear_linear_model_mouth1y_weights:)
%cast_zero_fraction_total_size_size_23	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth1y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90592*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90591e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_23*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_903767
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_897317
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_909797
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_905917
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
2zero_fraction_total_zero_zero_count_13_false_90152S
Azero_fraction_readvariableop_linear_linear_model_mouth15y_weights:)
%cast_zero_fraction_total_size_size_13	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth15y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90162*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90161e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_13*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_3_false_89722S
Azero_fraction_readvariableop_linear_linear_model_mouth10y_weights:(
$cast_zero_fraction_total_size_size_3	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth10y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89732*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89731e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_3*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_5_false_89808S
Azero_fraction_readvariableop_linear_linear_model_mouth11y_weights:(
$cast_zero_fraction_total_size_size_5	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth11y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89818*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89817e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_5*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_36_true_91140
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_907217
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_26_true_90710
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_908497
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_7_false_89894S
Azero_fraction_readvariableop_linear_linear_model_mouth12y_weights:(
$cast_zero_fraction_total_size_size_7	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth12y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89904*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89903e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_7*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_20_true_90452
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_34_true_91054
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_15_false_90238S
Azero_fraction_readvariableop_linear_linear_model_mouth16y_weights:)
%cast_zero_fraction_total_size_size_15	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth16y_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_90248*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_90247e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_15*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_22_true_90538
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_6_false_89851S
Azero_fraction_readvariableop_linear_linear_model_mouth12x_weights:(
$cast_zero_fraction_total_size_size_6	
mul??
zero_fraction/ReadVariableOpReadVariableOpAzero_fraction_readvariableop_linear_linear_model_mouth12x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_89861*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_89860e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: b
CastCast$cast_zero_fraction_total_size_size_6*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_901617
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_6_true_89850
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_909787
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_911517
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_897757
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_900337
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_1_true_89635
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_899907
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_907207
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_909367
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_911507
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_31_true_90925
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_10_true_90022
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_910227
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_910647
3count_nonzero_notequal_zero_fraction_readvariableop
cast	X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:n
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: "
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
1zero_fraction_total_zero_zero_count_23_true_90581
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
2zero_fraction_total_zero_zero_count_36_false_91141R
@zero_fraction_readvariableop_linear_linear_model_mouth8x_weights:)
%cast_zero_fraction_total_size_size_36	
mul??
zero_fraction/ReadVariableOpReadVariableOp@zero_fraction_readvariableop_linear_linear_model_mouth8x_weights*
_output_shapes

:*
dtype0T
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R_
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R?????
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: ?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_91151*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_91150e
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: ?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: ?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: |
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: q
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: c
CastCast%cast_zero_fraction_total_size_size_36*

DstT0*

SrcT0	*
_output_shapes
: @
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T0"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
1zero_fraction_total_zero_zero_count_30_true_90882
placeholder
placeholder_1		
constJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    "
constConst:output:0*
_input_shapes
: : :

_output_shapes
: "?<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"3
	summaries&
$
bias:0
fraction_of_zero_weights:0"?B
trainable_variables?B?B
?
%linear/linear_model/mouth0x/weights:0*linear/linear_model/mouth0x/weights/Assign9linear/linear_model/mouth0x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth0x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth0y/weights:0*linear/linear_model/mouth0y/weights/Assign9linear/linear_model/mouth0y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth0y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth10x/weights:0+linear/linear_model/mouth10x/weights/Assign:linear/linear_model/mouth10x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth10x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth10y/weights:0+linear/linear_model/mouth10y/weights/Assign:linear/linear_model/mouth10y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth10y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth11x/weights:0+linear/linear_model/mouth11x/weights/Assign:linear/linear_model/mouth11x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth11x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth11y/weights:0+linear/linear_model/mouth11y/weights/Assign:linear/linear_model/mouth11y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth11y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth12x/weights:0+linear/linear_model/mouth12x/weights/Assign:linear/linear_model/mouth12x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth12x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth12y/weights:0+linear/linear_model/mouth12y/weights/Assign:linear/linear_model/mouth12y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth12y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth13x/weights:0+linear/linear_model/mouth13x/weights/Assign:linear/linear_model/mouth13x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth13x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth13y/weights:0+linear/linear_model/mouth13y/weights/Assign:linear/linear_model/mouth13y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth13y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth14x/weights:0+linear/linear_model/mouth14x/weights/Assign:linear/linear_model/mouth14x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth14x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth14y/weights:0+linear/linear_model/mouth14y/weights/Assign:linear/linear_model/mouth14y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth14y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth15x/weights:0+linear/linear_model/mouth15x/weights/Assign:linear/linear_model/mouth15x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth15x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth15y/weights:0+linear/linear_model/mouth15y/weights/Assign:linear/linear_model/mouth15y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth15y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth16x/weights:0+linear/linear_model/mouth16x/weights/Assign:linear/linear_model/mouth16x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth16x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth16y/weights:0+linear/linear_model/mouth16y/weights/Assign:linear/linear_model/mouth16y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth16y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth17x/weights:0+linear/linear_model/mouth17x/weights/Assign:linear/linear_model/mouth17x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth17x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth17y/weights:0+linear/linear_model/mouth17y/weights/Assign:linear/linear_model/mouth17y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth17y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth18x/weights:0+linear/linear_model/mouth18x/weights/Assign:linear/linear_model/mouth18x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth18x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth18y/weights:0+linear/linear_model/mouth18y/weights/Assign:linear/linear_model/mouth18y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth18y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth19x/weights:0+linear/linear_model/mouth19x/weights/Assign:linear/linear_model/mouth19x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth19x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth19y/weights:0+linear/linear_model/mouth19y/weights/Assign:linear/linear_model/mouth19y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth19y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth1x/weights:0*linear/linear_model/mouth1x/weights/Assign9linear/linear_model/mouth1x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth1x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth1y/weights:0*linear/linear_model/mouth1y/weights/Assign9linear/linear_model/mouth1y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth1y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth2x/weights:0*linear/linear_model/mouth2x/weights/Assign9linear/linear_model/mouth2x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth2x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth2y/weights:0*linear/linear_model/mouth2y/weights/Assign9linear/linear_model/mouth2y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth2y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth3x/weights:0*linear/linear_model/mouth3x/weights/Assign9linear/linear_model/mouth3x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth3x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth3y/weights:0*linear/linear_model/mouth3y/weights/Assign9linear/linear_model/mouth3y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth3y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth4x/weights:0*linear/linear_model/mouth4x/weights/Assign9linear/linear_model/mouth4x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth4x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth4y/weights:0*linear/linear_model/mouth4y/weights/Assign9linear/linear_model/mouth4y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth4y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth5x/weights:0*linear/linear_model/mouth5x/weights/Assign9linear/linear_model/mouth5x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth5x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth5y/weights:0*linear/linear_model/mouth5y/weights/Assign9linear/linear_model/mouth5y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth5y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth6x/weights:0*linear/linear_model/mouth6x/weights/Assign9linear/linear_model/mouth6x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth6x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth6y/weights:0*linear/linear_model/mouth6y/weights/Assign9linear/linear_model/mouth6y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth6y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth7x/weights:0*linear/linear_model/mouth7x/weights/Assign9linear/linear_model/mouth7x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth7x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth7y/weights:0*linear/linear_model/mouth7y/weights/Assign9linear/linear_model/mouth7y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth7y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth8x/weights:0*linear/linear_model/mouth8x/weights/Assign9linear/linear_model/mouth8x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth8x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth8y/weights:0*linear/linear_model/mouth8y/weights/Assign9linear/linear_model/mouth8y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth8y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth9x/weights:0*linear/linear_model/mouth9x/weights/Assign9linear/linear_model/mouth9x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth9x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth9y/weights:0*linear/linear_model/mouth9y/weights/Assign9linear/linear_model/mouth9y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth9y/weights/Initializer/zeros:08
?
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08"?C
	variables?C?C
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
?
%linear/linear_model/mouth0x/weights:0*linear/linear_model/mouth0x/weights/Assign9linear/linear_model/mouth0x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth0x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth0y/weights:0*linear/linear_model/mouth0y/weights/Assign9linear/linear_model/mouth0y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth0y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth10x/weights:0+linear/linear_model/mouth10x/weights/Assign:linear/linear_model/mouth10x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth10x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth10y/weights:0+linear/linear_model/mouth10y/weights/Assign:linear/linear_model/mouth10y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth10y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth11x/weights:0+linear/linear_model/mouth11x/weights/Assign:linear/linear_model/mouth11x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth11x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth11y/weights:0+linear/linear_model/mouth11y/weights/Assign:linear/linear_model/mouth11y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth11y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth12x/weights:0+linear/linear_model/mouth12x/weights/Assign:linear/linear_model/mouth12x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth12x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth12y/weights:0+linear/linear_model/mouth12y/weights/Assign:linear/linear_model/mouth12y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth12y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth13x/weights:0+linear/linear_model/mouth13x/weights/Assign:linear/linear_model/mouth13x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth13x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth13y/weights:0+linear/linear_model/mouth13y/weights/Assign:linear/linear_model/mouth13y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth13y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth14x/weights:0+linear/linear_model/mouth14x/weights/Assign:linear/linear_model/mouth14x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth14x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth14y/weights:0+linear/linear_model/mouth14y/weights/Assign:linear/linear_model/mouth14y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth14y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth15x/weights:0+linear/linear_model/mouth15x/weights/Assign:linear/linear_model/mouth15x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth15x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth15y/weights:0+linear/linear_model/mouth15y/weights/Assign:linear/linear_model/mouth15y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth15y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth16x/weights:0+linear/linear_model/mouth16x/weights/Assign:linear/linear_model/mouth16x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth16x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth16y/weights:0+linear/linear_model/mouth16y/weights/Assign:linear/linear_model/mouth16y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth16y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth17x/weights:0+linear/linear_model/mouth17x/weights/Assign:linear/linear_model/mouth17x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth17x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth17y/weights:0+linear/linear_model/mouth17y/weights/Assign:linear/linear_model/mouth17y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth17y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth18x/weights:0+linear/linear_model/mouth18x/weights/Assign:linear/linear_model/mouth18x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth18x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth18y/weights:0+linear/linear_model/mouth18y/weights/Assign:linear/linear_model/mouth18y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth18y/weights/Initializer/zeros:08
?
&linear/linear_model/mouth19x/weights:0+linear/linear_model/mouth19x/weights/Assign:linear/linear_model/mouth19x/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth19x/weights/Initializer/zeros:08
?
&linear/linear_model/mouth19y/weights:0+linear/linear_model/mouth19y/weights/Assign:linear/linear_model/mouth19y/weights/Read/ReadVariableOp:0(28linear/linear_model/mouth19y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth1x/weights:0*linear/linear_model/mouth1x/weights/Assign9linear/linear_model/mouth1x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth1x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth1y/weights:0*linear/linear_model/mouth1y/weights/Assign9linear/linear_model/mouth1y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth1y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth2x/weights:0*linear/linear_model/mouth2x/weights/Assign9linear/linear_model/mouth2x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth2x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth2y/weights:0*linear/linear_model/mouth2y/weights/Assign9linear/linear_model/mouth2y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth2y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth3x/weights:0*linear/linear_model/mouth3x/weights/Assign9linear/linear_model/mouth3x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth3x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth3y/weights:0*linear/linear_model/mouth3y/weights/Assign9linear/linear_model/mouth3y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth3y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth4x/weights:0*linear/linear_model/mouth4x/weights/Assign9linear/linear_model/mouth4x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth4x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth4y/weights:0*linear/linear_model/mouth4y/weights/Assign9linear/linear_model/mouth4y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth4y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth5x/weights:0*linear/linear_model/mouth5x/weights/Assign9linear/linear_model/mouth5x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth5x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth5y/weights:0*linear/linear_model/mouth5y/weights/Assign9linear/linear_model/mouth5y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth5y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth6x/weights:0*linear/linear_model/mouth6x/weights/Assign9linear/linear_model/mouth6x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth6x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth6y/weights:0*linear/linear_model/mouth6y/weights/Assign9linear/linear_model/mouth6y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth6y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth7x/weights:0*linear/linear_model/mouth7x/weights/Assign9linear/linear_model/mouth7x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth7x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth7y/weights:0*linear/linear_model/mouth7y/weights/Assign9linear/linear_model/mouth7y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth7y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth8x/weights:0*linear/linear_model/mouth8x/weights/Assign9linear/linear_model/mouth8x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth8x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth8y/weights:0*linear/linear_model/mouth8y/weights/Assign9linear/linear_model/mouth8y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth8y/weights/Initializer/zeros:08
?
%linear/linear_model/mouth9x/weights:0*linear/linear_model/mouth9x/weights/Assign9linear/linear_model/mouth9x/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth9x/weights/Initializer/zeros:08
?
%linear/linear_model/mouth9y/weights:0*linear/linear_model/mouth9y/weights/Assign9linear/linear_model/mouth9y/weights/Read/ReadVariableOp:0(27linear/linear_model/mouth9y/weights/Initializer/zeros:08
?
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08*?
classification?
3
inputs)
input_example_tensor:0?????????-
classes"
head/Tile:0?????????A
scores7
 head/predictions/probabilities:0?????????tensorflow/serving/classify*?
predict?
5
examples)
input_example_tensor:0??????????
all_class_ids.
head/predictions/Tile:0??????????
all_classes0
head/predictions/Tile_1:0?????????A
	class_ids4
head/predictions/ExpandDims:0	?????????@
classes5
head/predictions/str_classes:0?????????>
logistic2
head/predictions/logistic:0?????????k
logitsa
Jlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum:0?????????H
probabilities7
 head/predictions/probabilities:0?????????tensorflow/serving/predict*?

regression?
3
inputs)
input_example_tensor:0?????????=
outputs2
head/predictions/logistic:0?????????tensorflow/serving/regress*?
serving_default?
3
inputs)
input_example_tensor:0?????????-
classes"
head/Tile:0?????????A
scores7
 head/predictions/probabilities:0?????????tensorflow/serving/classify