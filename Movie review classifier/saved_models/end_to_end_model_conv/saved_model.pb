??'
?'?'
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
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
?
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
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ??
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
Ttype"
Indextype:
2	"

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
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18??%
?
Adam/predictions/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/v

+Adam/predictions/bias/v/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/v*
_output_shapes
:*
dtype0
?
Adam/predictions/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_nameAdam/predictions/kernel/v
?
-Adam/predictions/kernel/v/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/v*
_output_shapes
:	?*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_1/bias/v
z
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_1/kernel/v
?
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*$
_output_shapes
:??*
dtype0
}
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv1d/bias/v
v
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv1d/kernel/v
?
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*$
_output_shapes
:??*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*!
_output_shapes
:???*
dtype0
?
Adam/predictions/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/m

+Adam/predictions/bias/m/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/m*
_output_shapes
:*
dtype0
?
Adam/predictions/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_nameAdam/predictions/kernel/m
?
-Adam/predictions/kernel/m/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/m*
_output_shapes
:	?*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_1/bias/m
z
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_1/kernel/m
?
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*$
_output_shapes
:??*
dtype0
}
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv1d/bias/m
v
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv1d/kernel/m
?
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*$
_output_shapes
:??*
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*!
_output_shapes
:???*
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

MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_3048*
value_dtype0	
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name4393*
value_dtype0	
x
predictions/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namepredictions/bias
q
$predictions/bias/Read/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
dtype0
?
predictions/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*#
shared_namepredictions/kernel
z
&predictions/kernel/Read/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes
:	?*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
s
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d_1/bias
l
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:?*
dtype0
?
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv1d_1/kernel
y
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*$
_output_shapes
:??*
dtype0
o
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d/bias
h
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:?*
dtype0
|
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_nameconv1d/kernel
u
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*$
_output_shapes
:??*
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*%
shared_nameembedding/embeddings
?
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*!
_output_shapes
:???*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes

:??*
dtype0*Հ
valueʀBƀ??BiBtheBmovieBfilmBoneBlikeBthisBgoodBitBevenBwouldBtimeBreallyBstoryBseeBmuchBwellBgetBpeopleBbadBgreatBalsoBfirstBmadeBmakeBwayBcouldBmoviesBbutBthinkBandB
charactersBwatchBmanyBfilmsBtwoBlittleBactingBplotBaBloveBinBshowBneverBknowBbestBlifeB	characterBbetterBendBstillBifBseenBsceneBmanBeverBscenesBthereBsayBgoB	somethingBbackBheBwatchingBthoughBthingBrealByearsBactorsBmakesBactuallyBnothingBanotherBnewBfindBlookBfunnyBoldBworkBeveryBlotBusBpartBdirectorBcastBwantBgoingBthingsBquiteBseemsBaroundByoungBfactBhoweverBworldBprettyBmayBasBtakeBenoughBthoughtBoriginalBgotBseriesBwithoutBhorrorBlongBtimesBgiveBbigBgetsBrightBsawBcomeBpointBwhatBmustBroleBleastBactionBinterestingBwholeBbitBcomedyBalwaysBtheyByouBalmostBfamilyBminutesBanythingBmightBdoneBsinceBscriptBguyBmusicBfeelBfarBlastBprobablyBawayBsoByetBkindBworstBratherBmakingBnotBfunBwomanBtvBanyoneBgirlBperformanceBfoundBbelieveBcomesBalthoughBplayedBcourseBwhenBtryingB
especiallyBlooksBdayBsheBgoesBplaceBputBscreenB	differentBshowsBmaybeBsenseBmoneyBbookB
everythingBallBjobBendingBsomeoneBsetBreasonBhardBlookingBdvdBmainBmyBworthBtrueBplaysB2BtakesBtogetherBactorBinsteadBthreeBsaidBseemB10BforBlaterB	beautifulBwatchedBaudienceBeveryoneBplayBeffectsBjohnBnightBversionBthatBamericanBseeingB	excellentBleftBshotBspecialBideaBhouseBniceBhighBblackBsureBelseBsimplyBwarBhelpByearBpoorBusedBlessBweB
completelyBtryBreadBkidsBsecondBfanBstarBboringBeitherBnoBneedBshortBperformancesBgivenBalongBuseBmenBmindBhomeBofBenjoyBrestBlineB	hollywoodBclassicBwrongBwifeBfriendsBtoB
productionBhalfBtrulyBstupidBtellBatBwomenBrememberBcameBcoupleBdeadBawfulBdeathBstartBmeanBtopBfatherBmomentsBstarsBnextBepisodeBperhapsBcameraBfullB	recommendBsexB
understandBsmallBgettingBletBgivesBafterBothersB	wonderfulBvideoBterribleBplayingBoftenBlinesBkeepBfeltBschoolBpieceBbecomeBhumanByesBpersonBdialogueBlikedB
definitelyBlostBwrittenBcaseBperfectBfinallyBbudgetBnameBliveB
absolutelyBwentBearlyBbecomesBproblemBentireBworseBhisBohBoverallBseveralBwhileBpictureBtitleBstyleBcalledBsupposedBlovedBhopeBentertainingBfansBboyBsortBevilB	certainlyBseemedBcinemaBthenBmrBwhiteBfaceB3BexampleB	beginningB
throughoutBcareBbasedBheadBdarkBwasteBunfortunatelyBdespiteBalreadyBwantedBkillerBwhyBlaughBturnBguessBlivesBdramaBchildrenBsomeB1BguysBwantsBleadBtotallyBfriendBtriesBfineBhumorBfinalBsoundBenjoyedB	directionBqualityBlowBhowBdaysBactBwritingBturnsBnowBstartsBgameBgaveBmotherBmichaelBworksBableBhistoryBgirlsBamazingBwithBbehindB	sometimesBtownBhorribleBflickBkillBpastBfavoriteBsideBgenreBsoonBpartsBstoriesBviewerBjustBcarBiseenBstuffBrunBactressBartBchildBdirectedBexpectBcloseBheartBdecentBeyesBthinkingBhighlyBfightBrolesB	obviouslyBetcBlateBkilledBtookBsonBcityBonBkidBexceptB	brilliantBbloodBmatterBcannotBanywayBfeelingBmomentBsaysBhappenedBpoliceBleaveBhourBchanceB	extremelyBisBstrongBparticularlyBhandBhappensB
experienceBinvolvedBviolenceBaloneBlivingBobviousBjamesBgroupBcomingBattemptBtypeBwonderBtoldBagoBgodBsaveBpleaseBnumberBnoneBhappenB	includingBinterestBlackBageBokBexactlyBcompleteBmurderBpossibleBcrapBhellBseriousBheardBgoreBcinematographyBwhoseBscoreBhoursBdavidBsomewhatB
ridiculousBlookedBslowBsimpleBshownBannoyingBreleasedBsongBrunningBhitBrealityBtodayB	seriouslyBopeningBenglishBstartedBscaryBknownBstopBusuallyBtakenBonesBjokesBshotsBmusicalBpowerBtakingBfemaleBendsBvoiceBacrossBopinionBdaughterB4BwishBcoolBchangeBsadBorderB	hilariousBmajorBrobertBusualBrelationshipBproblemsB
apparentlyBbrotherBcutBstrangeBepisodesBlevelBfindsB5B
supportingBturnedBdueB	importantBhugeBsequenceBmostlyBdocumentaryBcareerBtalentBknewBclearlyBknowsBearthBeventsBkingBheroBviewB
televisionBsayingBbodyBtellsBratingBdisappointedBbritishBroomBfromBfutureB	attentionBwordBsetsBsingleBnovelBlocalBeasilyBcountryBsongsBcallBhusbandBhappyBcheapB	basicallyBappearsBwordsBjackBfiveBbeyondBwhetherBfourBbringBsillyBmodernBfallsBlightBsimilarBentertainmentBneedsBrichardBreviewBuponBpaulBgeorgeBfeelsBwithinBtalkingBtalkB	enjoyableBromanticBpredictableBladyBmessageBcomicBbeginsBbunchBrockBaddBwaysBsequelB	animationBtheaterBmissBstayByorkBthrillerBnearlyBwriterB	storylineBlotsBmovingBcommentsBreleaseBpointsBmiddleBthemeBtenBnamedBmentionBteamBusingBdullBstraightBclassB	fantasticBherBleadsBelementsBhateBshowingBfilmedBavoidBanBeditingBclearBmysteryBfigureBformBeffortBworkingBmeansBweakBtriedBactualBviewersBitsBtypicalBnearBfeatureBmaterialBdialogBamongBgivingB
soundtrackBfrenchBfallBtaleBoscarBdoubtBpeterBtomB
eventuallyBcertainBsomehowBcheckBmoveBkeptBindeedBgeneralBwhateverBbuyBimagineBdealBbroughtBperiodBfastBaverageBreviewsBeyeBredBviewingB	realisticBmostBhearBpoorlyBforgetBfollowB
particularB	surprisedB	sequencesBleeBbyBfamousBeasyBparentsBgoneBseasonBstandBspaceB
believableBbecameBstageBnatureBpossiblyBlameBdieBthirdBjoeBcrimeBtheseBsuspenseBsubjectBpremiseBbeginBdeB
atmosphereBwaitBokayBisureBreadingBdecidedBwhoBleavesBsitBsurpriseBlearnBzombieBneededBveryBgreatestBrentBexpectedBwriteBstreetBsexualBjapaneseB	memorableBsuperbBnoteBtruthB	otherwiseBunlessBsisterBmeetsB	difficultBwritersBlaughsBforcedBdoBcreditsBorB
screenplayBminuteBdisneyBdanceBfeaturesBromanceBkeepsBamericaBsoundsBdrBtotalB
interestedBsocietyBfreeBfootageBsorryBkillingBappearB
incrediblyBbringsB
filmmakersBweirdB	situationBolderBfailsB	directorsBmeetB	emotionalBdogBaskBquestionB	potentialBimdbBdramaticB	directingBcreepyBcastingBtowardsBmessBcrazyBcommentBbBmarkBhotBearlierBworkedBcheesyBbadlyBoutsideBapartBreturnBrealizeBforwardB	christmasBquicklyBmatchBmaleBieverBdeepBdevelopmentBinsideBcreateBfairlyBsettingBbattleBplusBplentyB	perfectlyBbeautyBvariousBleadingBresultBopenBnudityBbabyBscifiBfireBbillBjokeBgayB	expectingBeffectBactedBbusinessBpowerfulB
backgroundBmeantBboysBfightingB	portrayedBhandsB20BpreviousBhardlyBuniqueBpresentBairBjaneBunlikeBtwistBlaBbreakBsadlyBmonsterBadmitBmanagesBideasBdumbBboxBpersonalBpayBhereBcopyBspoilersBrichBfantasyBdreamBreasonsBtalentedBsecretB	followingBpureBmissingBdeservesBattemptsBwilliamBrecentlyBfrontBflatBmembersBeraBagreeBtellingBcomparedBremakeB	politicalBmissedBwastedBmarriedBvillainBescapeBcuteBbenBsuccessBholdBendedBcopBdecidesBshameBoddBlargeBkillsBwesternBpublicBplainB
incredibleBcrewBtensionB	mentionedBcreatedBpartyBcaughtBconsideringBdoctorBsuddenlyBmasterpieceBbrothersB
ultimatelyBpaceBneitherBcoverBseesBonlyBmovesBintelligentBslightlyBcauseBpopularBentirelyBvisualBrateBsocialBlaughingBfearBwroteBrunsB7BwaterBusesBspeakBscottBamusingBwaitingB
convincingBvalueBtroubleBexcitingBproducedBdepthBclichBfollowsBfamiliarBcreditBcartoonBspentBcleverB
appreciateB12BlistBgunB	pointlessBbasicBanimatedB30B
successfulBshowedB
impressiveBconsiderBlanguageBconceptB	effectiveBboredByoungerBviolentBsolidBofficeB
girlfriendBdiedBzombiesBspendBchoiceBsweetBrevengeBlongerB
situationsBpositiveBfitBstarringBplanetBislandBfocusBdecideBwalkBtoneBamountB8BtonyBstateBspiritBfilledBbiggestBcenturyBmaryB
impossibleBgermanBcommonBsickBscienceB	producersBprisonBbizarreBadultB15BsurprisinglyBcontrolBitalianBasideBcompanyBrespectBstoreB
consideredBbandBcultureBcoldBdancingB	chemistryBbecauseBwinBprojectBwestB	involvingBstudioBrecentBbooksBbarelyBlikesB
conclusionB	audiencesBvanBmadBfailedBtrashB	literallyBformerBcollegeBchangedBimagesBfakeBcatB	adventureBsingingBleavingBforceBimmediatelyByeahBtripBtouchBshootingB	somewhereBrecommendedBharryBhairBgarbageBaspectButterlyBslasherB
disturbingBbatmanB	questionsBjimB	generallyBmagicBawesomeBremainsBsteveBchaseBwillBvaluesBthanksBnowhereBnormalBcharmingBaccentBghostBsouthB	portrayalBfrankBcatchBthinksBsmithBcomputerB
adaptationBthankBsoldiersBsamBaliveBpicturesBnaturalBhumourBhonestBexcuseBstickBgeniusBaddedBmistakeBhonestlyBfairBpatheticBsilentBmeaningBexplainBcultBarmyBweekBchrisBcharlieBboughtBlondonBcomplexBtouchingBtermsBjusticeBdisappointingBabilityBtoughBthusBlovelyBlikelyBcomediesB
personallyBcampBterrificBstandardBonceBvampireB	detectiveBdateBunbelievableBsubtleBroadBmannerBknowingBattackB
appearanceBsurelyBnobodyBmoodBtwistsBsittingB
impressionBpurposeB	presentedBpickBdetailsBchannelBbeautifullyBappealBratedBmilitaryBmanagedB
historicalBwildBwhereBnakedBinnocentBdisappointmentBcharlesBbesidesBfictionBbrainB100BrideBfinishBwalkingBsexyBparisBcontainsBcentralBanimalsBactsBwowBstunningBshootBselfBequallyBdreamsBthrownBtasteBpainfulBchristopherBthemesBheyB
mysteriousBfestivalBcriticsBotherBopportunityBheavyB
governmentB90BsentBtrackBspoilerBoutstandingB	narrativeBissuesBfullyBfilmingBphotographyB	laughableBaheadBmasterB	exceptionBdadBmakersBindianB
constantlyBchangesBslowlyBlawBsupposeBmarriageBchurchBstandsBrareBlovesBtrainBplacesBmainlyBedgeBtwiceBsceneryBfascinatingBcostumesBnumbersBloudBclubBpassBminorBforeverBelementBdriveB9BplanB	happeningBjourneyBbottomBemotionBsupportBnamesBimpactBgangBdoorBcharmBjonesBdrawnB	confusingBaspectsBwasBhopingBfeelingsBcolorBwoodsBvictimBthrowBmotionBcreativeB	cinematicBlikableBincludeBhotelB
compellingBbriefB	availableBstewartBpresenceBintendedB
differenceBclimaxBbothBawardBdeliversBmixBgreenBfollowedBemotionsBcryBpiecesBsmartBfreshBputsB	everybodyBgradeBbarBnoticeBdiesBbruceBtrailerBtooBtiredBprovidesBprovesBofferBmoralBexpectationsB6BzeroB	wonderingBsoulBjerryBserialBmediocreBlacksBgorgeousBfallingBeventBmillionBmerelyBbotherBappearedBalBadultsBrelationshipsBlightingBhenryBspeakingBgemBfolksBbedBsuggestB	developedBconfusedBblueBshockB
thoroughlyBpainBmartinBlaughedBdetailBalanBsystemBsecondsBhurtBarthurBabsoluteBspotBshareBapproachB
supposedlyBoffersBnegativeBextremeBbuildingBbrianBbossB
attractiveBkellyBflicksBfindingBdavisBsummerBstuckBremindedBhelpsB	filmmakerBbillyBadditionBputtingBpullBparkBgamesBfellowBareaBthatsBstudentsBloseBlatterBindustryBflyingBvictimsBtragedyBfunniestBdeliverB	christianBturningB	thereforeBontoBlandBfellBsuperBlivedB	impressedBcontentBstatesBpaidBkeyBhavingBgiantBflawsBbondBaddsBsevenBrayBpornBmsBdamnB	americansBteenageBstepBholesBfacesBdidBsoldierBrentedBrapeBoperaBmurdersBgraceBbeatBalienBagentBdrugBdirtyB
collectionBnoirBmartialBcountBbeganBbecomingBanswerBpickedBnastyBimaginationBhumansB	forgottenBanymoreBraceBmemberBiiBbornBshockingBproducerBlocationBledBintenseBinformationBincludesBimageBhiddenB	childhoodBdesignBdescribeBwhichB
whatsoeverBnewsBletsBjasonBinspiredBbeforeBanimalB	seeminglyBrandomBqueenBchineseBwoodenBwallBuglyBfoodBplaneBasksBartisticBuncleBtragicBheldBcompareBallowedBsixBreadyBquickBlordB	favouriteBeBdrugsB	actressesBsupermanBfashionBcarryBartsBtheirBmeB
introducedBdannyB	boyfriendBallenBreturnsB	necessaryBgroundBdonBaffairBtheatreBskyBloverBdirectBstudentBstephenBprofessionalBpageBcgiBapparentBintelligenceBhospitalB
filmmakingBworthyBwonderfullyB	redeemingBlimitedBclothesBthoseBhelpedBtrustBtreatBenergyB	watchableBthinBtearsBshipBphoneBdoubleBdeeplyBtimBindependentBdouglasBanyB50BwearingBrollBremindsBlistenBcriminalBallowBsuperiorBheavenBcaptainBanywhereBangryBtowardBsleepBpowersBphysicalBrussianBrarelyBnicelyBheroesBcomedicBaccidentBtortureBpilotBepicBadamBwitchBwilliamsB
surprisingB
originallyBnormallyBcastleBwarsBteacherBstationBjoanBfoxBdisasterBstoneBskipBmachineBholdsB	dangerousBcontinueB	accordingBunknownBsuicideBsightBpacingB	nightmareBmemoryBmediaBhatedB	technicalBringBprocessBnonsenseBcreatureBacademyBwantingBunnecessaryBsomebodyBscaredBrealizedBanybodyBwillingBunusualBsuspectBsuitBprovideBpassionBjoyB
intriguingBhigherB
commentaryBbloodyBaskedBabsurdB40BpleasureBlegendBfredBdickBareB	scientistB	religiousBmovedBfailBengagingBdeserveBcopsBbuildBacceptBwinningBwarningBfinishedBexistBblameBpersonalityBnickBmemoriesBjohnnyBjimmyBenglandB	desperateBpriceBheadsBedBdyingBgrowingBcanB	apartmentBjeffBfaithBextraBladiesBjumpBineverBfloorBdeservedBwhilstBvillainsB	screamingBplayerBlosesBinstanceBgunsBvhsBmomBmentalBforcesBcarsBbrutalBunfunnyBstreetsBsearchBresultsBmoreBmonstersBliesBjesusBgrandBfightsB	explainedBartistBweddingBsucksBriverBmonthsBmixedBlengthBissueBemptyBeddieB
discoveredBdealsBconstantBbrokenBbitsBresponsibleBpulledBmorningBmikeBmetBlackingBhorseBexplanationB	communityBcaptureBwindBskillsBsignB	knowledgeBjrBhopesB	featuringBdressedBaccurateBvsBplayersBjeanBhitsBcB1010BsmileBradioBofficerBblandBwheneverBwerewolfBstartingB
remarkableBrecordBlovingBlossBgottenB
friendshipBfieldBeuropeanBdesireB
delightfulBteenBstruggleBprivateBoppositeBmouthBmineBloversBkeepingBkateBincludedBcapturedB70sBtreatedBseanBquietBdealingBdatedBcreatingBbiggerBvampiresBterriblyBspanishBsantaBproveBactionsBsatB	reviewersBpsychologicalB	naturallyBmanageB	lowbudgetBhumanityBgagsBcallsBandyBvisuallyBvisionB
unexpectedBkevinBjudgeBheroineBgladBgeneBconflictBcableBblondeBsingBscreamBsavedBreceivedBordinaryBmoonBmilesBcutsBunderstandingBjapanBgraphicBfatBdesertBballBagesBsurviveBsoapBregularBbehaviorB	standardsBsavingBsatireBkongBkindaBdrivingB
connectionBtaylorBpretentiousBlessonBrubbishBportrayBlooseBinternationalBiceBgoldenB	continuesBcontextBawareBseaBnumerousBeatBcornyBannBwittyBpopBoccasionallyBgoldBdrunkBbrightBbreaksBagainButterBtraditionalBtarzanBrealismBnoticedBjacksonBdiscoverBalbertB80sB
rememberedBopensBmissionBluckB	locationsBeffortsBeditedBallowsBvisualsBkeatonBessentiallyBdevelopB
comparisonBcandyBawkwardBanthonyBafraidBvillageBstudyBprovedBhumorousB
gratuitousBcageBunableBlearnedB	genuinelyB
flashbacksBwindowBvisitBstandingBsegmentBreliefBplotsBjenniferBgrantBgaryBblindBaboutBspectacularBshopBreachBmorganBfavorBboatBboardBversionsBtypesBthomasBstockBprinceBmurderedBmagnificentBlogicBdevilBcurrentBcuriousBcrossBcrappyBbarbaraBadviceBstereotypesBsingerBrevealedBpracticallyBneverthelessBhillBfateBultimateBreviewerB
referencesBpartnerBparodyBnationalBmrsBlakeBformulaBauthorBsuckedBstrengthBmajorityBgrewBgenuineBfeetBentertainedBdebutBchooseBbroadwayBbelievesBbeingB
theatricalBspeedBsheerB	meanwhileBluckyBleaderBgangsterB	deliveredBcreatesByouthBprogramBlaughterBidentityBhaveBhandsomeBforeignBfailureBcaresBbobBwideBvictorBmattersBfranklyBdrewBcameoBtrekBshakespeareBrobinBrobBparkerBnativeBharrisBfinaleBfillBfamiliesBextrasBbearB80BroseBranB
portrayingBlevelsBfordBdecadeBclueBtestBtalentsBstealBrBownerBinvolvesBgrowBcostsBawardsBstevenBruinedBresearchBrelateBpairBmeetingBjosephBhitlerBericBendlessBeatingBbrilliantlyBassumeBsuddenBsequelsBsaturdayBpassedB	existenceBeveningB	describedB
depressingB
commercialBcleanBclassicsBbrownBbetBanimeBunitedBsiteBsellBseasonsB
irritatingBinsaneB	hopefullyBfootBemotionallyB	concernedBcenterBcausedBattitudeBaskingBappropriateBukBtheatersBtapeB	painfullyBinsultB	discoversB
technologyBsimonBproduceBlosingBhowardBheckBhearingBbankBwiseBwellesBtravelBsafeBproperBportraysBlargelyB
individualB	halloweenBdecisionBcostBancientB
washingtonBshallowBreligionBrecallBlousyBlouisBframeBeuropeBcombinationBwitBunrealisticBtwentyBtalksBsheriffBproductBmarryBdreadfulBdanBcontrastBasianBanneBsportsBrangeB	presidentBoverlyBourBnancyBfranceBdoesBcorrectBclaimBcapableBasleepBwinnerB	treatmentBperspectiveB	nominatedBdryB	contrivedBchosenBchickByourBweekendBvoteBtendB	sufferingBstronglyBrentalBpostBfameBfactsBdestroyB810BwoodBtrainingB
satisfyingBriseBobsessedBnaiveBlearnsBkickBhangingB
generationBfreedomBexecutedBcartoonsBbringingBtexasBsympatheticBstoppedBmattBhunterBhauntingBgoryBfinestBchiefBcashBbodiesBbaseballBwelcomeBvehicleB
underratedBtediousBrulesBripBrescueBhauntedBfuBdanielBscareBoutBmaxBmaskBhuntBhorriblyBhideBgordonBfootballB
excitementB11BwoodyBwalterB	structureBroundBpromiseBpatrickBnorthBlynchBlewisBholdingBhalfwayBfoolBfBexcitedBdangerBcapturesBbraveBbombB	appealingBanglesBtinyBtillB	teenagersB	substanceBstealsBsistersBpriestBoliverBkillersBjackieBfareB
disgustingBdepictedBcrowdB
continuityBcontemporaryB
cinderellaBcanadianBbuiltB
australianBpsychoBprotagonistB
propagandaB
mainstreamBforgettableBfaultBexploitationBembarrassingBcowboyBchoseBcantBbelievedB
amateurishB710BvoicesBviewedBtrilogyBtouchesBsuffersBspoilBrepeatedBpleasantBmarieBduringBdubbedBamateurBwitnessBuninterestingBteenagerB
relativelyBpeaceBdesignedBcircumstancesB	virtuallyBsupernaturalBsourceBserviceBroyBreactionBpileBlesbianBdollarsBdB	creaturesBcoveredBcategoryBbeBvictoriaBstorytellingBremainBmooreBgrantedBevidenceBeightBedwardBalexBunlikelyBsurrealB	subtitlesBsoftBseatBruinBkindsBgermanyBenemyBcolumboBcloserBannaBangerBwhoeverBprovidedBpresentsB
occasionalBmarketBlukeBitlikeBfitsBfactorB
everywhereBdragBdegreeBclarkBunfortunateBtwistedB	promisingB	offensiveBinitialBhandledBfreddyBforestBflyBfleshBterrorBshockedB	qualitiesBmatrixBlowerBigoingBgrownBgonnaBgasBfocusedBfiguredBdeathsBafricaBabuseBthoughtsBspendsBservesBryanBreporterBpoliticsBpacedBofferedBfeaturedBdeadlyBbuddyBbeastBangelBakaBwalksBvarietyBsortsBscaleBrussellBpaintBmodelBharshB	convincedBconversationBcombinedBtreasureBtrappedBtargetB	surprisesBrealizesBpityB	performedBoverBmakeupBjunkBhatBdropBcruelBblahBangleB25BweeksBsuspensefulB	slapstickBskinBsecurityBrogerBringsB
previouslyBmistakesBlonelyBkimB	executionBenterBconvinceBclaimsBappreciatedBwarmBvietnamBunconvincingBsympathyBsendBpowellBhiredBfocusesBexperiencedBexactBbreakingBwayneBtitanicBspeaksBroutineBrobotB
refreshingBprincessBnudeBmagicalBlifetimeBlawyerBhongB	fictionalBexperiencesBdisplayBcryingB	committedBveteranBsignificantBsectionBrequiredBpullsBpayingBpaperBjBinsightBguiltyBeachBdirectlyBcostumeBcolorsBbeachB
adventuresB	abandonedB
worthwhileBproudB	listeningBfrighteningBeffectivelyBdarknessBcrashBandersonB	statementBscaresB	recognizeBplansBnetworkBnecessarilyBmgmBmetalBghostsBeroticBdrawB
californiaBbotheredBbmovieBaccentsBteensBtechnicallyBspeechBrevealBmovementBexplainsBdogsBdeviceB
departmentBdeanB	universalBstaysB
revolutionBlisaBgrimB	flashbackB	atrociousBaliceB310BwalkedBtedBsuckB
strugglingBsirBsanBregretBprimeB	melodramaBmassiveB	legendaryBfridayBdonaldBbeliefBaliensBsurfaceBsummaryBspiteBruleBrachelBpositionBpassingBmurphyBjungleBjonBirishB	highlightB	happinessBgrittyBfalseBexpressBdozenBchangingBassBaccidentallyBsusanBsettingsBrollingBrainBpathBnedBkungBindieBhallBemmaBbirthBurbanB	strangelyBsinatraBsharpBsakeB	regardingBmindsBinnerB	influenceBidiotBformatBexamplesBcuttingBbusBwilsonBuniverseBtableBsufferBstayedBspyBscenarioBronBrevealsBmultipleB	interviewBforthBfairyB	entertainBdrivenBcrudeB	criminalsBupBrentingB	professorBpacinoBmountainB	downrightB	disbeliefBcriticalBbuyingBanswersBachieveB13BwearBtouchedBmurdererBlightsBleagueB	invisibleBdudeBcourtBcodeBchinaBcarryingBcampyBattackedB70B
thankfullyBsuchBstolenBstarredBratingsBracistBpriorBmexicoBjohnsonBjobsBisayBforgotB	favoritesBfaithfulB
expressionBconveyBcomplicatedBcaineBboreBbasisBalrightBafricanB14BsoundedBsitcomBseekBrightsBremotelyBraisedBnowadaysBmatureBjuliaBimageryBhadBdennisBculturalBaccountB410B
understoodBuBtaskBsundayBstudiosBrawBpraiseBmusicalsBmidnightBkissBillBignoreBigladBflightBextentB	destroyedB110BskillB
reputationBnotableBmichelleBmexicanBmereBleslieBlaneBineptBgreaterBgraveBextraordinaryBenvironmentBdescriptionBdeliveryB	daughtersBburtBburnsBbaseB	amazinglyBsubplotBserveBroughBpicksBlatestBjulieBfacialBenjoyingB	encounterB	criticismBcoreBcomicalBbradBwarnerBvonBtalesBregardBprotectBprintBpreferBplacedBindiaBheavilyBhandleBdesperatelyBdeeperBcaringBbourneBbelovedB
attemptingBaddingBusaBundergroundBstopsBpregnantBpittBmildlyBlearningBilikeBdemonsBcallingB	afternoonBwarnedBtheoryBstormBstatusBlarryB
interviewsBinspirationBexistsB	challengeBcausesBartistsBviewsBtopicBthrowsBstereotypicalBsleepingB	sensitiveBproductionsBnonethelessBintellectualBhardyBfiguresBdriverBdrinkingBdecadesBblowBwaveBturkeyBtightBshutBrelatedBneedlessBlazyBjailBironicBintroductionBfosterBestablishedBdailyBclaireBchoicesBcellBcarriedB	bollywoodBwinsBwearsBstanwyckBreminiscentBremindBparB	narrationBfourthBfabulousBdragonBclipsBcasesBcarriesBbreathtakingBblockbusterBairedB910BxBwriterdirectorBweaponsBvacationBtracyBthrowingBservedBpurelyBnationB	initiallyBigiveBhenceBfunnierBdressBcornerBcontainBchanBarmsBtrickBthiefBsarahBsandlerBriskBrevolvesB	referenceB	ludicrousBjayBhorrificBhelpingBexpertBescapesBbridgeBblownBbetteBattacksBarrivesBtitlesBtermBteethBsucceedsBspokenBsouthernBrefusesBraiseBquestBmindlessBmentallyB	marvelousBgruesomeBgreatlyBgoofyBglassBfriendlyBfallenBeverydayBdelightBbalanceBamazedBsidneyBquirkyBperformB	obnoxiousBnonexistentBlockedBisorryBhundredBhonorBhoffmanBgrossBgraphicsBclosingBcabinBbrokeBbreathBboundBbbcBauntBtreeB	stupidityBstanleyBstanBspoofBshinesB	screeningBralphBpreparedBmariaBmadnessBlucyBlieB	inspectorB	hitchcockBhelenBguardBflowBflawedB	depictionB	authenticBacceptedBviaBsuspectsBsoldBsleazyBshowerBseekingBpunchBpresentationBnBlionBlegsBkurtBjumpsBitbadB	essentialBeastBdubbingBdrivesBdontBdollarBcheBblairBalasB2000BvirginBswordBseparateBretardedBremoteBnovelsBfbiBconcertBchargeBbitterBamongstB	advantageBwarnB	thrillersBsuccessfullyBpatientBoriginalityB	intensityBgreyBembarrassedBcredibleBcomedianBcatholicBbuckB60sB2006BwhereasBstylishB	strugglesB
physicallyBopenedB	obsessionBnobleBnelsonBmanagerBlessonsBjoinBinternetB	innocenceBhostBhoodBhillsB
determinedB	countriesBcooperBbusyB1950sBvBtruckBtimingB	thrillingBsunBsucceedBspotsBshadowBscreenwriterBreplacedBreedBproperlyBpersonalitiesBoddlyBmst3kB
meaningfulBmassBhidingBdinnerBdevelopsBchillingBcardBboredomBwishesBupsetBstomachBsolveB	searchingBrivalBjewishBhomelessBhintBhamletB
frequentlyBfortunatelyBexpressionsB	elizabethBconsistsBatmosphericBwesternsBsnowBsidesBshortsBplagueBmiscastBmedicalBlugosiBholmesBglimpseBgainBfreemanB	enjoymentBdorothyBcrisisB	connectedBcivilBboB	believingBarnoldBangelsBadaptedB60BworkersBvincentBunforgettableBtiedBtenseBrogersBrobertsBportraitBpoignantBplasticB
performersBpackB	notoriousBmirrorBhookedBflawBdislikeBdigBcookBcontactBbrooksBtriteBtributeB	traditionB
terrifyingBsinisterBsingsBscriptsBridingBprotagonistsBpoolBmillionsBknifeBjessicaBhuntingBfishBdrinkBdialogsBcontroversialBcameosBandrewBwastingBtoyBtextBstrangerBsinBrepeatBquoteBperB	onelinersBmobBlesserBjeremyB
intentionsBhundredsBhappilyBhangB	franchiseBfactoryBensembleB
encountersBdearBcourageBblobBbatB
admittedlyB2001BweaponBwealthyBtonsB	thousandsBsuggestsBshootsB	sexualityBrushedB
redemptionBovercomeBnotedBgloryBegBdonwasteBcynicalBcurseBcolorfulBchristBbearsBalbeitBvideosBsurroundingBsufferedBsonsBshapeBpitchBphilipBpatBnoseBnineBmansionBmagazineBinterpretationBhopedBhanksB
experimentBevaBessenceB	endearingBelvisBdraggedB	confusionBbugsBbettieBagedBwingBtrialBtourBrocksBreunionB
perfectionBnoiseBnaziBmillerBholeBfortuneBentryBcredibilityBbrieflyBbranaghB
associatedBashamedBwwiiBstretchBstepsBsentimentalBsavesBrippedBracismBpullingBoilBneighborhoodBmediumBidioticBhorsesBgrowsBexceptionalBelviraB	elsewhereBbelongsB	attemptedBworldsB
universityBtradeB	techniqueBsumBspendingBrequiresB	reactionsBoscarsBobjectBneatBithardBgagB	expensiveBdealtBcloselyBcheeseBchasesBchaplinB	catherineBbakerBvagueBtuneBtricksBthousandBslightBsendsBsegmentsB
scientistsBpetBmonthBlibraryBironyBinfamousBincreasinglyB
incoherentB
horrendousBhaBgrippingBgothicBequalBcraftedB	conditionBconcernsBbrandBbattlesB2005BwidmarkBwannaBvirusBtornB
sutherlandBstoodBstealingBspecificBpointedBmodestyBmessagesBlloydBholidayBhipBexerciseBdistantBdemonBdaviesBdancerB	countlessB	complaintBchairBcagneyBallowingBachievedBrowBrealiseBlauraBimaginativeBeasierB	continuedBcheckingBbagBappearancesBzoneBwakeBsullivanBstripBstrikingBshortlyBreynoldsB
representsBpreventBnavyBmassacreBlovableBinvestigationBimportantlyBhealthBeerieBderekBdentistBcoversBchuckBbobbyB	appearingBannoyedBachievementBtoiletBstuntsBstuntBspikeBrootBpushedBproofBprofoundB
performingBluckilyBlaidBjumpingBjesseBjakeBitreallyBidentifyBgutsBguiltBgloverB	franciscoBforgiveBcorruptBcomicsBcharismaticB	cardboardBandrewsBwalkenBuncomfortableBthumbsBthrillsBteachBstrongerBstatedB	spielbergB	slightestB
resolutionBrelevantBprideBmustseeBmafiaBgoalBfacedB	executiveBemBdroppedBdawnBcubeBchasingBcharismaBchancesBbrandoBarrestedB
acceptableB24B1980B18BtimothyBshiningBnotablyB	miserablyBlistedBlettingB	inspiringBindiansBialwaysBhandfulB	graduallyBfiredBfifteenBentersBdragsBcolourB1stB	worthlessBweightBwatchesBunintentionallyB
uninspiredB
techniquesBstrikesBshyBscriptedBsavageB	rochesterBpaintingBlyingBlargerBlackedBkoreanBknockBkillingsBindividualsBheartsBgiftBfxBflashBdisagreeBdigitalBcrimesB	competentBcanadaBburnBburiedB	appallingB45BtroubledBteaBtallBsilenceBshallBprojectsBpleasedBmouseBloserBletterBkudosBitalyBireadB	instantlyBidiotsBhittingBhireBheatBhBguestBevidentBemilyBdiamondBdaveBdareBcommitBbeatsBbarryB
attractionBattachedBaforementionedB911B3dBwesBuselessB	typicallyB
surroundedBsexuallyBsBrushB
revelationB	returningBreallifeB
presumablyBphotographedBnightsB	kidnappedBjetBjamieBdramasBdongetBdistanceBdestructionBcousinBcloseupsBbucksBbritainBbrideBbollB	assistantBareasBalikeB
afterwardsB1970sBunionBtimelessBticketB	superheroBstruckBstiffBsplitB	spiritualBsoulsBsophisticatedBsallyB
pleasantlyBplanningBoccursBnotchBmissesBmatthauBkarloffBkaneBitalsoBinstallmentB
highlightsBgoldbergBfittingBfearsBfayBdocB
discussionBcontractBconBbulletsBbiteBbirthdayBbeerB210B20thBwonderedB
unbearableB
tremendousBthrewBstrikeBsizeB	secretaryBridB
recognizedB
reasonablyBpsychiatristBpressBpickingBpartlyB	overratedBneckBmenacingBlooselyBkicksBjoeyBianBhypeBhuhBhudsonBgrayBfarceBexaggeratedBdynamicBcurtisBcriedB	carefullyBbroadBblowsBargumentBadmireBwreckBwarrenBtempleB
subsequentBsilverBseagalBranksBpreciousBnotesBmatthewBmarksB	manhattanBliberalBitshameBhomageBhatredB
frustratedBcorpseB
convolutedBconsequencesBbibleB	attractedBarmBaffectedBaccomplishedBwinterBwardBswedishBspellBsamuraiB	providingBpovertyBpieBpackedBmildBmelBlaurelB
inevitableBimprovedBdrawsBdocumentariesBdemandsBcupBcontraryBcombatBcarolBburningBbreastsBbeingsBbeatingBannieBthreatBstrictlyBstBruthBridiculouslyB	revealingBpsBpianoBpersonaBmoralityBlilyBkennethB
ironicallyBimBharderBgentleBgenerousBflawlessBextendedBexploreBeastwoodBdrivelBdiseaseBdenzelBdeliberatelyBcruiseBcreatorsBcoxBchildishBbellBanywaysB
altogetherBwarriorBtunesBtrapBthroatBtalkedBsubplotsBsoleB	resemblesB
regardlessBrapedBrapBramboBpushBmeltingBmachinesBleB
journalistBintrigueB	insultingB
importanceBiiiBhorrorsBhestonBfliesBfisherBdoorsBdarkerB	curiosityBclintBcatsBburnedBbrosnanBbrazilBarriveB17BwhaleBturnerB	territoryBshadowsBsadnessB	remainingBprogressB
overlookedBoverdoneBofferingBobscureBmonkeyB
miniseriesBkapoorBguessingBgialloBfatalBfarmBfailingBexploredBdrunkenBdraculaBcusackBcraigB
conspiracyBcompetitionB
cameraworkBadBwallsBviciousBtwinBtranslationBthirtyB	symbolismBsplendidB	sacrificeBoutcomeBordersBopposedBnonBnazisB	mountainsBmateBmargaretBlouB	intentionBgrandmotherBfocusingBestateB	elaborateBduoBdireB	dinosaursBconnectBcoleBciaBbasementBaimedB1930sBworryBtorturedBswearBsuitsBstoleBspiritsBspinBsmokingBsloppyBruthlessBrobotsBpushingBnuclearBmelodramaticBlucasBistillB	intriguedBhitmanB	godfatherBfeverBfancyBenjoysBeaseBdivorceBdistractingBdevoidB
depressionBcreationBcaptivatingBboxingBbleakBapesBabsenceB	abilitiesBworriedBwondersBwebsiteBvegasB
unpleasantBtwelveBthugsBstringBspoiledBreceiveBpromBproceedingsBpanicB
outrageousBoccasionBneighborBnearbyBminimalBmatchesBlosBjerkBitoneBimplausibleBhollowBfurthermoreBeyreBexplicitBexistedBescapedBengagedBelderlyBedieBdifferencesBdefiniteB
concerningBclumsyBchoreographyBcharacterizationBbackdropBaccusedB1990B1980sBwickedBwBunintentionalBundoubtedlyBtreesBtitledBthreateningBtBsuperficialBsubjectsBstayingBspookyB
remarkablyBrelativeBrecordedBposterBoccurredBlincolnBkitchenBjealousBincidentBignoredBhardcoreBgardenB	forbiddenB	disappearBdetailedBdefeatBcriticBcommercialsBcoherentBcluesBcaryB	alexanderB1970BwellsBwealthBtoddBthrillBsuperblyBsunshineBsubtletyB	streisandBsticksBsoccerBsentenceBscreamsBresponseBremovedBreducedB
reasonableBportionBperryBpaysBoddsBmitchellBloadBjazzBimaginedBhorridBhamiltonBgenresB
futuristicBfreakBdrawingBdisplaysBdiscussBdanesBdancersBdamageBcitizenBcarlBcamerasBbushB	broadcastBboldBbathroomBargueBaffordB2004BwintersBwebBversusBtracksBsurvivalBspringBshineBsharkBruralBritterBrickBreachedBpossibilityB
populationBoughtBneilBmeatBlikingBkenBhughBholyBhintsBhatesBharveyBgoodnessBgBfighterBfalkBdaringB	currentlyBcomplainBchorusBcatchesBburtonBbrainsBbinB	australiaB50sB2002BwolfBunbelievablyBthroughB	terroristB	survivingBsuitedBstaffBsmokeBsevereBsecretsB
scientificB
restaurantB
repetitiveB
repeatedlyBpretendBplannedBphotographerBoverwhelmingBnarratorBmildredBmeritBmeaninglessBmakerBlogicalBlegB	landscapeBkirkBjeffreyBintentBhasBgrabBgottaBglennBgenericBflopB	financialBexoticBeveBcolonelBcausingBbuddiesBborderBblankBaudioBaprilBamyB	ambitiousBadequateBwontBvoightBupsB	therealsoBstylesBsellingBsecondlyBreturnedBpropsBpopcornB
nightmaresBmileBmidBmastersBlipsBkickedB
hystericalBhousesBhollyBgreekBgermansBemphasisBdukeBdirectorialB	decisionsBdatingBconsistentlyB	commentedBcomfortableBcarterBcaredBcameronBbuildsB
brillianceBblakeBatlantisBanticsBahBabysmalB2007BwindsBwatersBtoysBtommyBtameBsurfingBstagedBslapBsignsBresemblanceBpossibilitiesBpokemonBofficialB
motivationBlindaB
isurprisedBimpressBiheardBfrustrationB
explosionsB
explainingBetBeditorBdozensBdevotedBcubaBcountrysideBcliffBblendBbeatenBairportB2003B	yesterdayBvaluableBuweBupperBtransferB
thoughtfulB	succeededBsnlBsmoothBshelfBschemeBremarksBrageBpurpleBpulpBofficersBoffendedBnurseBnormanB	newspaperBmyersB	movementsBmonkeysBmeasureBlightheartedBleonardBinvestigateBhonestyBguideB	explosionBenormousBdirectsBdignityBdawsonBcouplesBconversationsBchasedBbirdBavoidedB3rdB1999BunhappyBtrioBtapB	survivorsBsuitableBstoogesBstillerBsovietB
simplisticBshoesB	seventiesBroomsBreactB	psychoticBpreviewBpracticeB	possessedB
philosophyBouterBmontageBmaggieBlabBkarenBjustifyBjudgingBirelandB
introducesBinteractionB	immenselyB
horrifyingBheroicBguessedBglobalBfolkBflynnBfloridaBendingsBedgarBdutyBdownBdoomedBdianeBcureBclownBchainB	carradineBcareersBblewBblatantBbannedBagingBwannabeBunwatchableBunevenBtoplessBstellarBspreadBsportBspareBsmallerB	similarlyBromanB	representBreliesBreadsB
prostituteB	producingBpearlBnotionB	murderousBlustB	lifestyleBlastedBkennedyBjuvenileBjuneBiwatchedBhartBgandhiBgadgetBfelixBengageBellenB	educationBdianaB
developingB
deliveringBcrackB	corporateBchaosBcarrieBbirdsBbenefitBbackgroundsB16BwishedBtearBsurvivedBstreepBspecificallyBsolelyBsimilaritiesB	satisfiedBsadisticBrivetingB	principalB	primarilyBpaintedBoccurBmaintainBlolBlawrenceBlBitgoodBironB
innovativeBingredientsBhideousBheadedBgundamB	formulaicBfondBexposedBerrorsB	disturbedB	dialoguesBdancesBcraftB	companionBcircleBcardsBbuttBadvancedBabcB	wrestlingBwallaceBtonightB
suspiciousBsteelBsitsBshirtBshirleyBscopeBsatanBsappyBracialBpeoplesB
nominationB	nicholsonBmenaceBmarioBloadsBlenaBlemmonBkingdomBinvolveB	inventiveB
influencedBignorantBidealBhurtsB
helicopterBgroupsBgloriousBdropsBdisappearedBconvincinglyB	containedBcomposedBcoffeeBchessBcentersBblondBbakshiBawakeB
artificialBarrogantBakshayB90sByellowBwillisBvastBuserB	travelingBtrailersBterryBtenderBsplatterBsettleBreachesBrangersBoutfitBmorrisBmistakenBlimitsBliBinvolvementBillegalBhumbleBhalBexBenemiesBdubBdominoBdollB	describesB	depressedBdefendB
consistentB	comparingBclassesBcivilizationBcheatedB	charlotteBcarreyBblockBbeneathBbehaveBballetBarrivedBwritesBworkerBwalkerBurgeB
unsettlingBunfoldsBthruBtadBstiltedBstevensBselfishBrobberyBrichardsBrevolutionaryB	realizingBreachingBraisingBprisonerBpoliticallyBphotosBpaulieBmollyBmixtureBmickeyBmartyBlyricsBisolatedBinferiorBincomprehensibleBinaneBhilariouslyBhighestBheartwarmingBformsBempireB	displayedBdimensionalBdesignsBcrushB
corruptionB	conflictsBconcernBcommandBcheatingB	celebrityB	carpenterBbareB	authorityBalertBairplaneBaidsBagentsBadvanceBabusiveB3000BworeB	vengeanceBtravelsBtongueBswitchBswimmingBstinksBstinkerB
stereotypeBsquareBslaveBshakeB	scarecrowBsatisfyBrepresentedBpromisedBpotentiallyBnervousB	mysteriesBmoodyBleoBlayBlatinBkickingBiranBinappropriateBhboBexplorationBeightiesBearsBdollsB
disjointedB
disappointB	dedicatedBdaltonBcravenBcombineBclothingB	celluloidBbrutallyBanalysisBamB0BwaitedBvividBviewingsBtriumphBtreatsBtransformationBtiesBsynopsisBstressBsnakeBsmilingB	senselessBrubyBrottenB
richardsonBresponsibilityB	relationsB	recordingBrandyB	provokingBpassesBorsonBollieB	neighborsBnamelyBmethodBinstantBgarboBgabrielBfrequentBfirstlyB
enterpriseBelephantBearnedBeagerBdutchBdownhillBdistinctB	discoveryBdiscBdestinyBdepictsBclausBchoreographedBcatchyB	buildingsBbottleBadvertisingBadorableByellingBwoundBvirginiaBusefulBtrashyBtrainedBtimonBtaughtBsubBspokeBsneakBshouldBrankBpurchaseBpunkB
progressesBprizeB	prisonersBoceanBnonstopBnicholasBmotivesBmallB
landscapesBkeithBitgreatBhuntersBhungBgraspB	gangstersBfingerBfaultsBfasterBexposureBeugeneBendureB	eccentricBdickensBdesperationBdesiredBconservativeB	companiesBchampionshipBbuffsBbuffBbladeBbathBarmedBangelesBangelaB	alcoholicBaccessB1950ByaBwidowBweakestBvisibleBtieBthickB	testamentBstargateBshelleyBscoresBsandraB	resourcesBresortBrelationBramonesB	purchasedBproceedsBprimaryB
pretendingBprequelBpersonsB
passionateBoB	nostalgicBmodelsBmiikeBkhanBjumpedBinvasionBimprovementBhookBfestB
enthusiasmBdemandBcopiesBcoachBbuttonBbusinessmanBbonusBboneBbluntBbluesBberlinBbandsBattorneyBamitabhBacidBwrappedB	witnessesBwitchesBwhoopiBwhatsBvoicedBvisitsBunawareB
transitionBtagBstaringBsimmonsBsellersBrobinsonBrexBquestionableBpornoBpierceBparallelBpaltrowBozBmuseumB	miserableBlivelyB	illogicalBillnessB
homosexualBhistoricallyB	excessiveBensuesBdistributionBdamonBdaddyBcrucialBcreepBclosedBchoosesBcdBcatchingBbulletBbeattyBamountsBaidBwivesBwidelyBwatsonB	wanderingBwaitressB
underlyingBsuspendBsolutionBsidB	septemberBsecretlyBrootsBrockyBrocketBresistBquotesB	plausibleB	performerBpartiesBparentBpackageB
overactingBonedimensionalBniroBmundaneBmarchBmadetvBmBlikewiseBjudyBintentionallyBibigBhelloBhandedB	guaranteeBfuryB
fascinatedBembarrassmentBelegantBdinB
creativityBclicheBcleverlyBcarefulBcakeBbrendaBassignedBapeBaccompaniedB2ndB1971BwizardBwisdomBwetBwereBunderstandableBtankB	sillinessBsignedBsidekickBshowcaseBrossBreflectBratsBratBpoeticBpinkBpigBphilosophicalBparanoiaBoverlookBnycBmontanaBmiseryBminiBmessedBmankindBmanipulativeBloyalBloneBloadedBlitBlettersBlengthyBlatelyBkBjennyB
irrelevantB
inevitablyBiconBhammerBgiftedBfoulBfeedBdrakeBdowneyB
destroyingBdarrenBconsiderableB
complexityB
compassionBcitiesBcampbellB
basketballBbangBashleyBarguablyB	alongsideBagreesB1996BwoundedBwendyB
vulnerableBtwinsBspeciesB	slaughterBsincereBsagaBsafetyBrubberBreportB	relativesBraymondBraveBorleansBopinionsBmannBmaniacBireallyBintimateBimproveBhoBgrinchBgrandfatherBgrahamBgingerBfacingB	equipmentBeditionBearlBdrearyBdementedBconventionalBclaimedBchallengingB	barrymoreBassassinBwishingB
widescreenBwarriorsBwakesBunitBunfairBtroopsBtomatoesBtiresomeBtechnicolorB	subjectedBslickBsinkBshowdownBrecognitionBreceivesBphonyBperformsB	operationBmerylBmeritsB
mentioningBlawsBkubrickBjuniorBjoelBincompetentBifanBhopkinsB	heartfeltBhearsBgriffithBfuneralBfixBfarrellB
expeditionBexceptionallyB
equivalentBelmBdinosaurB	crocodileB	correctlyBconstructionBconfrontationB	conceivedBclipB
christiansBchicksBcgB	capturingBbrooklynBbradyBborrowedBbootBbeliefsBaweBattendBastaireBappreciationBamandaBalbumBaccuracyB1987B1973B1960sB	verhoevenBvalleyB
unoriginalBunderBtaxiB	suggestedBsueBsignificanceBscroogeBscottishBruinsBrejectedBrabbitBquietlyB
punishmentBpetersBpamelaBopportunitiesBmuddledBmonkBmodeBminimumBlegalBlandsBjustinBhopperBhopelessBheartbreakingBgodzillaBgatherBfeelgoodB	fashionedBfascinationBexchangeBdustBdreckBdoomBdescentB	depictingBcringeBclosetBcinematographerBchristianityBchicagoBcaveBcalmBblastBawfullyBappropriatelyBaffectB
additionalB75B1983B1972B1933B13thBwillieBwarmthBustinovBunrealBtubeB
terroristsBteachingB	supportedBstraightforwardBstaleBspainBsopranosBseedBsabrinaBrussiaBroofBretiredBrestoredBpursuitBpromisesBpolishedBpolanskiBphilBphantomBpalBowenBothelloBolivierB	nostalgiaBnailBmotivationsBmethodsBmentionsB	masterfulBmassesBmarsBlowestB
literatureB	laughablyBitfunnyBinstinctBinconsistentBfrancisB
expositionBexploresBdoubtsBdonnaBcorpsesB
confidenceB	compelledBcoastB	classicalBbridgetBbelongBbayBassumedBabusedB1968ByoungestB	wellknownBwavesBwarmingBvictoryBvaguelyBtwilightB	trademarkBsurvivorBsubparBsoloBsnakesB
simplicityB	shouldersBshedBshanghaiBseeksB	respectedBrequireBrelyBratesBprepareBplantBparadeBomenBnathanBmiracleBmightyBmapBjonathanBjoinsB	integrityBgreedyBgreedBfulciBfieldsB	expressedBeuropaBeducationalBedgyBdifficultiesBdevicesBdespairB	communistB	climacticBbumblingBblowingB	biographyBbelaBbacallBautomaticallyBassaultBamusedBagreedBadviseBadamsB
activitiesBwretchedB	witnessedBwhollyBweaknessBvisitingBunseenBunpredictableB
underneathBtravestyBtendsBteachesBswimBspiritedB	speciallyBspaceyBsimultaneouslyBsimpsonBshawBsensesB	resultingBresembleB	renditionBregionBrandomlyBpsychicB	profanityB	pricelessBpreviewsBpoetryBpoemBplightBpg13BpettyBpatientsBparadiseBpantsB	objectiveBnutsB	musiciansBmilkB
mechanicalBmclaglenBlouiseBlosersBlinkBladderBkiddingBjulianBiraqB	introduceB	immediateB	imitationBhankBguestsB	grotesqueB
frightenedBfrankensteinBfondaBegoBdressesBdomesticBdelBdammeBconstructedBconfessBchannelsBbettyBbedroomBanticipationBaltmanB
accomplishB19thB1997B1995B	unlikableBunexpectedlyBuncutBtribeBtoothB	stretchedBsoftcoreBsixtiesBshipsB	sentimentBroyalBrothBrompBromeroBrolledBrefusedB
reflectionBrealmBratsoBquitB	primitiveBpotB
positivelyBpopsBpitifulBpeakBpagesBoutfitsBonlineB
obligatoryBmummyBmetaphorBmayorBmayhemBloyaltyBlandingBkumarBkissingBkansasB	interestsB
industrialBievenB	householdBgregBfrankieBfoughtBfloatingBethanBdeceasedBcontestBconcludeBcoincidenceBclosestBclockBchristyBchickenBchargedB
challengesBcelebrationBcapitalBbullB	brutalityBbernardBbasingerB	attitudesBantwoneBabsentB35B30sB1993BwornBwackyBviceBunfoldBunderstatedB	tastelessBsumsBstagesBsquadBspringerBspockBsharonBsharesBscotlandBreleasesBreignBreevesBrebelBpurposesBpunBprovocativeB
presentingB
popularityBpitB	occasionsBminusB	mentalityBmelodyBmasterpiecesBlundgrenBkarlBiratherBinteractionsB
imaginableBhughesBgrabsBglassesBframedBfingersBelBdesiresBdesignerBdesertedBdeafBcreatorBcrawfordB
conditionsB	comediansBchuckleBbusterBbargainBbabeBastonishingB	ambiguousBalfredBactiveB40sBwildlyB
wildernessBwalshBuntilBtripeBtopnotchBtigerBthoughtprovokingB	terrifiedBsungBsufficeBstuartBsteeleBsoundingBsentinelB	secondaryBscoobyBroommateBromeBrobbinsBrisesBremainedBraisesB	prominentBpreyBpressureBpremiereBpoisonBpaxtonBpanBnonsensicalBnicoleB	murderingBmorbidBmillionaireBmarshallBmarionBmaidBlumetBlockBlaborBkyleBjawsBinventedBinfectedB
guaranteedBgriefB	generatedBfontaineBflairBempathyBdudleyBdislikedBdemonstratesBdanaBdaBcopeBcomfortBchoppyBchestBchapterBchainsawBcaricaturesBcaliberBbergmanBbelushiBballsBaspiringBadaptationsB	acclaimedByardBvulgarBvitalBveinBunderstandsB	threatensBschoolsBrooneyBremakesBremadeBrelaxBreelBrecommendationBpropertyBpreposterousBpatienceBpassableBpalmaBoptionBnolanBnoisesBninjaBnewlyBnailsBmtvBmistressB
misleadingBmatchedBmacyBjoshBitemsBinsipidBhusbandsBhkBheistBharmBgrudgeB	glamorousBgenerationsBfreaksBfoxxBfidoBfemmeBfedBfathersBexperimentsB	evidentlyBelectricBelectionBeditBduckB
directionsBcreditedBconneryBcomparisonsBbutlerBboomBbesideB	alternateBacceptsB	absurdityB1986B1000ByearoldBwellwrittenBvisitedB	upliftingBtroublesBtodaystandardsBthunderbirdsBstumbledBstairsBshoulderBreplaceB	repeatingBreflectsBredeemBrealisedBreaderBproB	prejudiceBpredictBpostersBpgBmoronicB
middleagedBmarvelB	marketingBlushB
lonelinessBloisBletfaceBlesBlasBkidmanBkentBjewsB
irecommendBinvitesB	insuranceB	ignoranceBiafraidBheightsBheightB	gentlemanBgamblingBfunctionBfrancoBfiftyBfemalesB
exceptionsBentitledBemperorBeatenBdiscoveringB
difficultyBdarnBcueBcrystalBcrazedB
conscienceBbunnyBbullyBbabiesBawhileBaustinBasylumBarrivalBalternativeBabruptBabrahamB1988B1984BwendigoB
weaknessesBvisionsBtherenothingBtackyBsuitablyBstunnedBstoresBspinalBsoylentBsoxBskullBshoddyBshadesBscreensBrodBritaBreferredBreferB	receivingBrajB
psychologyBpromoteBprestonB	preciselyB	policemanBpBoverlongBoutingB	organizedBnemesisBmuslimBmorallyBmillBmessyBmccoyBmasksBmarthaBlukasBlindsayBliftedBlegendsB
lacklusterBkayBjoinedBinterestinglyBinsistsB
indicationB
hopelesslyBguitarBgenieBfuriousBfortyBforgivenBdysfunctionalBdroppingB	disgustedBdiehardB
detectivesBderBdefinedBdeeBdanielsBcountsBcommunicateBclarkeBcancerBburstBbeverlyBbeholdBarthouseBantsBambitionBalcoholBagencyB	admirableBvainBunexplainedB
underwaterBtylerBtrailBtomorrowB
sympathizeBstalloneBsoupBsoonerBsissyBsirkBshoutingBsharedBriotBrespectivelyB
respectiveBresidentBrepresentationBregardedBquinnBposeyBphraseBphotoBpeteBorderedBnodBmothersBmaloneBmadonnaBliteraryBleonBkungfuBknockedBjokerBisraelBinvestigatingBinexplicablyB	housewifeBhidesBhartleyBhaplessBhammyBgodsBgerardBflowersBfirmBfewB	exploringBeternityBdudBdroveBdoseB	disguisedB	deservingB
describingBderangedB	dependingBdelicateBdefeatedBdanishBconventionsB	computersBcomplainingBcoBcluelessBcircusBcheckedBcannonBcannibalBcampaignBbulkBbsgBbridgesBborisBbanalB1978B
witchcraftBweatherBwandersBventureBvanessaBvanceB	unrelatedB	uniformlyB
underworldBtransformedBtowersBteamsB
suspensionBstudyingBsparkBsmilesBshoppingBshakyBservantB	selectionBscrewedBrookieBrisingBrifleBpuppetBpoleBpickfordBpalanceB	misguidedBlimitationsBlastingBkittyBjaredBinvitedBinstitutionBiconicBhulkBheadingBhandlesB	hackneyedBgungaBgregoryBgiantsBfrustratingBflashyBfishingBfillerBexcessBerrorBdurationBdolphBdoctorsB
definitionBdefenseBcrueltyBcreamB
convictionBcontinuallyBconnectionsB	completedBclaustrophobicBcitizensBchillsBcheerBcasinoBbudBbrendanBbowBbilledBbewareBauthoritiesBaudreyBattractBalecBaddressB
acceptanceB73B2008B1989BwrapBvaderBtriviaBtorontoBthreadBteachersBtastesBsymbolicBswingB
suggestionB	strangersBsteadyBsleepsB	sincerelyBseverelyBsendingBscrewBrudeBropeBronaldBreidBrecordsBrapidlyB
professionBpostedBpatriciaBoutdatedBorangeBnovakBnetflixBmurrayBlinersBliftBleadersBlaurenceBknightBklineBivBinhabitantsBindependenceBimmatureBigotBhomerBhilarityBhealthyBglowingBglobeBgeorgesBfistBfirmlyBfiBfavourBemergeBeasternBduvallB
disappearsB	dimensionBdatesBcrackingB
controlledB
containingBclaimingBcharltonBcassidyBcarlaBcarellBbuffaloB
braveheartBboastsB	blatantlyBblacksBbeltBbaconBasiaBartworkBartsyBapplaudB	amusementBamritaB1976B1969B1936BwweB
winchesterBwigBwaxBwaltBusersBtrendBtrackingBtowerB
terminatorBsunnyBsubtlyBstumblesB	strongestBsometimeBsliceBshorterBservingBseedyBsassyBsameBridesBremoveBrainesB	preparingB	paramountBpalaceBnewerBnerdBnaughtyBmusicianBmoreoverBmelissaBmasterfullyBmarriesBlifelessBlaurenBkathrynBisayingBincidentallyB	identicalBhydeBhokeyBhippieBheartedBhawkeB	greatnessBgoodlookingBgearBforcingBfogBfillingBfeministB
farfetchedBevelynBearnB
discussingBdirtBdeniroBcurlyBcostarsBconceptsB
complaintsBclaraBbyeBbrosBbentB	befriendsBbaldwinBbachelorBalisonBaimBadoptedB
accuratelyB1979B1945ByawnBwireBwanderBtipB
threatenedBtabooBsweptBsurgeryBsugarBstudiesBstarkBstalkerBspencerBsomedayBslimyBskitsBsg1BseldomBsciBschlockBsaleBrootingBreliableBrecycledBrapistBquaidBpuertoB
principalsBprayB
portrayalsB	partiallyBpacificBoutrightBoldestBobtainBnormBminBmiamiBmermaidBmarlonBmachoBlocatedBlimitBlexBletsayBlastsBinsanityBinexplicableBhomicideBhiresBharrisonBharmlessBgraysonBgrainyBgluedBgenderBgatesBfooledBfilthBfeedingB	fairbanksBfactorsBexitBethnicB
engrossingBemployedBemergesBdixonB
disastrousB
despicableBdameBcriesBcoupledBconveysBcontemptBconsiderablyB	confidentBcolinBclanBcareyBbreedBbreadBbostonBbmoviesBbendBbeatlesBbatesBbarsBbarrelB	backwardsBbacksBavoidingBarielB
approachesBagendaBwellmadeBwelldoneBvotedB	victorianBvibrantBundeadBtopicsBthrilledBstatueBstaticB
soderberghBshepherdBsergeantBrenderedBrecognizableBpunchesBpromptlyBpirateBphillipsBphillipBpennBpartnersBolBobjectsBninaBnicolasBnativesBmegBleighBlayersBlandedBjawBitinterestingBinspireBigivingBieBhimBharoldBhangsBhandlingBgypoBguardsBgoldblumBgillianBgainedB	fantasiesBexperimentalB	encourageBeatsBearBdrinksBdisgustBdisgraceBdifferentlyBdemonicBcyborgB
chroniclesB
challengedBcentreBbtwBboyerBbikeBbanterBattenboroughB
astoundingBaffectsBactivityBaccountsB99B4thB1977B1940BzombiBwingsB
werewolvesBweakerBwangBtunnelB
translatedBtobyBthompsonBtaBsublimeBstoppingBstonesBsteamBsorelyBsophieBskitBshakingBservantsBsensibleBrukhBrhythmBrefuseB	publicityBprogramsBpreachyBpoundsBpostwarBpollyB
phenomenonB
passengersB	paintingsBnorBnationsBmindedBlabelB	knightleyBjudgmentBjuddBjillBjessBjacketBitkindBitemBinsultsBinspirationalBinsightsB	ingeniousB
inaccurateB	holocaustBhistoricBhandheldBhamBhackBgoodsBgodawfulBgalBformedBfluffBexaminationB	evolutionBerikaBelevatorBdramaticallyBdisguiseBdetractBdestroysBdepictBdeliveranceB
definitiveBdeerBdazzlingBcritiqueBcrashesBcouchBcostarB
continuingBcompeteB	commanderBcohenBcenteredBcasualB
cartoonishB	candidateB	camcorderB	behaviourBaussieBassuredB	assembledBassassinationBakinB	afterwardB28B22B1981B
unlikeableBtripleBtriangleBtrialsBtrafficBtaraBsurvivesBsuburbanBstalkingB	spectacleBsleazeBsingersBsetupBscariestB	salvationBrippingBrewardBrespectableBrenaissanceB	reluctantBregardsB	realitiesBprovingBpredecessorBpennyBownsBowesBnorthernBnewmanBneatlyBmixingBmitchBminorityBministerBmiceBmacabreBlighterBlendBlaurieBlaputaBkolchakBjudgedBitalmostBitalkingBinternalB
insightfulBinfoB
improbableBhungryBhatsB	fastpacedBexpectationBexcruciatinglyBenthusiasticBenteredB	endlesslyBdylanBdressingBdjB	dillingerBdemiseBdebateBcypherBconradB
confrontedB
commentingBcliffhangerBclichesBcastsBcanyonBbutchBbroodingBbronsonB	breakfastBbogusBbetrayalBbeowulfBauthenticityBanyhowBanilBangstBandreBalteredB	affectionBaffairsB
advertisedBadoreB23B1990sB1939ByepB
wonderlandBvividlyBvehiclesBumaBtaxB
stunninglyB	strengthsBstareBspiesBsondraBslappedBsketchBsinkingBshortcomingsB	separatedBselectedB	satiricalBsalmanBsaintBrunnerB	repulsiveBreminderBreeveBreadilyBracingBpursueBpromotedB	preferredBpraisedBpoeBplayboyBpaulaBpainterBneuroticBmythBmirrorsBmesmerizingBmercyB
meanderingBmarcBmamaBlowkeyBlorettaBlocalsBliuBkeenB	justifiedBjordanBiqBinjuredBingridBimoBimmortalB	horrifiedBhomosexualityBhippiesBhighwayBhelpfulBheelsBguinnessBgrowthBgilbertBgielgudBgereBfullerBexpectsBestablishingBescapingBentiretyBebertBdivorcedBdisorderBdestinedBdesBdependsB	demandingB
deliberateBdefineB	decidedlyBdebbieBcrosbyBcrashingB	convictedBconcentrateBcomposerBclassyBcheaplyBcerebralBcecilB
cassavetesBbuzzBbugBbrunoBbondageBbittenBbikoB	attackingBamazonBaliciaB	addictionBaddictedB200ByokaiBvolumeB	valentineBunsuspectingBunimaginativeBuhBtromaBtemptedBstylizedBstackBspreeBspeechesBsoughtBsonnyBslideBsfBsettledBrowlandsBrickyBrespectsB
relentlessB	releasingB	referringBreadersBpushesBpuppetsBpumbaaB	principleBprecodeBpoundB
politicianBphysicsBphantasmBpacksB	overblownBoutlineBnutBnominationsBmutualBmontyBmobileBminnelliBmcqueenBjennaBireneBioneBinteractBindianaBhugelyBgrassBgemsBgarnerBfoolsBfiringBfifthBexposeBexcellentlyBeternalBdeclineBdecidingBdashingBdamagedBcontestantsBconsistBconsBconfrontBconanB
colleaguesBcloneBcinemasBchoosingBchillBchibaBcheekBcentsBcbsBbuysBbravoBboxerBbowlBbountyBbitchBartyB
approachedBalvinBallyB1991B1985BwoundsBwooBwongBwineBvotesBvinceBvileBvastlyBvanillaBupdatedBunsatisfyingB
undeniablyBtremendouslyB	tormentedBtoniBtonBtenantBtacticsBswearingBswallowBstrokeBstringsBstickingBspitB	spaghettiBscratchBsamanthaBroutinesBroundedBrevoltB
restrainedB	repressedB	regularlyBrefersBracesB
psychopathBpeckBpapersBoriginsB
noticeableBnopeBnolteBnetBmutantBmormonBmitchumBmirandaBmalesBmailBlongoriaBlegacyBkurosawaBknocksB
kidnappingBkazanBjolieBjarringBitprettyB	incidentsB	incapableBialsoBhelplessBhainesBgratefulBframesBfataleBexteriorBexpertlyBexclusivelyBenteringBearnestBdvdsBdubiousBdownsBdonwatchBdistractionBdeputyBdeniseBcountyBcopiedBconveyedBcontributionB	christineB	christinaBchoppedB
casablancaBcaronBcapeBblaiseBbiasedBberkeleyB
assignmentBarabBaptBapplyBangelinaBallianceB	alexandreB	aftermathBacquiredB
accessibleBabruptlyB21stB1974ByoutubeBwipedBwindowsBwarnsBvargasBvanityBtraitsBtrainsBtossedB	tolerableBtokenB
timberlakeBtierneyBthievesBthelmaBtcmBsymbolBswitchedBsubtextBstrandedB	startlingBslipBsentimentalityBscreenwritersBrosarioB	rewardingBrainyBpsychologistB	possessesB	populatedBpoppingBpolicyBpixarBphotographsBoriginBoffbeatBnoveltyB	nightclubBnervesBmuppetsBmuppetBmoronsBmoronBmodestBmelvynBmedicineBluisBlolaBliamBlendsBjewelBitworthBitgotB	isolationBiranianBiraBintroducingB	intricateBinherentB	incorrectBimpliedBimmenseBidBhopBhepburnBhavocBhannahBgoodbyeBglaringBgalaxyB	galacticaBfruitBfrontierBfreakyB
foundationBflockBflimsyBfeastBexploitBestherBenBembraceBembarrassinglyBemailBdreadBdrabBdevastatingBdenyBdeletedBdaylightBculturesBcrossingBcounterBcorporationBcontroversyB
comprehendBcommitsBcombinesBcolumbiaB
collectiveBclickBcleaningBcheadleBcharacteristicsBchampionBchamberBcemeteryBbudgetsB	brainlessBboyleBbeggingB
battlestarBbachBaxeBassumingBappliesBadeleB85B1940sBwtfBwiderBwagnerBupsideBultraBtopsBtherapyBtargetsBtapesBsydneyB	suspectedBstabbedBspiceBspanBsourcesBsnuffBslavesBsiblingsBshootoutBshiftsBsharingBsessionB	sebastianBscoopB	scenariosBsarandonBrouteBromancesBritchieBreviewedBresultedBresolvedB	residentsBreportsB	remembersBrampageBquarterBpuzzleB	publishedBprosBpeggB
pedestrianBpeacefulBpatternBpaleBpadBownersBodysseyBnatalieBmotiveBmortalBmiyazakiBmagicianBlongingBleapBkinnearBjealousyBignoresBhornyBhomesBhermanBheavyhandedBgimmickBgateBgableBforemostBflavorBflashesBfillsBfiftiesBfadeB	exquisiteB	exploitedBensureBenhanceBeliteBdumpBdragonsB	dominatedBdistressB	departureBdealerBcrispB
contributeBcoloursBclimbBchristieBbossesBbonesBbogartBbaitB	awakeningB	attendingB	argumentsBapproachingBantonioBamidstBalleyBaimingB
adolescentBaddictB	absorbingB1934BzaneByouthfulBwiselyBwhinyBwhiningBwartimeBvoyageBunattractiveBtherelotB	tarantinoBsupplyBstreamBstardomBstalkedB	spidermanBsnowmanBshredBshiftBsethBsellsBsangBsandBsalesmanBritualBpredictablyBpotterBpokerBparsonsBparkingBownedBominousBolsenBnyBnuancesBnaschyBmuteBmouthsBmotionsBmoralsB
misfortuneBmeteorBmealBmannersB	macarthurBlunchBloyB
liveactionBlavishBlanceBkarateBjuryBjadedBjacquesBitevenB	instinctsBinmatesB	inabilityBiloveBheadacheBharlowBgroundsBgoalsBgloriaBgenerateBfranklinB
forgettingBfiancBfarmerBexploitsBexperiencingBexorcistB
executivesB	europeansBenvyBenhancedBdooBdivineBdistractBdismalBdemonstratedBdeliciouslyBdandyBdamnedBcushingBcrippledBcoveringBcoupB	convincesBconvenientlyBcontributedBcomebackBclerkBclashBchongBcherBcasperBcarnageBcampusBbwBbuseyB	breakdownBbombsB
blackwhiteBbegunBbegBarrangedBappealsBanytimeBanxiousB	ambitionsBaidedBaffleckBadmiredB95B34B300B1994BzizekBzBwhitesBwayansBwardrobeBvoidBvocalBvintageBunsureBuniformB	underwearBumBticketsBtheoriesBtalkyBstellaBsteerBstanceBspineBsourB	sickeningBseveredB	seductiveBseasonedB	scoobydooB	schneiderBsandersBsaltB	reviewingBrememberingBrelatingBrealizationBquentinBpolishBplottingBpinBphonesBpenelopeBpassageBparticipantsB	parallelsBpainsB	originalsBoharaBoffBoccultB	obsessiveBnutshellB
noteworthyBnieceBnephewB	necessityB	mythologyBmisunderstoodBmissileBmathieuB	mastersonB
mannerismsBlipBlikeableBleatherBkellsBjuanBitquiteBinviteBinsistB	immigrantBhypedBhybridBhootBgroundbreakingBgrabbedBgoldieBghettoBfrontalBfreezeBfragileBfluidBflamesBfilthyBfeebleBfeatBfactualB	explosiveB	explodingBexpenseBexcusesBexcruciatingB	establishBerrolB	energeticB	enchantedBedithBdumpedBdumberBduBdiverseB
distractedBdilemmaBdenisBdemonstrateBdelightfullyB	delightedBdebtBcookieBcontrollingBconsiderationB
commitmentBcombsBcoffinBclichedBcindyBcharmsBchamberlainBcenaB
celebratedB
caricatureBburkeBbubbleBbrettBbrentB	breathingBbratBbleedBbittersweetBbellyBbegsBattendedBarrivingBarkinB	anthologyB	announcedBagonyBadaptionB	acceptingBaboundBaaronB1975B1953B1944BxfilesBwilderBwheelBwashedBwakingBupdateBupcomingB
unansweredB	ultimatumBturmoilBturdBtraceBtonguecheekBsparksBslugsBskilledBsixthBshellBsheenBsgtBseymourBscoredBscheduleBsaloonBsafelyBroughlyBrewardedBrescuedB	redundantBredneckB
rebelliousBrearBrationalBrandolphBrandallBpursuedBposingBposesBpleasingBplatformBplanesBpizzaBpiratesBpfeifferB
perceptionBpeculiarBpcB	obstaclesBmysteriouslyB
motorcycleBmoeBmedievalBmatesBlurkingBlunaticBlongestBloganBlionelB	lightningB
legitimateBlastlyBkrisBkoreaBkathleenBjulesBintroBintactB	instancesBinformativeB	inclusionBinaccuraciesBhooperBhiphopBhindiBhackmanBhabitBgwynethBgrandmaBglimpsesBglanceBgapBgameraB	furnitureBfranticBfoolishBeventualBelevenBeinsteinBeagleBdynamicsBdumbestBdougBdefiesBdeemedBdeedBdahmerBcutterB	criticizeBcornB
complimentBcomplicationsB
commandingBcliveBchavezBcapricaBcanceledBbusbyBbreastBbernsenBbcBaustenBauditionBarrowBarguingBanticipatedBannoyBambianceBallegedBajayB
aggressiveBafricanamericanBadrianBadmittedB1967B1943ByetiBww2BwrestlerB	whimsicalB	wellactedBwastesBwardenBvisitorB	vignettesB	viewpointBverbalBunstableBunderstandablyBuncannyBughBtunedBtrierBtravisBtomeiBtimmyBthirtiesBtashanBsylviaBswingingB
suggestingBsubgenreBstatingBstartersBstandoutBsimpsonsB	silvermanBsidewalkBsholayB
shockinglyBsherlockBshaggyBsergioB	scriptingB	screwballB	sarcasticBrussBrupertBrollsB	rodriguezBriceB
resistanceBrepublicBrepliesBramBradicalBqB
progressedBproductsBproducesBpredatorBporterBpoliticiansBploddingBphaseBowlB	overboardBomarBoldfashionedBneedingBnarratedBmurkyBminsBmiloBmeantimeB	marijuanaBmanipulationBjulyBjulietteBjulietBjerseyB	itobviousBiprettyBintentionalB
incidentalBhystericallyBhustonBherbertBhadleyBgutBguineaBgrooveBgraduateBginaBgiBgeorgiaB	gentlemenBfuzzyBfrogBfrightB	firstrateBfinishesB	fairytaleBexplodesBevokesBernieBentriesBenduringBelsaBeconomicBdustinBdukesBduelBdonevenBdocumentB	discussedBdidntB	deliciousBdaylewisBcrownBcowBcoolestBconfinedBcompositionBcmonBchucklesB	centuriesBcattleBcannesBblockbustersB	blandingsBbiblicalBbearingBawryBarrestBappliedBantonBansweredBangB	affectingBadditionallyBaccompanyingB21B	wholesomeBverdictBvariedBupstairsBtraumaBtoolBtonedBtokyoBthailandBtendencyBtapedBswedenB	suspicionBsurroundingsBsunsetBsummedBstumbleBsternB	stephanieBstationsBstakeBsmellBslowerB
similarityBshepardBshannonBshahidBservicesB	sentencesBseniorBseatsBscarfaceBriversB	revolvingB
resemblingBreplacementBrepeatsBrecoverBramblingBragingBpuppyB
possessionBpossessBpilotsB
phenomenalB	pervertedBperiodsBpennedBpauseBpathosB
optimisticBnbcBmossBmomentumBmisterBmessingBmaureenBlethalBlesterBleanBlayingBkinskiBkathyBjodieBjediBjeBitryingB	iprobablyBinvestigatorBinterpretationsB	intenselyB	imaginaryBhookerB	homicidalB
hobgoblinsBhintedBhayesBhatefulBhanzoBhahaBfuelBfortiesBflowerB
excellenceB	estrangedBemployeeBegyptianB	diversityB
derivativeBdepthsBdemilleBdegreesBdafoeBcycleBcourtesyBcookingB
conventionBcomaBcolmanBcollinsBcollectBcokeBclaudeBcirclesBchopsB	childlikeBcheersBcharacterizationsBcarmenBbustBbloomBblamedBbikiniBbikerBbarneyBbalancedBbackedBbachchanBavidBaugustBarrayB	antonioniBangieB	alexandraBachievesBabandonB1959B1948B1930BwidowedBvoodooBveteransB	unnaturalB	unfoldingBunBtrapsB	transportBtouristBtonesBtitularBthurmanBtailBsweatBsunriseBsubwayB
substituteBsubstantialBstuffedBsterlingB
statementsBspiralBspiderBsmashBskinnyBshocksBsheetsBsensualBseemingBscorseseB
scarecrowsBsatisfactionBripoffBriffBriderB	renderingB	remindingB	relevanceBrelentlesslyB
protectiveBprofessionalsB	premingerBpickupBperilBpaulineBpaintsBoverbearingBorganizationBordealBoprahBoffendBnovelistBnewcomerBnerveB	neglectedBmysticalB	murderersBmolBmasonBmartiansBmartianBmarisaBmarcusBmarcelB	madeleineB	macdonaldBmabelBlindseyBletdownBlennonBlaunchBkirstenBkeysBjoseBisraeliBinteriorBinjuryBinformerBindifferentB
incestuousBhuntedBhostelBhometownBheathBhayworthBhawnBgripB	graveyardBgacktBfriedBfratBfrancesBforgivenessBfiendBfeminineB
fassbinderBfashionsBfascistBfanaticBevansBencounteredBeagerlyBdwightBdunstBdriftBdonmissBdisabledBdetroitBdestinationBcubanBcrushedBcreekB	courtroomBcormanBconventBcladBcelebritiesB	cameramanBcainB	boogeymanBbitingBbenefitsB
beckinsaleBawaitingBampleBadvisedBabortionB1982BzorroByellBwormsBwashB	variationB	unusuallyBunnecessarilyBuneasyBunclearB	uncertainBtsuiBtrumanB	translateBtireBtideBthrustBtessBsuzanneBsurroundBsunkBsundanceB
sufficientB	submarineBstereotypedBsolvedBslimBsketchesB	skepticalBsinsB	sincerityB	shamelessBserialsBsensibilitiesBsenatorB	semblanceBselfindulgentBsecureBsectionsBseBschemingBsammoBruiningBroundsBromeoBrobbedBrevivalBresumeBrespondsBreservedBrelyingBrejectsBrehashB	reflectedBrazorBqualifyBpythonBpursuingBprotestBprologueBproceedB	preachingBpointingBpocketBpayoffBpattyB	obscurityBobrienB	obliviousBnivenBmyrnaB
monotonousB	monologueBmonksBmillsBmidgetBmeyerBmarilynBlopezBlensB
laboratoryBkidnapBkeanuBjuiceBjudeBjointB	johanssonBjarBiturbiBiteasyBinterviewedBindicateBimpliesBhumBhowlingBhostageBhauntBgypsyBgusBgloomyBgenaBgapsBgalleryBfundingBfreakingB	fortunateBforgetsB	followersBflowsBfleshedBfamedBfacilityB	extensiveBexploitativeBexplodeBdynamiteBdismissBdinerBcoreyBclunkyBclarityBchoirBchewBcheeringBcapBbutcherB
boundariesBborrowBblazingBbartB	arroganceB
apocalypseBalotBadmirerB	addressedB1992B1951ByougotBvirtualBvergeBvcrBvapidBunderdevelopedBturkishBtrustedBtroopersB	traumaticBtoxicB	throwawayBthatiBtestingBtautBtargetedBtakerBstrictBstabbingBsophiaBsnipesBsniperBsightsBsensitivityBsensibilityBseduceBseattleBsamuelBsalvageBruledBrourkeBrosenstrasseBrevolverBreverseBreportedB	replacingBreluctantlyBrejectBreeseBrealisticallyBraunchyBquantumBpsycheB
protectionBprophecyB	projectedBprankBpoppedBpetersonBparticipateB
outlandishBoliviaBobservationsBnuancedBnorthamBninjasBmoviemakingBmiraBmidstBmickBmcadamsBmarvinB	macmurrayBluthorBlucilleBlongtimeBlockeBliteralBlaunchedBlarsBitsadBinsomniaBinformsBilookingBignoringBiadmitBhostileBgoodingBgilliamBgiganticBgeoffreyBfrostBfoilBfileBfianceBfetishBfetchedB	festivalsB
favouritesBfartBfallonBfairnessBeyedBentranceB
enchantingBelliottBdrowningBdrawingsBdraggingBdividedBdistrictBdishBdaytimeBdarthB	customersB	curiouslyB
cunninghamBcrooksB
criticizedBcountingBcoopBconstraintsBconsequentlyBconfuseBconclusionsBconcentrationB
comparableBcommunicationBcoloredBcolletteBclooneyB
classmatesB	cigaretteBcheechBcharacteristicB	celebrateBcapacityB	cancelledBbuglifeBbrandonBbootsB	bodyguardBbiasBbennyBbeardB	backstoryBassureBassumesBartistryBarticleBarcBantiheroB	aestheticBadmitsBaceB
accidentalB51B1998B1960B1932B19B010B	worldwideBvalidBuninspiringB
unfamiliarBtoolsBtightlyBthoBthereoneBtherebyB
thereafterBsyndromeB	switchingBsurfB	superstarBsuckingBstilesBstadiumBstabsBstabBspoilingBsopranoBsnowyBslaveryBslamBshoeBshahBseussBsearchedB
scratchingBsatisfactoryBsatanicB	sasquatchBsanityBsaneBrollerBroboticB	robertsonBripsBreuniteBrespondB	remainderBrebelsBreaganBranchBprogressionB	programmeB
principlesBpreciseBpreacherB	practicalBpornographyB	policemenBplugBplotlineBpeckerBparodiesBpalmBorphanB	orchestraBnightmarishBmuniBmotelBmonicaBmoleB
melancholyB
mediocrityBmaskedBmansBmanagingBmaldenBmadisonBloBlinkedBlilBlandmarkBjustificationBjoBjigsawBjanBiwatchBittrueBirresponsibleB	inventionBinsertB
infinitelyBigonnaBidolB
identifiedB
idealisticBhardenedBhallmarkBgorillaBgirlfriendsBghostlyB	gatheringBfraudBframingB
fitzgeraldB	fishburneBfenceBevokeBernestBepicsBenglundBengineBeconomyBealingBdonseeBdominicB	distortedB
displayingB
disciplineBdespiseBdemeanorBdangerouslyBdamselBcreasyBcracksBcoworkerB
courageousBcorrectnessBconsciousnessBclayBcircaBchipBchargesB	caretakerB
captivatedBbyronB	butcheredBburialBblondellBblamesBbiopicBbenoitBbenjaminB
beforehandBbauerBbattlefieldBbatsB	bartenderBbanksBbaddiesBawardedBavoidsBassetBarquetteB	armstrongBanitaBamidB	ambiguityBaliB	abundanceBaboardB1963ByellsBwolvesBwoefullyB	weirdnessBweeklyB	warehouseBvirtueB
villainousBvillaBupbeatBunsympatheticB	unleashedBunderstatementBunappealingBturtleBtransparentBtrampB
traditionsB	toleranceBthreadsB	surrenderBsurfersBsupremeBsupermarketBsuperfluousB
structuredBstrainedBslyBsixteenBshieldBshBsexistBserumBscarlettBscarierBsandyBrunawayBrivalsBrivalryBrightlyB
retirementBresolveBrepresentingBrenoBregimeBredgraveBrealisesBreaBrampantBquintessentialBquestioningBpsychedelicB
protectingB	promotingBposeB	permanentBpepperB	overtonesBoutrageouslyBogreBoccupiedBobserveBobservationBnotingBmumBmistyBmerryBmeekBmeadowsBmaximumBmarryingB	maintainsBmaguireBloweBlampoonBkruegerB	kornbluthBknightsBkareenaBjoiningBisabelleB	irritatedBinvestedBintoBimpressionsB	imitatingBidealsB
highschoolB	harrowingBhalfhourBguardianBgovindaBglowBgibsonBgentlyBgeekBgarlandBgarageBfundamentalB	functionsBfodderBfleetBflashingBflagBfinneyB	finishingB	feinstoneBfailuresBexpertsBexcelsB	enigmaticBeducatedBecstasyBduhBdoyleBdomBdistinctiveBdistinctionBdiaryB
depictionsB	deliriousBdefyBdeedsBdallasBcrowdedBcrocB	creationsBcrashedBcounterpartsB
convenientBconsequenceB	consciousBconquestBconfinesB
committingBcolonyB	collectorBcodyBcoasterBclothBclinicBclimbsBchevyBcheerfulBcaperBcampingBcabBbreatheB	brazilianBboutBbordersBbookerBbonanzaBbingBbetweenBbetrayedBbelievabilityBbeersBbeckhamBbarbraBbadnessBbabesB	awfulnessB	awarenessB	automaticB	associateBappleB
antagonistBalarmBalaB	admissionBacknowledgeBacclaimBabuB250BzhangBwrightBwhereverBwesleyBvomitBvetBversaBvegaB	unwillingBuniformsBunhingedBtombBthroneBtheresomethingBtheodoreBtheatresBthanB	terrorismBtendedBtediumBsykesB
suggestiveBsuckerBsteamyBstaresBstardustBssBsorrowBsnapBsitcomsBsinksBsignificantlyBshoutBshotgunBshoreBsharksBshapedBsensationalBselfcenteredB	seductionBscriptwriterBscreenplaysBsarcasmBsammyBsaintsB
sacrificesBrussiansBruddBraidB	qualifiesBpubBprostitutionBprostitutesBpretendsB
preferablyBpolarB	placementBperverseBpaycheckBparrotBpairingBoverwroughtBovershadowedBoutsetBottoB
officiallyBoffenseBoctoberBnoticesBniftyBnerdyBnataliBnarrowBmyrtleBmustacheBmuslimsBmovieiBmissionsBmiddleclassBmaverickB	mandatoryBluxuryBlonerBlocaleBlistenedBlindyBlifelongBlibertyBlevyBldsBlatinoBkindlyBjanetBitniceBitmovieBitakeB
investmentBinterruptedBinsertedB	inheritedBinformBinexperiencedBihugeBhmmBhandicappedBhallucinationsBgrosslyBgrinBgrandparentsBgrandpaBgodardBglossyBgigBgesturesBgershwinBgeishaBgarfieldBfritzBfreedBforsytheBforbesBfastforwardBeverettB
entertainsBensueB	employeesB	emphasizeBeliB	elephantsBelectedBegyptBdukakisBdrownedBdrasticallyBdrainBdominickBdodgyB
distinctlyBdevotionBdeterminationBdestructiveBderivedBdellaBdecencyBdebraBdeannaBdaisyB
criticismsBcortezBcorbinBcorbettBconvictB	confrontsB	condemnedB	communismBcommendableB	combiningBclosureBcillianBcharacterisationB
censorshipBceilingBcarlosBcarfaceB
capitalismBburntBbrushBbrookeBboothBbondsBbatwomanBbashingBavengeBatticB
assistanceBapolloBantiBalliesB
admirationBachievementsBabroadB1957BzelahBwhoreBvivianB	virginityB	violentlyB	vigilanteBvengefulBurgencyB
upbringingBtrivialBtriggerBtravoltaB
transplantB
transformsBtownsBtolerateBtobeBtitsBtinaBthunderBthornB
temptationBtemperBtechBsustainB	surpassesBsuaveBstirringBsqueezeB	spotlightBsportingBspoofsB	spaceshipB
slowmotionBslewBslashersBsimplerBsighB	shootoutsBshoBshelvesBsheepBshadyBsarneBrustyBrohmerBricoBrhymeBremarkBreliedBrelaxedBreiserB	rehearsalBregisterB	reasoningBratioB	radiationBpropB
prejudicesBpredecessorsBpourBportionsB
playwrightBpitaBpigsBphoenixBpertweeBpathsBparksBparanoidBpansBoweBopenlyB	officialsBoblivionBnuanceBnotionsBninetyB
needlesslyB
nauseatingBmyraBmishmashBmeredithB	melbourneBmcdowellBmartinoBmanipulatedB	magazinesBmaeBmadsenBluzhinBluridBlombardBlistsBlinearBlightweightBletgetBlaserBlansburyB	languagesBkristoffersonBjaggerB	itamazingB
irrationalBintendBinformedBinfluentialBinconsistenciesBinadvertentlyB	iactuallyBhugBhmmmBhesBheatherBhealingBgruffBgrislyBgrendelBgreeneBgradyBgoatB	gladiatorBgeneticBgatheredB
gandolfiniBfurtherBfulfillBfrenzyBfarrahBfabricBexistingB
enormouslyB	efficientBedisonBedgesBduchovnyBdrummerBdreamingB	donbotherBdominateB	disregardBdisappointsBdiggingBdiazBdeskBdependB
denouementBdeckBdealersBdeadpanBdarklyBczechBcrossedB	coworkersB	conveyingBcontributesBconsumedB	connivingB	conductorB	comprisedB
compensateBcocaineBcoatBcloudsB	civiliansBchloeBcellsB
categoriesB	cannibalsBburgessBbuffyBbreakthroughBboobsBbitchyBbigfootBbetraysBbennettBbehavingBbeanB	backdropsBauthorsB	attendantBathleticBarnieB	annoyanceBadulteryB510B48B26B1958B150BzanyByarnBwwiBwovenBworryingB
witnessingB	willinglyBwhipBweeBvincenzoBvertigoBvalBursulaBunravelB
uncreditedBtruthsBtrickedBtremorsBtransportedBtasksBtakashiBtackleBsystemsBswitzerlandBswissBsurgeonBsubmitBsubduedBstinkB
stepmotherBsteamingBspontaneousBspectrumBspectacularlyBsociallyBsoberBsleptBsleeperBslaughteredBsitesBsiblingBshovedBshelterBshamelesslyBshamefulB	sensationBscarletBscandalBrussoBrizzoBriddenBrelaxingBredfordB	rebellionBrapidBquaintBpsychiatricBproudlyB	prolongedB	preventedBpresumeB	premieredBpredictabilityBpranksB
portugueseBpompousBplateBpistolBpeaksBpayneBpalsBovertlyB
ostensiblyBongoingBobservedBnorrisBnetworksBmutantsB	motivatedB
moonstruckB
monologuesBmockBmiraculouslyBmidwayBmeltBmarkedBmarinesBmarineB
manipulateBmangaB	magicallyBlureBlubitschBlorreB	lingeringBlabeledBkissesBkennyBkeelerB
kaliforniaBjurassicBjollyBjedB	interplayBintelligentlyBinnuendoBincreaseBincestBillustratedBillusionB
identitiesBialreadyBhunkyBhollandBhinesBherringsBheavensBheapBhazzardB
happeningsBhaleBgustoBgretchenBgretaBgiggleBgardensBgangsB
fulfillingBforrestBfloorsBflewBfixedBfanningBextraordinarilyBexplanationsBexaminedBexamineB	espionageBepitomeBechoesBdutiesB	donexpectBdivingBdiveBdirectvideoBdefiningB	defendingBcringingBcowardBcousinsB	corridorsBcontrolsB
contestantB	considersBcohesiveBchopBchokeBcedricBcalBbrunetteBbruckheimerBbridesBbonnieBbonBboardsBblessBbimboBbaldBautoBatlanticB	artemisiaB
antichristBaircraftBahmadBagainstBafghanistanBadvancesBadsBaccomplishmentBabominationB500B1955B1946BzuBzodiacBzatoichiBwronglyBwearyBwatcherBwarrantBwalmartBvolumesBvisceralB	villagersBvibeBunconsciousBtrendyBtraumatizedBtransitionsBtormentBtodaysBthugBthereofBteddyBtastyBswitchesB
successionB	stumblingBstripperB	stretchesB	stevensonBstatureBstarshipBspellingBspelledBsophisticationBsnippetsBslowsBsleepyBsimbaBsicknessBshrillB	showcasesBsealedBsciencefictionBsammiBrushesBrosemarybabyBripoffsB	restraintBrestlessB	receptionBraftBqueensBpunsBpriestsB	prevalentBpresidentialBpoppinsBpoliteBpokeB	pleasuresBplantsBplaguedB
photographBperspectivesBpercentBpenaltyBpeggyB	pavarottiBpamBpalestinianBpairedBpaddingBoverwhelmedBorlandoBoperateBnunBnerdsBmutedBmunchiesBmudB
moviegoersBmorganaB	monstrousBmixesBmechanicB	mcdermottBmccarthyBmarredBmarleneB
managementBmaintainingBloopB	lookalikeBliottaB
lieutenantBlicenseBlesbiansBlenoBkingsleyBkingsBkidnapsBjokingBjackmanBitchyBindulgeB
imprisonedBimitateB
illustrateBilB	iguessingBicyBiconsB	hungarianBhoganBhockeyB	hendersonBharronBharilalBharborBgreaseBgoshBgeniusesBgaspB
fulllengthBfrozenB
forebodingB	firsttimeBfiresBfinelyBferrellBfederalBfaintBfadedB	excrementBenhancesBemmyBelectricityBehBeggBeffortlesslyBedmundBdustyBdreyfussBdreamyB	dreamlikeBdownbeatBdopeyBdivisionBdisgruntledBdiscoBdietrichB	depardieuBdenverBdentalBdeliaB
dedicationB	deathtrapBdashBdarkestBdariaBdaisiesBcrossesBcrackerB	cowrittenBcontemplateB	concludesB
compromiseB	competingBclutterB	clockworkBclimbingBclientBchemicalBcheaperBchaoticBcarsonBcarpetBcarolineBburstsBburdenBbulliesBbuddingBbritneyBbrickBbrashearBbothersBborrowsBblokeBbitesBbillsBbertBberengerBbartonB	barbarianBballoonBaztecBauraB	astronautBartisticallyBarmorB	animatorsB	anchormanBanalyzeBallanBairingB	achievingBabstractBabsorbedB65B1931B101BzealandBwrathBworshipBwondrousBwitsBwinnersBwillemB
wheelchairBwbB	versatileBvaryingBvalerieBunsuccessfulBunconventionalBturgidB	torturingB	theremuchBtastefulBsymbolsBswordsB	superiorsBsubsequentlyBstrippedBstrainBstoltzBstimulatingBsorvinoBsmugBskippingBsizedBshrekBshoutsB
shoestringBshinyBsheilaBshaunBseriousnessB	scatteredBromanianBrodneyBrisksBreviveBretrieveBrendersBrelatesBrecreateBrapesBrantBrangingBrangerBrainerBprophetBprofileBpressedBppvBplummerBplayfulB
plantationBplacingBpiperB	perceivedBpenguinBparticipatingBpaddedBoutrageB	osullivanBoscarwinningBoptimismB
oppressiveB
oppositionBneesonBnearestBnatashaBmythicalBmurielBmourningBmostelBmorseBmondayBmoldBmockeryBmichealB
mercifullyBmeaningsBmcgavinBmarjorieBmametBlucioBlordiBlooneyBlizBlionsBlimpBletseeBlaysBkibbutzBkerryBjudgesB	judgementBjjBjerkyBjamBjaffarBjackassB	iwatchingBitwonderfulBirwinBirresistibleB	interpretB	interiorsB	intellectB	injusticeB
influencesB
increasingBincB
improvisedB	impendingB
impeccableBimhoBhypnoticBhungerBhopefulB	honeymoonBhiBherdBhedyBhectorBheavenlyBhansBhanBgroundedBgratingBgoodmanBgoldsworthyBgoersBglendaBgimmicksBgaysBgamutBgageBfochBfilmographyBfewerBfarewellBfanaticsBfadesB	exhaustedBexcessesBenduredB
encouragedB	embarrassB
eliminatedBearnsBdykeBdwarfBdrumsBdosesBdonletB	disastersBdillonBdiegoB
diabolicalB
deservedlyB	democracyBdelveBdeclaresBdataBcyborgsBcursedBcryptB
criminallyBcrawlBcowardlyBcoverageBcorkyBcontinuouslyB	consistedBconquerB	confirmedBconductBconcentratesBcompassionateBcollapseBcocktailBcockneyBclydeBclimateBclarenceBchristensenBchimneyBchewingBcheungBchenB
cheesinessBcensorsB
capitalizeBcambodiaBcallahanB	botheringB
borderlineBblissBblackieBbearableBbattlingBbaffledBbaddieBazumiBauteurBatrocityB
astronautsBappalledB
annoyinglyBalterBalienateB	admirablyB
adequatelyB1949B1920sBwokeBwieldingB	waterfallBwaitsBvoyagerBviscontiBviggoB
vietnameseBvaughnBunratedB	unnervingBunluckyB
undercoverBtuckerBtrumpetBtreatingBtouristsBtorchBthreatsB	temporaryBtablesBsweepingB	suspendedBsupportsB
supportiveB	subtitledBstrungB
strikinglyB	strangestBstonedBstarvingBspawnedBsparseBspadeBsoreBsolesB	societiesBsnatchBsnappyBsmoothlyBslipsBsleepwalkersB	signatureBshueBshinaeBsemiBsemataryBseinfeldBsealBscumB	satelliteBsaraBsansBsalesBrumorsBromaniaBrollercoasterBridersBrichlyB	revoltingBrerunsBrepresentativeBreneBregalB	recurringB	ravishingBrangesBquirksBputridBpsychologicallyB
proverbialBprolificBprofitsB	preservedBpremisesBpornographicBpondBpoetBplantedBpivotalBpicnicBpickerBphyllisBperceiveBpeersBpassionsBoverseasBoveractsBotooleBorgyBoptionsB	opponentsBoperasBoddballB	occurringBnotwithstandingBnormaBneoBnellBnailedB	moderndayB
moderatelyBmobsterBmindsetBmichelBmauriceBmaturityB
mastermindBmanufacturedBmandyBmaltaBmakeeffectsBmackBlyricalBlungBltBlorenBlocateBlimbsBlightlyB	libertiesBlawnBknivesBkiddieBkeitelBjanuaryBitstoryBiquiteB	intrusiveBinterspersedB
instrumentB	inhabitedBimplyBimmersedBihappyBidiocyBhustlerBhurryB	honorableBholtB
hitchhikerBhiltonBhightechBhelenaBhatingBharmonyB
hardboiledBhaltBgrainBghastlyBgertrudeBfussBflowingBfleeBflameBfieryBfayeBfableBexposingBexposesBexpandedBexpandBexhibitBestablishmentBentertainerB
engagementBellaBduryeaBdurbinBduffBdrifterB
dreadfullyBdorisBdistributedBdimB	dickinsonBdevelopmentsB	determineBdeniedBdeepestBdeclareBdaresBdaneBcynicismBcustomsB
creepinessBcradleBcowroteBcorporationsB	continentBconnorBconfirmBcondescendingBcollaborationBcockyBcoburnBcloudBchandlerBcelebratingBcbcBcasuallyBcassieBcaroleBcapoteBcandleBbrockBbritBbranchBboostBbombingBboliviaB	bloodshedB	bloodbathBblessingBblanksBbillionBbillingBbehavesBbathingBbastardBbasilBbashBbarnesBbackyardBatomicBateB	assassinsBapproximatelyB	anonymousB	announcesBanguishBalbaBadventurousBadaptB98B86B700B1964BwolfmanBwizardsBwitlessBwipeBweaverBwarholsBvotingBvirginsB	vanishingBusageBuptightBunimpressiveB
uneducatedBundevelopedBunderdogBtwodimensionalBtrentBtransferredBtilB	tigerlandBthinnerB	thereevenBtenantsB
tearjerkerB
talentlessB	sweetnessBswatBsuppliesBstudiedBstraightvideoBstealthB
standpointBstalksBspringsB	spreadingBspottedBspittingBspinningBspellsBspearsBsmittenBsmallestBsloaneBshermanBshapesBshaolinBseventhBsecludedBscreenedBsaviorBsailorBsackB
sabretoothBruntimeBruggedBrousingBrottingB	roommatesBrogueBrobbingBrobbersBrkoB
rightfullyBrewriteBreversedBreunitedBretainB	requisiteBreincarnationB
registeredB
recoveringBrecklessBrackBrabidBpuzzledBpursuesBproportionsBprogrammingBpreventsBprehistoricB	predictedB	practicesB
postmodernBplodsBpierreBphiloBpenBpazB	patrioticB
paperhouseBovertB	operatingBolympiaBoliveBoffsideBnunsB
neighboursBneglectBnavalBnapoleonBmuscularBmontagesBmonstrosityB	monasteryBmisfireBminingB
millenniumBmentorBmatchingBmastroianniBmarathonBmaidenBmadmanBlethopeBlegionBleapsBlargestBlangBlamasBkramerBkordaBknockingBkneesBknackBkindnessBkilmerBjoshuaBjockBjanitorBjamesonBitfunBitdefinitelyBiowaBinterpretedBintellectuallyBinspiresBinsignificantBinsanelyBinhabitBinducingBimplicationB	imaginingBillustratesB
iconcernedBicomeBicebergBhurtingBhugoBhousingBheritageBhenchmanBheiressBhardestBhandyB
hammerheadBhamillBgymBgrievingBgrailBgossipBgoodnaturedBgiftsBgeeBgaloreBfurBfugitiveB	frenchmanBforumBflippingBfleetingBfightersBfierceBfiascoBfearedBfawcettBfantasticallyBfamiliarityB
expressingB	expressesBexhilaratingBewanBevolvedBerBepisodicBenthrallingB
enthralledBengineerB
encouragesB
emmanuelleBelevateB
electronicBeddyBechoBearliestBdunneBdrainedBdodgeB
documentedB	dimwittedBdigressBdevilsBdetractsBdetachedBdenyingBdcBdangersBcustodyBcrowdsBcrouseBcrennaBcreepsB	crazinessBcontactsBconfrontingB
conflictedBclawBcinematographicBchatBcathyBcastroBcastedBcarlyleBcaptB
candidatesBbullyingBbucketBbrinkBbrennanB
breathlessBboogieBbondingBbombedBblindedBbgradeBbensonBbelleBbadassB
babysitterBawakensB
atrocitiesB
assortmentB
associatesBashBarizonaBaristocraticBarchitectureBapplauseB	apologizeB	apologiesB
apartmentsBanxietyB	amusinglyBamuseBalternatelyBalmightyBalliedB
alcoholismBaimeBacknowledgedB2009B1954B1942B1938BzoomBzeniaByearningBwuBwelchBweirdoBwaiterBvulnerabilityBvivahBvisitorsBvinnieBvincenteB
vaudevilleB
unemployedBtruthfulBtriadBtraveledBtraitorB	townsfolkBteamedBtangoBtackedBswayzeB
subtletiesB	stupidestBstrawBsteppedBstagingBsmashedBslugBskippedBshrinkBshowtimeBshockerBshenanigansBsheetaB	shatteredBshadowyBsessionsBsardonicBsailorsBsaifBsabuBrumorBripleyBrevelationsBrestsBrescuesBrenderBregretsBredeemedBrecruitB	recogniseBrecipeB
profoundlyBpresumedB
practicingBpotentBposhBpooBpokingBplausibilityBplatoonBplanetsBpinnacleBpimlicoBpiaBphiladelphiaBpetsBperlmanBpausesBpattonBpatchB	paragraphBpalpableBpaletteBoutdoorB
ossessioneB	orphanageBorgansBorcaBopusBonesidedBoldsBnuttyBnumbingBnovemberBnortonBninetiesBnielsenBneverendingBneutralBnachoBmuddyBmpaaBmonroeBmmBmjBmiraclesBmidlerBmichaelsB
metropolisBmeanspiritedBmasturbationBmasseyBmarxB
marginallyBmantegnaBmanicBmagnoliaBloudlyBloonyBlocksBlockerBlizaBletstartBleopoldBledgerBlayeredBlanzaBlangeBlambsBkentuckyB	katherineBjoviBjoannaB
itsupposedBitrealBitellBislamBirsBinstrumentsBinsectsB
inherentlyB	indicatesBincarnationBimpressivelyBhumphreyBhornBholidaysBholdenB	historianBhiringBhickockBhgBhesitateBhelmetBheirBhealBharrietBharkBhairedBguruBguevaraBgraffitiBgoofsBgolfBgoingsBgleeBgellarBfunkyBfreneticBfreakedB	frameworkBflorianeB
flamboyantBfinnishBfinchBfiennesBfencingBfelliniB	fathersonB
farnsworthBextremesB
expressiveBexistentialBexconBexceedinglyBewoksBevolveBenvironmentalBensuingB	empathizeBelliotBelderBebayBduranteBdrumBdraftBdowntownBdownsideBdownfallBdistributorsBdistributorBdiscussionsBdisconnectedBdigsBdifferB
devastatedBdesolateBdaniBcurtainBcurrieBculkinBcuesBcopingBcontrastingBcontendB
consistingBconroyBconnollyBconnieB
confessionBconcentratedBcompoundB
complementB
complainedBcomparesB
companionsBcoincidencesBclumsilyBcloakBclimaticB
classifiedBchoreBchefBcheatBcharityBceremonyBcensoredBcelesteBcarusoBcaptiveBcannedBcampsBbtkBbritsB
boyfriendsBbotchedBboilsBblessedBbleedingBbathtubBbarkerBbagdadB	avalancheBassociationBassistBarcsB	arbitraryBapprovalB
apprenticeB	answeringBanistonBanchorBamokBallisonB	allegedlyBaielloBadoptB	addressesBadaptingBactionpackedBabhayB8thB55B400B27B1937B	zabriskieByouthinkBwiresBwhackedBwavingBvowsBvotersB
voiceoversB	videotapeBvetsBveraBvanishesBusherB	upsettingBuntrueBunremarkableBunforgivableBunfairlyBtypecastBtripsBtransvestiteBtransformersB	transformBtoeBtintinBthroatsBtheoBthankfulBtepidBtentBtensionsBtellyBtanksBsybilB	surroundsB
supportersBsuperpowersB
subversiveB	stylisticBstudBstoicBstillsBsteppingBstalkB	staircaseB
speechlessBsoullessBsooooB
somethingsBsneaksBsmarterBslutB
slowmovingBsleuthBslappingBsinginBsimplestBsilkB	shootingsBshatnerBshakesB	sentencedBseducedB
sacrificedBrunmillBrubBrosannaBrocketsBroadsBrewindBretainsB
restrictedB	resortingBrequestB	rejectionBrecommendingBrecallsBraptureBraoulBrantingBquotingB	qualifiedBpunishedBpukeBproneBprogressivelyBpreparationBprefersBpowsBpopeBpokesBplottedBpbsBpatternsB	passengerBparticipationBpangBouttaBoutsiderBoutsBoutlawBoutcastBounceBorientedBoperaticBoneillB	offspringB	offeringsBnoamBnanaBmyriadBmoranBmissouriB	misplacedBmenuBmelindaBmeasuresBmatteiBmanorBmanchuBmalcolmB
maintainedBmacbethBmacBlizardBlinBlillyBliliBliftsBlawyersBlanaBkeyboardBkaufmanBkamalBjoyousBjerksBivyBitmuchBitlongBitaliansBislandsBirisBinvestB
intestinesBintegralBinsultedB
instructorB
infectiousB	increasedBinchBimpulseBimmoralBidisappointedBidealismBhooverBhoodsB
historiansBhispanicB	hindsightBheroismBharpBharlemBhairyBguidedBguardedBgripsBgremlinsBgreatsBgravesBgracesBgiovannaBginoBgetawayBgarciaBgameplayBfranchotB	footlightBflipBfleaBflaviaBflareBfathomB	expertiseBexaggerationBeppsB	emptinessBemploysBemilBemergedBelishaB	eliminateBeleganceBeleanorBeditsBdwBdreamedBdogmaBdistinguishedBdialB	degradingBdeclaredBdeborahBdanningBcunningBculminatingBcroweBcrowBcropBcrookedBcowriterBcountedBcosB	convertedBconfederateB
conceptionB	complainsBcommandsB	colourfulB	colleagueBcolemanBcoarseB	classroomB	chocolateBchockBchesterBchainsBcelieBcautionB
carlitowayBcarlitoBcarelessB
calculatedBbyrneBbuttonsB	butterflyBbustedB	broderickBbrawlBbraveryB	braindeadBboyishBbloodthirstyB	blackmailBbillieBbetsBberserkBbelieverBbeetleBbeefBbaxterB	bathshebaBbagsBbackingBazariaBastuteBastonishinglyB
aristocratBarcherBaptlyB	apartheidBanniversaryBamberBamateursBalbumsBalainBaimsBafricansBadministrationB
addressingBacademicB
abominableB36B1935B11thByaddaByachtBxicaBwwfB	wrenchingBwrayB	wolverineBwitherspoonBwisecrackingBwheelsBweseenBwelldevelopedBwateredBwarningsBwaiBvicBvaultBvarmaBvacuousButilizedBunwittinglyB
untalentedB
unfinishedB
undertakerBuncoverB
unbearablyBturturroB
transcendsBtownspeopleBtowelBtoroBtoppedB	tomlinsonBtoesBtissueBtheftB	thatrightBtestedBtechnologicalB	surrogateB	surpassedBsuperlativeB	summarizeB	struggledB
stretchingBstrangeloveBstapleBstairwayBstadenB	sprinkledBsplashBsparedBsortaBsocietalBsmarmyBslaterBslackB	skywalkerBsignalsBshirtsBsheridanBshawnBsexesB	setpiecesB
sentimentsBselmaBselfconsciousBseasBscrewingBscreamedBscarredBscantilyBsacredBrockerBrobbieBroachBrigidBreverendBresurrectedB
republicanBreplyB	repellentBregainBrefusingBrefundBrefugeBreeksBrecruitsBrebeccaBraoBraidersBpuzzlingBpuerileB	prototypeB
pronouncedBprofitBpreteenB	positivesBportmanB	pervasiveBpermanentlyB	patriarchBpartnershipB	partitionBparisianB
overweightB	overnightB	outburstsBoutbreakB
orchestralBopponentB
operationsBoneselfB	observingBobsceneBntBnostrilB	northwestBnintendoBnewhartB	mysticismBmutatedBmuscleBmraovichBmosesBmockingB
mismatchedBmisfitsBminesBmeatballB
marvellousB	marriagesBmarketedBmadlyBmaBlynnBluredBlumpBluiseBloweredBlocalesBllB	librarianBliarBlevantB	latenightBlapBlamarrBladB	kusturicaBkerrBkeeperBjoysBjeopardyBizzardBirvingBironsBinventBinterminableBintercutB
integratedBinsecureBineffectiveB	indulgentBindifferenceBinconsequentialBincompetenceB	impressesBimplicationsB
immigrantsB
illiterateBidefinitelyB	hypocrisyBhunkBhoustonB
housewivesBhorizonBhoneyBhilaryBheatonB	heartlessBhaydenBhawkBhareBguidanceBgripeBgravityB	goodnightBgestureBgarneredBgainingBfundsBfryeB	footstepsB	fireworksBfilterBfiguringB
fictitiousBfeaturelengthBfearlessBfauxBfannyBexudesBexistentBexhibitsBevolvesB	evocativeBeustacheBethelBescapistBernstBequalsB	eponymousB	enjoyablyBendeavorBelmerBdriversBdrippingBdownloadBdopeB
dominationB	documentsBdockBdisdainBdisappearingBdirectorwriterBdenseBdenialBdemonstrationBdemographicBdemandedBdeluiseBdecemberBdeathstalkerBdaleBcruzBcrummyBcrookBcristinaBcrispinBcrassBcounterpartBcoppolaB
continuousBconnellyBcongratulationsBcompositionsB	componentBcomplexitiesBcompetitiveBcommunitiesBcommentariesB	comicbookBcoloniesBcollarBcoenBcircumstanceBchubbyBchoreographerBchecksBcheatsBchaptersBcentBcampersBcaesarBbuscemiBbumBbradfordBboxesBbouncingBboozeBbogdanovichBboastBblurredBblinkBblendsBblendingBblaxploitationB	bizarrelyBbicycleBbelongedBbehalfBbeaverBbeansBbassBbasketBbarrBbarmanBballroomB	backwoodsBauntsBariseBarchiveBamoralB
alienationBalamoB	afterlifeBadvertisementB	adulthoodBadoredBadelaideB	actualityB
aboriginalB88B7510B43B10000B
youngstersByeaBwrongedBwinstonBwinsletBwillardBwhoaBwhippedBwellcraftedB
waterfrontBwarfareBwagonB	vulgarityBvonnegutBviennaBvernonBvenomsBvelvetB	unnoticedBunnamedBuniversallyBuniquelyB	underusedB
undertonesB
travellingB
tournamentBtinBtimelineBtighterBthreatenBthereinB	therapistBtextureB
terrorizedBterrainB	telephoneBtelegraphedBtangledBtalkieBsyncBswiftB	supremacyBstupidlyBstreakBstrayBstirBsterileBstakesBspoiltB	spectatorBsordidB
sophomoricBsolvingBsnobB	smalltownBsmackBslobBslippedBslashBskimpyBskeletonB	shortenedBshearerBshaqBshaneBshakespeareanBseasideBschemesBscarcelyBsaddlesBsaddestBrratedBrosieBrolandB
retrospectBretreatBresurrectionBrestoreB
reportedlyBreplayBrenownedBreloadedBrelishB	religionsBrefinedBreelsB
recreationB	recreatedB
recognizesB
recognisedBreckonBrarityBrapingBpuriBpunksB	punchlineBprovokeBprospectB	promotionB	privilegeBprimalBprestigiousBpredicamentBpreachBprayingBpostproductionBpostmanB	positionsBponderBpollackBployBpillsB	personnelB	perfectedBpenisBpenchantBpedroB
patriotismBpalermoBowningBorientalBorganicBopposingBolympicB
occupationBobstacleB	notorietyBnoirsBnoahBnewcombeBnevadaBmythsBmotoB	mortensenBmorgueB
monumentalBmemoirsBmeganB
meditationBmeasuredBmcshaneBmcgregorB
masterworkBmarleyBmaritalB	mansfieldBmanosB	machineryBlotrBlogBlistingBlectureBlaundryB	launchingB	laughloudBlaraBkrishnaBknoxBkatsuBkaliBjewelryBjewBjeepB
itprobablyBitclearB
itactuallyBisabelB
invincibleBintruderBinsistedBinheritanceB	ingenuityBinfantBigorBideologyBhumiliationBhumaneBhottieBhostsBhooksBhivBhenchmenBheartilyBhawaiiBhartmanB	hardshipsBhappierBhamsBguinessBgrumpyBgovernmentsBgothBgoddessBgloveBgladlyBgilliganislandBgazeB	fulfilledBfrickerBfreelyBformerlyB
forgivableBfloatBfleeingBfirefightersBfinanciallyBfearingBfatefulB	extensionBexgirlfriendB	exclusiveBethicsBessayBepidemicBenlightenmentBenlightenedBengagesBeggsBdugBdrippedBdominantBdistastefulBdiscernibleBdimeBdiBdevganBdevBdernBdenmarkBdenchB
democraticBdefinesBdebacleBdarlingBdancedBdaftBcriticizingBcriteriaBcringedBcowboysBcostelloBcornersBcontradictionBcontemplatingBconnectsBconfirmsBcompetentlyB	coherenceBclubsBcircuitBchowBchalkBcavemenBcatastropheBcatalogBcasselBcarnivalBcapsuleBcanvasBcalvinBcahillBcafBbumpBbubbaBbryanBbrashBbrainwashedBbozzBboardingBblendedBbishopB	bickeringBbethBbeauBbavaBbaseketballBbananaBbackwardB	awkwardlyBavengerBautisticBatwillB
attributesB
attributedBatopBaspirationsBarrangementsB
armageddonBarenaBarabicBannualBannoysB
animationsBandreaBandieBanaBalluringBallegoryB8510B6thB64B610B1966B18thBzoomsByodaBxmenBwimpyBwillyBwildlifeBwidowerB
wellingtonBweedBweavesBwarpedBwandaBwaltersBwalletBvh1BveniceB	venezuelaB
variationsButteredB
unfaithfulBtwentiesBtrinityBtrickyBtribulationsBtreyBtrexB
trelkovskyBtrashedBtransylvaniaBtrancersBtracesBtowBtoolboxBtollBtimedBthumbBthorntonBthematicBthemB
tendernessBteaseBtaglineB	swordsmanBswellB
sweetheartBsuspiciouslyBsufficientlyB	successesBsubconsciousBstressedBstrappedBstoweBstorytellerBstitchesBstereotypingB
stepfatherBstalwartBsplicedBspeedingBspeakersBspeakerBspacesBsohaBsofiaBsnapsB	smugglingB
smallvilleBshopsBshiftingB	shawshankBshackB
separationBsenBselfabsorbedBsegalBschwarzeneggerBsaxonBsaviniBsabotageBrudyBrosesBromyBroamingBriskyBripperBrhymesBrevisitBretroB	retellingBrestrictionsBrefugeeBreflectionsBrecapBrathboneBrankedBrancidBrailroadBradioactiveBradarBpurseBpuristsBpullmanB	propheticBpromotionalB
projectionBproblematicBprintsBpremierB	pregnancyB
powerfullyBpostapocalypticBposedBplumpBpinnedBpianistBperkinsB
percentageBpazuBpartialBparsifalBpanahiBozzyBowedB	outsidersBomB	offendersBobsoleteB	norwegianBnoonBnasaBnarcissisticB	moustacheBmormonsBmonotoneBmonitorBmobstersBmisogynisticB
miscastingBminionsB	miniatureBmillandBmercilesslyBmcintireBmcbainBmaniacalBmagnumBlucBlovinglyBlossesBloosesBlentBleiaBlambertBladenBkeiBjeanetteBjaneaneBiwillingBivanBitwellBittrulyBitsortBitrareBitlittleB	ithinkingBitfilmBitdifficultBitalwaysBinvestigatesBinterventionBintellectualsB
innovationBinjuriesB
infidelityBincorporatedBimpersonationBimaginationsB
humiliatedBhonourBheydayBhewittBheroinBheresBhaywardBhallamBhackensteinBgungBgunfireBgraphicallyBgracefulBgrabbingBgovernorBgospelBgooBgoebbelsBglancesBglamourBgilBgeekyBgamblerBgadgetsBfulfillmentBfrontsBfriendshipsBfreshmanBfrancoisBformalBfluffyBflingBflemingBfistsBfiremenBfinemanBfinanceB	filmtitleBfilmicBfernandoBfeistyBfavoursBextravagantBexternalBerraticBerikB	engrossedBenforcerBemployB	elisabethBeldestB
effeminateBeaterB
earthquakeBearningBdupedBdungBdumpsBdrownBdrawbackBdoesntBdisturbB
distraughtB	discardedB
dimensionsB	dignifiedBdiamondsBdelvesBdeformedBdaphneBcybillBcramBcostnerBcontentsBcontemporariesB
consummateBconceitBcompromisedBcomplimentsB	committeeBcommentatorBcommandoB
collectingBcoincidentallyBcoastalBcoalBcliffordBcleanerBcherishBcarlisleBcarefreeBcarbonBcapabilitiesBcannibalismBcancelBcafeBburrowsBbsBbrassBboobBbooB	bombasticBblaineB
biologicalB	belongingB	behaviorsBbaronB	backstageBbackboneBaxBautobiographyB	attackersB
astonishedBassumptionsBassortedBasiansBanalBamiableB	aimlesslyBactorsactressesBacquireB	accompanyBabductedBaagB1941B180ByuppieByankeeBwryBwroughtBwrapsBwormBwoefulBwiserBwipesBwillsBwickerBwickedlyBwhomeverBwhereinBwellmeaningBwelcomedBwasntBwanderedBwallachB
vocabularyBvikingsBverveBveronicaBverballyBveersButteringButmostBunsatisfiedB
unexcitingB
uneventfulBuncertaintyBtyingBtroupeBtrojanBtriumphsBtribesBtraitB	tragediesBtossBtorsoBtomatoBtillyB	throwbackBthinlyBtherereallyBthereplentyB	thanklessBthaiBtextbookBtensBtearingBtalespinBtaintedBtacklesBsydowBsusannahBsullavanB
succeedingBstrattonB
storylinesBstarletBstableBsrBsprayBspecialsBsparkleBsorceryBsomeonesBsomberBsolarBsmBslapsBslangBslackersBskipsB
skillfullyBsingularBsinglehandedlyBsinghBsimoneBsignalBsiegeBshtickBsheetBshadeBsesameBserviceableBscorpionBsavvyB
saccharineBropesBromanoBrobocopBroaringBringwaldBricherBrevolveB	resurrectBrestorationB
respectfulBresourcefulBresearchingB
researcherBremovingBremorseBremakingB	relegatedBreginaldBravingBravenBrapistsBrajpalBquincyBpupilsBpunchedB
proportionBprogressiveBpreserveB	precisionBpoweredBpouringB	ponderousBpioneerBpimpBpicturesqueBpervertB
perversionBpersuadeB	perpetualBperkyB	perditionBpawnBpatriotBpastorBpannedB	palatableBoutlookBorganBoneoneBolanBnoviceBnosesBnickyBneonB
narrativesBnannyBnamingBmunroB	multitudeBmphBmountBmodineBmindnumbingBmeyersBmeterBmetaphysicalBmeetingsBmcmahonBmayaB	matuschekB	materialsBmasqueradingBmashBmanneredBmagnificentlyBlusciousBlongsufferingBlivBlistenerBlinksBliedB
lesbianismBlegallyB
leadershipBlayerBkrellB	knoxvilleBkinkyBkiddiesBkeystoneBkayeBjunkieBjuicyB
journalismBjaffeB
itterribleB	itperfectBitcertainlyBisaidBironsideB
invitationB
invariablyBinterferenceBinteractingBinstrumentalBinjectB
ingredientB	incessantBinbredB
impossiblyBimpersonatingBikiddingBigettingBigetBhuttonBhorrorthrillerBhomewardBhighlightedB	hideouslyBhicksBhickB
hesitationBhereinBheartwrenchingBhardworkingBhammingBhabitsBguzmanBgunfightBguiseBgroovyBgroceryBgrandeurBgrammarBgoofBgleasonBgalsB
formidableBfolkloreBfinlayBfilmendBfilesBfellowsBfckBfarcicalB
fabricatedBeyeballsBexwifeB
explicitlyBenforcementBencouragingBembarksBembarkBelusiveBedwardsBdudesBdruggedBdrossBdrillBdresslerBdreadedB
dramatizedBdownwardBdonknowBdomainBdistinguishB
disserviceBdiskBdisappearanceBdinocrocBdigestBdepravedBdenholmB
decorationB	deceptionBdeceitBdecapitatedBdanzaBdakotaBcylonsBcursingBculpritBcruellaBcoyoteBconsumptionB	constructBconsistencyB	confessesBcolonialBclonesBclintonBcleanedBchicoBcharleyBchangBcementBcavesBcavalryBcatalystB	cassandraBcarrierBcanonBcalibreBburstingBbumpsBbullshitBbuffoonBbronteB	boxofficeBboresBbonhamBboltBbethanyBbernieB
believablyB
beginningsBbeeryBbeenBbeadsBbasicsBbarnBbalconyBaskeyBarousedBarguedBarchieB	applaudedBaplombBantBanchorsB	allusionsB	alligatorBagnesB
aggressionBafterthoughtB
adrenalineBadoptsB
acquaintedBablyBabbotB5thB1962B1956B1928B	zetajonesByuznaByikesBwyomingBwtcBwrinkleBworriesB	wodehouseBwashingBwaryBvirtuesBvipulBvaryBvanishedB	vancouverBvampB
upperclassBunwantedBunquestionablyBunpretentiousBunimportantBungarB	twentiethBtropicalBtrishBtransformingBtransformationsB
tragicallyBtraditionallyB	toleratedBtogarBtiringBtipsBtickBtibetB	threesomeBtheresaBtestsBteriBtempestB	televisedB
surrealismB	submittedBstunkBstrivesBstrickenB	stranglerB	strangledBstrandsBstemsBstarrB	squeamishBspunBspoofingBspawnBspadesBsolidlyB	socialistBslotBskiesB	sidekicksBsicklyBshookBshamblesBshaftBshabbyBsfxBsettlesB
separatelyBsearchesBscriptwritersBscrewsBscoringB
schumacherBschtickBscenicBscaliseBsantBrudolphBrosemaryBrochonBritualsBripeBrhysBretreadBretireB	responsesB	resembledB
researchedBrescuingB	repulsionBrepriseB
repressionBrepairBrentsB
reinforcedBreconciliationBreactsBrainbowBraiderBquipsBquartersBpurvisBpulseBpryorBprintedBpretensionsB	precursorBporkyB	ponderingBpoliciesB	poignancyBpjBpitsBpineBpidgeonB
pickpocketBphrasesBphilippeBpesciBperuvianB	peckinpahBpassiveBpassagesBpartyingBparoleBpardonBpaintersBoverusedBoverheadB
oppressionBonenoteBonealBomegaBoaklandB
noticeablyBnorikoBnoraBnomineeBnicheBneillBnausicaaBnashBnadiaBmoodsBmonaBmodelingBmistBmisfitBmischievousBmisadventuresBmerrillBmerkB	mercilessBmendesBmcgovernBmcclureBmcBmatadorB	masculineBmarvelouslyBmarshalBmarquisBmarkingBmarinaBmaradonaBmajesticBmaddyBlupinoBlumiereBlowrentBlornaBlorenzoBloreBlordsBlogoBloggiaBlithgowBlingerBlinerBlilaBlightenBleonardoBlengthsBlassieBlandlordBlandladyBlambBlabourBkrigeBkikiBkhouriBkazaamBkatieBkariBjumbledBjudiBjournalistsBjayneBjafarBjabbaBitsimpleBitryBitpityBiraniBinventorB
interwovenBinterviewingBintendsB	insistingBinnateBindyB	increasesBincorporateBinclinedBimprovesBimposingB
impeccablyBilkBidyllicBiagoB	hunchbackBhumiliatingBhubbyB
homophobicBhitchBhistrionicsB	hillbillyBhelmBhelicoptersBheelBheartyB
headstrongBhaircutBhailedBhaggardBhackingB
gyllenhaalBgutterBgumpBgullibleBgrindBgriffinB	graduatedBgojoeB	girlfightBgigglingBgigglesBggirlB	geraldineBgeraldBgeeksBgarsonBgardnerBfurryBfrostyBforeheadBfondnessBfoggyBflopsBfloodBflirtingBflesheatingB
flawlesslyBfetchingBferryB
featuretteBfaultyBfartingBfarrellyBfanfanBfakedBeyebrowsBextendBexcessivelyBestablishesB
escalatingB	eroticismBericaBepilogueBenvelopeB
employmentBemotionlessBelevatedB
elementaryB
effortlessBeasiestBdungeonsBdivaBdittoBdisposalBdispleasureBdiseasesB
disabilityBdirectorcutBdictatorBdicaprioBdeviousBdevilexperimentB	detailingBdescendsBdepartmentsBdepartedBdenominatorBdemiBdelonBdeftlyBdefenceB	decoratedBdebtsBdarrylBdahlB	crouchingB
criticallyB	creepiestBcrackedBcouncilBcottonB	corruptedBcontinuationB
connectingBcongratulateBconcreteBcomradesBcomprehensionB
communistsBcommentatorsBcoltraneB
collapsingB	collapsesBcolbertB	clevelandB
cigarettesBchvezBchoppingB	chinatownBchewsBcherylBcharacterizedBchaneyB
challengerBchadB
ceremoniesBcasaBcarrB
capitalistBcannibalisticBcaneBcandlesBburyBbureauBbulliedBbruteBbrothelBbriskBbrighterBbretBbreckinridgeBbomanB	bloodlessBbloodedBblaBbinocheB	bigbudgetB
bewilderedBbetaBbellsBbehavedBbeeBbedsBbangingBbafflingBavailBaustrianBattractsB
attachmentB
assumptionBashrafB
articulateBarrowsBarisesBapprovedBappetiteBantidoteBanakinBallureBalistB	alienatedBalarmingBakiraBairlineB	agonizingBadvertisementsB	additionsB	addictiveBaccusationsBaccompaniesB44B32B20sB1965B1952B1947BzooBzoeBzeldaByvonneByuckByouthsBwreakBworldlyB
williamsonBwideeyedBwhodunitBwhipsBwellerB	wastelandBwarrantsBwarnersB
volunteersB	volunteerBvesselBvenomBunstoppableBunknownsBunderwhelmingBundemandingBuncoversBuncompromisingBuncommonBunbeknownstBtyroneBtrunkBtribalB	trappingsBtorturesB	todeskingBtobiasBtimelyB
threadbareBthemedBterrorizingB
tendenciesBtempoBtemperatureBsyrupBsweepsBswayBswansonB
suspicionsBsurferBsuppliedB	sumptuousBsultryBsuburbsBsuburbiaBstubbornBstrattenBstoogeBstiflerBstereoBstefanB
squanderedBspurBspoutingBsoilBsocksBsockBsmirkBsmashingBsmashesBslayerBskaterBsixtyBsigningBsierraBshunnedB	shriekingBshooterBshesBshaktiBshakenBsexismBseminalBseedsBseducingBschindlerlistBscaringBscanBsampleBsagetBrvdBrushingBroscoeBrootedBrobsB	righteousBriflesBridiculousnessB	reworkingBreveredBretributionB	resonanceB	reprisingB	reportingBrennyBreliveBregularsBrefrainBreformB	recaptureBreactingBraulBrankingBramonBrallyBrailwayBquotableB
questionedBquartetBpuddleBprowessBprotocolBpropositionBpromoBprofessionallyBprofessionalismBprizesB
preventingB
pretensionB	pressuresBprecededBpowBponyB	plentifulBpitchedBpinjarBpiercingBphilippinesB
persistentB
permissionBpeasantBpaymentBparkedBpanacheB	pakistaniBoveractBoutputBoutletBoutlawsBorientationBohioBoffsB	nonlinearBnodsB	newcomersB	negativesBneedleBnatBnahBmysticB	mutilatedBmuggingBmotifBmoritaBmordridBmodicumBmoderateBmindnumbinglyB
microphoneB	meteoriteBmelvinBmcnallyBmatineBmansonBmanlifeBmanipulatingBmanhoodBmahoneyB	magnitudeBmaceBluresBluluBludicrouslyBlowlifeBlowbrowB
lovemakingBlouqueB
livingstonBlistensBliquorBletmakeB	letforgetBlestBlearntBleaguesB	labyrinthBknightlyBkissedBkattanBjumpyBjosieBjessieBjerichoBivoryBitstillBitratherBitoldBitbasicallyBissuedBinvitingBinterrogationBinsufferableBinsectBinnBinheritB
infatuatedB	indemnityBincomeB	improvingBimposedB	illusionsBileaveBidleBidaBhysteriaB
hypnotizedBhitokiriBhikingBhawksBharperBhardshipB	haphazardBhansonB	hamfistedBhallwaysBhacksBgwynneBguidesB	guerrillaBguerreroBgroanB
grindhouseB	greenwoodBgratedB
graduationBgownB
gorehoundsBgopalBgoodheartedBglovesBglorifyBgloomB	gleefullyBgenitalsBgardenerBgannonBgammeraBgamingBgailBgabbyBfutileBfundamentallyBfundBfrustratinglyBfrightenBfrailtyBfortB	foolishlyBfloydBfloraBflipsBfleesB	fishermanB	fireplaceBfinancedBfidelityBfeminismBfeedsB	favorableBfascismBfakingBfaheyB
exploitingBexperimentingBexcusedB	exchangesBeskimoBerrollBenticingBensuresBemergingB	emergencyBeloquentBeliaBelectronicsB
electricalBeducateBdwarfsBdunnoBduncanBdrollBdownerBdoubtfulBdormBdonworryB	dominatesB	docudramaBdisillusionedBdiscountB	digitallyBdiffersBdiceBdialectBdevosBdevilishBderiveB	dependentBdelightsBdegradationBdecrepitBdamBcynthiaBcultsBcrowningBcromwellBcrawlingBcravingBcountessB	costumingB	copyrightBcoolnessBconvertBconvenienceB	contrastsB
contrastedBconquersB
conferenceBconcentratingBcompilationBcommonplaceBcommandmentsB
comfortingBcometBcobraBclunkerBclosesB
clevernessBclearerBclaustrophobiaBchouBchomskyBchillerB	championsB	caribbeanBcargoBcapraBcanalB	cambodianBcalamityB	burlesqueBbudgetedBbrowsingBbreathtakinglyBbraBbounceBbomberBblurryBblossomBblocksBbioBbinderBbigtimeBbigelowBbetsyBbeautiesBbeachesBbashedBbarrenBbanditBbalooBbaftaBatheistBarrangementBarkBarcticBarchBappallinglyBantiwarBanticlimacticB	annemarieBandroidBanalogyBamosBamazesBamazeBaloudB	alejandroBailingBaffluentBadaBactionadventureB
accustomedB
aboriginesBabigailB90210B1961B1922ByupByorkersByakuzaByadavByadaBwristBworonovBworkingsB	wisconsinB	whicheverBwendtBweiszBweissmullerBwaywardBwattsBwatchersBwarlordBwardsBwaqtBwallyBvuBvocalsBvivaBvinnyBvikingBurgesBunsavoryB
unorthodoxBunfoldedB	unfocusedBunfathomableBuneditedB
undeniableBuncomfortablyB
ubiquitousBtypingBtwohourB
twentyfiveBtrumpBtruelifeBtroyBtrollBtraceyBtownsendBtossesBtngBtimidBthwartedBthirteenBthespianBthematicallyB	testimonyB	terrorizeBtemporarilyBteenagedBtautouBtattooBtanyaBtailsBsynchronizedB	sylvesterBswingsBsweetlyB	supporterB
superhumanB
summarizedBsuiteBsuicidalB
submissionB
subjectiveBstupiderBstripsB
strathairnBstormsB
stopmotionBstoopBstingBstepsistersBstartledBstampBstallionBstacyBsquireBsqualorBsporadicallyBspiritualityBspinsterBspellbindingB
specialistBspacekBsooB	sociopathBsoapsBsneakingB	slowpacedBslitBslashingBskinnedBsirenBsinglesBshuttleBshredsBsheppardB
shatteringBsewerBsetupsBserbianBselfservingBscrubsBscrappyBscholarshipBscarceBscamBsapBsaluteBsalemBsaddledBrotBronnyBroddyBrockedBrileyBridleyBridiculeBricanBreversalBretainedBrespiteBresortsB	residenceBreserveB	requiringBrequirementsB	reportersBrepleteBrelievedBrefreshinglyB
reflectiveBreduceBredeemsB	recoveredBreciteBreaperBrazzieBransomBrainsBraggedyBradiantB	purposelyB
punctuatedBpunchingB	publisherB
productiveBprobableBpriyaB
privilegedBpricesBpretenseBpreBprayerBpraisesB
powerhouseB	potboilerB	pollutionB	poisonousBpointlesslyBplotwiseBplethoraBpikeBpicturedBphotographicB	phenomenaB	perplexedBperpetuallyBpeetBpasticheBpassionatelyBpasoliniBparticipatedBpaBoverwhelminglyB
overplayedB	overcomesBoscarworthyBoptedB	oppressedBoohBofficesBoccurrencesB
obligationBobjectivelyBnoticingBnickelodeonB
newspapersBnestB	neighbourBnecksBnealBnaturedBnaturalisticBnadaBmusterBmusclesBmultiB
moviegoingBmountedBmotorBmotleyBmortyBmonarchBmomentarilyBmisunderstandingsB
mistakenlyBmindblowingB	milvertonBmillardBmiklosBmiaBmessiahB
mesmerizedBmerlinBmercuryB	mechanicsBmeandersBmathBmartinezBmannyBmaltinB	maliciousBmalfiqueBmahatmaBlyleBlsdBlonBloachBlistlessBlingBliftingB
lifestylesB	lethargicBlernerBleonoraBlensmanBlemonB	lecherousBleapingBleakB
largerlifeBlapsesBlamBlacedBkrauseBkitschBkitBkieferBkellerBkarismaBjewelsBjeanmarcBjanningsBjacobBiwritingBistartB
irreverentB	inventingBintoleranceBintolerableBintimacyB	interludeBintercourseBinfuriatingB	inflictedBimuchBimperialBimaginesBillinoisBillconceivedBigoBideologicalBiamazedBhummingB	horsebackBhordesBhopelessnessBhomeworkBhomemadeBhomelandBhokumBhohumB
hodgepodgeBhobbyBhillbilliesBheterosexualBherbieBhebrewBhazelBhayBhavanaB	hardwickeBhallwayB	hairstyleBhairdoBhailBhagenBgumBgreeceBgrangerBgrableBgooseBgomezB	godmotherBglossedBglossB
gloriouslyB	glorifiedB	gibberishBgiamattiBgearedBgazzaraBgathersBgapingBgainsBfurlongBfrodoBfreudianB	freshnessB
freddydeadB	frechetteBfrailB	forgivingBforeshadowingBfondlyBfoeBfluteBflirtBfixingBfeyBferdieBfeeBfatallyBfacelessBexplodedBexecuteBexecsBexecB	excursionBexaminesBevolvingBeverymanBescortBescapismBeraseBentityBenthusiastsBenlistedBenlighteningBemployerB
emphasizesB	eminentlyBelvesBelevatesBeffectivenessBeditorsB
economicalBdwellBdvBdungeonBdummyB
dreamworksBdraftedBdoughBdorkyBdonnerBdollyBdivesB	diversionBdiverB	distractsBdisrespectfulB
disrespectBdispatchB	disguisesB	discussesBdipBdilutedB	detentionBdesertsB	desdemonaB	demonicusBdeltaBdegeneratesBdeftB
definatelyBdefeatsBdecentlyBdebatingBdarkwolfBdarkmanBdarkenedBdanteBdanielleBdanglingBdahliaBcutoutsBcuredB
culminatesBcrotchBcreepedBcreedBcrazeBcrapfestBcrammedBcoolerBconvictsB
conversionBcontradictionsB
contradictB	constanceBcongressBconfidentialB	condensedB
concoctionBconcealBcomprehensiveBcommendB	comingageB	comicallyB	columbineB	collectedBcollageBcoldbloodedBcolBcobbBcloseupBclerksBcleeseBclauseBclassifyB	civilizedBcivilianBchurchesBchordBchopraBchopperBchingBcheekyBchartsBchairsBcesarBcentresBcelineBcarnalBcapriceBcagedBburgundyBbumpedBbulbBbuddhistBbrowBbronxBbrightlyBbreezyBbreezeBbowlingBbowieB	borrowingBborgBbooneBblurBbiographicalBbikersB	benefitedBbenchBbemusedB
befriendedBbatistaBbarkingBbannerBbaileyBawaitBattendsB
attendanceBashtonBashesBarchivesBarchaeologistBapproveBapplyingB	applegateBapologyBapocalypticB
antisocialBanticipatingBanthemB	ancestorsBalteringBaloofBakshayeBaimlessBafloatB	adversityBadvBacquaintancesBacquaintanceBachillesB	accidentsBabundantBaboveBabbottBabbeyB8mmB84B80horrorB79B76B42B39ByummyByayByawningByBwrecksB
womanizingB	withstandB	wikipediaBwhosBwhackBwernerB	wentworthBwellintentionedBweirdlyBweepBweaveBweaponryBwargamesBwaistB
viewpointsBversatilityBventuresBveinsBveidtButahBunwillingnessBuntoldBunsolvedBunrelentingBunprecedentedBuninvolvingBunintelligibleBundyingBundergoBunbornBunacceptableBulrichBtwistyBtubBtruffautBtrophyBtroopBtrippingB	transcendBtrainerBtraffickingBtotoBtoddlerBthouBthirstB	theregoodBtheeBthatsayBtexanBterrificallyBtemptingBtearjerkingBteamingB
tastefullyBtalkiesBsweatyBswampB	sustainedBsurrealisticBsurpassBsullenBsugaryBstuffyBstrivingB	streetcarBstrategyBstickyBsteadilyBstandupB
staggeringBsquarelyBspouseB
splendidlyBspinsBspillingBsphinxBspecializedB	sparklingBspallBsollettBsoftwareBsobBsnoopBsnappedBskullsBsidedBshowyB
shortlivedBshellyBsharplyB	sergeantsBselvesBselectBschizophrenicBscarsBsavagelyBsapsBsandsBrusselBrulerBrubbingBroryBrockwellBrobustBrobbyBrisquBriotsBringingB	rightwingBrewardsBrevelBresponsibilitiesBresidesB
repetitionBrenewedBrenegadeBrelieveBregrettablyBreginaBrefusalB	recruitedBrecognizingBrecognisableB
reanimatorBqaBpuppiesBprovokesB
protractedB	protectorB
prosecutorB
programmerBpretextB
preferenceBprashantB	powerlessB
possessingBportBpoorestBpokmonBplainlyB
pittsburghBpipesBpioneersBpigeonBperilsBpeekBpatsyB	patientlyBpatekarBpastedBpasteBparentalB
paraphraseB
paranormalB	paralyzedBparableBpaquinBpalsyBoverlookingBoutingsBoutdoorsBottBoscarnominatedBorderingBorchestratedBoralBoperatesBopenerBonwardsBonetimeBoddityB
occurrenceBnumbBnukeB	nighttimeBnewtonBnc17BnamelessBmvpBmoriartyBmorbiusB
moralisticB
moonwalkerBmonaghanBmolinaBmockedB
missionaryBmisleadB
miraculousBmimicB	milestoneBmidlifeB	microfilmBmegaB
medicationBmatteredBmasteryBmarchingBmanipulatesB
manchesterB
malevolentBmakingsBmajorsBmadridBmaclaineBmachinationsB	macdowellBlyricB	luxuriousBlootBlonglostBlommelB	loathsomeBliterateBletgoBleadenBlapdBlampBlamourBlamestBkovacsBkookyBkeiraBk9B	justifiesBjtB	jonestownBjocksBjanineBjacknifeBiusuallyB	ittypicalBitsimplyBitbestBisntB	irritatesB	iphigeniaBinvisibilityBinvadingBintertwinedBinjectsBineptlyBimposeBimdbcomBimaxBillicitBillfatedBigivenBibetBiableBhumdrumBhrsBhottestBhostedBhornsBhookersBhogBhobsonBhippyBhintingBhinduBhidBherringBhendrixBhelsingB
heightenedBhegotBheatedB
heartbreakBhatcherBharvestBhangedBhandingBhamburgBhallucinationB	halfbakedBhainBhackedBgymnastBgunnerBguidingBgroinBgrinningB
greengrassB	gratitudeBgracieB
gracefullyBgoonsB
goodfellasB	goldsmithBglimmerBgetgoB	generatesBgandalfBfwordBfryBfringeBfridgeBfreezingBfreakishBfranticallyB	fragmentsB
fragmentedBfoxesBformingBforestsB
foreignersB
foregroundBfoleyBflushedBfledBfkBfischerBfionaBfilmiBfentonBfearfulBfavoredBfartherBfantasticalBfamouslyBfalconBfadingBeyecandyB	exuberantBextractBexquisitelyB
exhibitionB	exhibitedBexciteBexceedsBetherealBesotericBentrailsBenthusiasticallyBenragedB
englishmanBemulateBemotingBemilioBelijahBelicitBelfBegotisticalBefficientlyB	edinburghBduvalBduskBdudsBduchessBdublinBdrummingBdronesBdriedBdrawerBdoublesBdoorwayBdonthinkB	dismissedB
disfiguredBdiscsBdisappointmentsBdigicorpBdietB
dictionaryBdiariesBdhoomBdeusBdespisedBdesiBdescriptionsB	depravityBdeppB
deplorableBdemonstratingBdemmeBdelayBdejaB
degenerateBdeclarationBdecayB	decadenceBdebutedBddBdarleneBdaredBdangeloBdamagingBdadsBcumBcukorBcsiBcrushingBcrusadeBcrankBcrampedBcounterpointBcosmicBcorleoneBcopyingBcoproductionBcopiousBconstructiveB	consensusBconnecticutBconjureBconflictingBconfessionsB
compulsiveB	composersBcompanionshipBcommunicatedB	commenterB
comedienneBcomboBcolleenB	collapsedBcohortsBcoffyBclearedBclaptrapBclairBchinBcheeredB
charitableBchantBchairmanBcellarB	celestialB
celebratesB	caucasianBcaseyBcarolinaB	carnosaurBcarloBcamaraderieBcaanBbygoneB
buttgereitBbudapestBbucketsBbrotherhoodBbroadcastingBbrigitteB	brightestBbravadoBbrattyBbootheBboilBblondesBbladesB
blackboardB
blackadderB
binocularsBbilkoB	bewitchedBbenetBbelowB	believersBbeggedBbeggarsBbeckyBbeatingsBbatteredBbasesBbarrettBbambooB	baltimoreB	balancingBbackstabbingBaweighBawaitsBawaitedBauditioningB
attentionsBassemblyBassassinateBarticlesB	arrestingBargentoB	architectB	announcerBandersBamicusBamericanizedBalexisBaiBahemB	agreementBagreeingBafiBaffinityBaffectionateBaerialB
adulterousB	admittingBadmiringBactivelyBabsurdlyB
abandoningB999B89B747B57B56B31B2dB29B007ByumaByoussefByourselfByorkerByoBwritingsBwristsB	wrestlersBwoodardBwistfulB
wisecracksBwinfreyBwimpBwillingnessBwildeBwhovilleBwholeheartedlyBwhimBwheelerB	wetalkingBwelshBweirBwarpBwalstonBvolatileBvogueBvitalityBviolinBviolatedB
villainessB	veritableBvenusBvenueBventuraBveiledBvariesBvaliantBussrB	untouchedBuntoBunsuccessfullyB	unpopularBunmotivatedBunmistakableBunjustlyBunitsB
underminesBunaBullmanB	twothirdsBtwistingBtwentysomethingBtvmovieBtrottaBtrifleB	travelersB
translatesBtradingBtougherBtoreBtobaccoBtiaBthunderbirdBthirdlyBthawB
thatprettyBthatgoodBterriBterminalBtemplateBtellerBtelBtappingBtamerBtaimeBtailorBtaboosBsweepBsurlyB
suppressedBsuppressBsuperimposedBsuperheroesBsummingBsubstandardBsturgesBstuntmanB	stockwellBstiflingB	standoutsBstalkersBstaceyBspyingB	sprawlingBspoonB	splittingBsplendorBspearBsorcererB	someplaceBsolitudeBsolBsniffingBsneeringBsnafuBsmacksBslumberBsluggishBslippingBslipperBslashedBslammedBskirtBsketchyBsituatedBsimplemindedBsilversBsilliestBsilentlyBsidewaysB	showgirlsB
showcasingBshiaBshekharBshefferBsheedyBshapiroBselfdestructiveBseducesBseatedB
seamlesslyBscholarsBschmidtBscarBsavalasB	saturatedBsatiricBsakuraBrvBrpgBroyaleBrookerBromanticizedBroegBrodgersBrockingBrivetedBriddledBrichesBricardoBresnaisBreservationB
resentmentBrepublicansBreprisesB
repertoireBrelicBrelianceB
rehearsingB
reflectingBrecoversB
recordingsBrebirthBrapportBrangBrailsBradiumBquibbleBpyramidBpuzzlesB
purchasingBpupilBpublishBpsychopathsBpseudoB	protectedBproposesBpromptedBpromiscuousBprominentlyB	proclaimsB	proceededB	probationBpriyankaBpressingBpreparesB	predatorsBpowderBpouredBpoundingBpotatoBpostalBportugalB	portraitsBpopulaceBpopeyeBpoisonedB	pointviewBpmB	plasteredBpitfallsBpicBperuBperpetratorsBpepperedB	pendletonBpeeBpatentlyBpartingBpareshBpalmerBpakistanB	overwhelmBoutragedBorwellBorgiesBoregonBoozesBomittedBocBobserverB
objectionsBobeseBnymphomaniacBnothingnessBnoodleBnonprofessionalB	nonactorsBnixonBnishaBnicBneBnaudetBnaryBnamBnadirBmuseBmumblingB	moviegoerBmountingBmorvernBmorphsBmoraleBmonitorsBmolestedBmiyaBmisunderstandingBmishapsBminersB	memorablyB
melodramasBmelodiesBmedalBmeatyBmcdonaldB	mccartneyBmatingBmatBmarshaBmarkyBmarBmanojBmaherBmagnusBmaggotsBmadameBmacleanBmacheteBlurksBlunacyBlukewarmBluciferBlovehateBloosingBlobbyBlinkingBlineupBlillianB
likabilityB	lethonestBleeringBlearyBlazinessBlauBlargoBkorBknowlesBknockoutBkieraBkesslerBkaBjustifiablyBjudasBjoxBjossBjohnstonBjeezBjeansBjadaBiusedBittimeBitneverBirateBintrospectiveBintimidatingB	intendingBinputB
innocentlyBinexcusableB
indirectlyBinchesBimplyingBimminentBimmerseB
imitationsBillustrationBideallyBhouBhostagesB	hooligansBhoggBhewlettB
hellraiserBhelgaBhecticBheartbrokenBhayekBharlinBhammeredBhalfheartedBgunshotBgunpointB	gunbusterBgummerBgritBgrisbyBgrindingB	griffithsBgrierBgrenadeB	greetingsBgrannyB	grandioseBgramBgraderBgothamBgoogleBgodsakeBgoauldBglueBglitzBgingerbreadBgigliBgiddyBgermsB	geographyBfranzBfourteenBfoundedBfortunesB	formationBforbidBflorenceBfloatsBflamencoBflagsBfitzBfinlandBfilmplotBfilmnoirBfictionalizedBferrerB	fatherlawBfatesBfashionableBfarmersBfaresBfamineBfalcoB
faithfullyBfacetsBeyebrowB
extinctionBexorcismBexceededBespBequationBenvironmentsB	entrancedBenigmaB	enduranceBenablesBemotiveB
embitteredBeighthBedenBechoingBeasterBdyeBdualBdrummondBdrownsBdroolBdroneBdourifBdorffBdongoB	donfooledB
donbelieveBdodgerBdnaBdizzyingBdizzyBdisputeB	dishonestBdisconcertingB
disclaimerBdiningBdingoBdibiaseBdetmersB	desirableB
delusionalBdefBdeemBdecorB	deceptiveBdecadentB	debatableBdangerfieldBdamienBdaggerBcylonBcurtainsBculpB	criterionBcrimsonB
creativelyBcraftyBcowgirlsBcourtneyB	coulourisBcorridorBcoronerBcordBcontributionsBconstitutesBconspiraciesBconnorsBconmanBcondemnB	concludedBcompetitorsBcompensatedBcompellinglyBcommunicatingBcommonlyB	commandosBcomfortablyBcomeuppanceBcollaborationsBcoeBcliqueBclinicalBclientsB
claymationB	churchillBchunkBchoresBchocolatBchimpBchildrenmovieBcharacterdrivenBchainedB	certaintyBceasesBcasualtyBcartoonyBcapshawB	campinessBcallousBcadBbuttsBburyingBbureaucracyBbullockBbraunBboundsBbottlesBbodilyBbluthBblockingBbloatedBblastedBbisexualBbigotedBbetrayBbestsellingB
bestialityBberryB	berkowitzBbenicioBbelgiumBbeastsBbatonBbarriersB
barbariansBbanalityBballadBbabbanBaykroydBawkwardnessBaveryBavaBaustriaBattainBattackerBassistedB	assaultedBaspireBasanoBartificiallyBartfulB	argentinaBappreciativeBappreciatesBantwerpBanatomyBaminBalphaBaliasBalbertoBagathaB
affectionsBadmirersBadityaBadeptBachinglyBaccusesBaccordinglyBabyssBabusingBabsorbBabortedB93B	80slasherB78B77B66B54B5000B33B1920B1914BzipBzetaBzachByukonByouneverByoudeadB	youbetterByardsByahooBwyattBwwBwrestlemaniaB	woodstockBwipingBwinklerBwildestBwhewBwelldeservedBwatermanBwannabesBwahlbergBvomitingBvixenBvisiblyBvioletBvickiBveronikaBventB
venezuelanBvalentinedayBvacuumBvacantB	utilizingButilizesBurmilaBurgentBuprightBunsubtleB	unscathedB
unresolvedB	unleashesBunleashB
unintendedBunholyB	unhealthyBunharmedBuneaseBunderscoresB
underminedBunderestimatedB	uncoveredBuncontrollableB
unbalancedBunavailableBufoBtycoonBtwisterBtvseriesBtulipBtsingBtrucksBtristanBtrimmedBtribulationBtriadsBtrendsBtreasuryBtranceB
trademarksBtorrentBtorranceBtomboyBtitoBtigersBtiffanyBtidyBthirstyBtherelittleBthatoneBthanksgivingBtextileBtennisBtattooedBtassiBtannerBtangibleBtackB
sympathiesBswayedBsuvBsurveillanceB	supremelyBsunlightBsubzeroBstylisticallyBstrangenessBstrainsB	storywiseBsteinBstahlBstagnantB
stagecoachBsquirmB	speculateB
spectatorsBspansBsolvesBsolitaryBsnobbishBsmiledBsmellsBsluttyBslidingBsledgeBslaughterhouseB	skeletonsBsizesB	simulatedBshudderBshriekB	showcasedBshieldsBshenBshefaliBsheeshBshavingBshaveBsharifBshahrukhBsexiestBsexedBsettlingBselfishnessBsebergBseamlessBscrutinyBscriptwritingB
screechingBscorceseBscheiderBscatmanBscathingB
scandalousBsasBsarnoBsankBsaffronBsadeBsacrificingBryderBrulingBrufusBrudimentaryB	routinelyBrougeBrockinBrobeBroamBrioBringuBringoB	ridiculedBrhetoricBrevueBrevolvedBrevivedB	retainingBreservationsBresentB	repugnantBreneeB	relatableBreinholdBreincarnatedBrednecksBrecitingBrebBraptorBraniB	ramblingsBrajaB	radicallyBquoBquigleyBquickieBqueerBpussyBpurportsB	purgatoryBpunishBpumpedBpulitzerBpsychopathicBprovinceBproteB	pronounceB
proclaimedBprixBprevailsBpresleyBprancingBpraisingBprairieBpostingBpopulateBpoorerBpolitelyBpoetsBpodBpocketsBplungesBpleadBplacidBpitcherBpipeBpintilieBpinoBpinkettBpilesBpierBpickyBpiBpetiotB
persuasionB
perplexingBperpetratedBperiodicallyBperilousB	perennialBpaxinouBpatronizingBpatheticallyBpantheonBpancakeBpanamaBpakeezahBoxygenBoveruseBoversBouttakesBotisBosamaB
originatedBoperatorB	operativeB
openmindedBomgBoleBoklahomaBoffsetBobservesBobligedBoberonBnotebookBnooneBnoisyBnoirishBnoelBnoddingBnicknameBnewfoundBnewestB	nevermindBneveBnetherlandsB	nefariousB
necromancyBnauseaB	nastassjaBnapBnaivetBmystiqueB	mushroomsBmumbaiBmultimillionBmugBmstBmortonBmonumentBmononokeBmonoBmiriamBminionBmilieuBmetroB	metaphorsBmetamorphosisBmessesBmerleBmenciaBmegsBmccabeBmazeBmayerBmatthewsBmaslinBmasalaBmarykateBmarshBmarginalBmareBmajestyBmainlandBmagneticBmacreadyBmacaulayBlutherBlupinBluminousB	lumberingBlucianoBlowsBlotteryBloriBloomisB
longwindedBlohanB	logicallyBloathingBloatheBlivenBliquidBlimboB
likelihoodBlickB
liberationB	liberatedB
lanchesterB
kryptoniteBkralikBknottsBkindergartenBkickassBkherBkhannaBkgbBketchupBkermitBjumboBjudithBjudBjoyceBjohnnieBjfkBjawdroppingBjaiBizoB	itstrangeBitsomethingB	itnothingBitchBitawfulB
irritationBirritateBiputBinvadersB	intriguesB
interludesB	intensiveBinstallmentsB	insertingBinsensitiveBinoffensiveBinmateBinjectedBinheritsB
ineptitudeBindoorBindividuallyB
indictmentB
indicativeB
indicatingBincubusBincarnationsBinappropriatelyB
inadequateBimpersonateB	impatientBimpaledBimmuneBimitatedBillustrationsBifoundBidioticallyBicallB	hundstageB	humiliateBhoundBhoorayB
homoeroticBhoechlinBhirschBhiltBhillaryBhijackedBhighbrowBhesitantBherschelBheroinesBhelmedBheinousBhazyBhauserBhauntsBhastingsBhastilyBharmonBharborsBhappenstanceBhansenBhangoverBhagarBgymkataB
gunslingerBgrosseBgrizzledBgreetedBgramsBgoshaBgoinesBgladysBgistBgigoloB	genitaliaBgeneralsBgaspingB
gargantuanBgaleBgabeBfutilityBftBfryingBfrictionBfrenziedBfreddieB
fraternityBfractionBfoulmouthedBforthcomingBforkBforgivesB
forewarnedBfoolingBflukeB	fleischerBflavourBfigurativelyBfendB	fanaticalBfaintsBfailingsBfaginBextravaganzaBextendsBexperimentationB	evergreenBethicalBeruptsBequalityB
enthusiastBendorseBencompassingBenableB	emergenceBembracesBembracedBelitistBelectrocutedBelectrifyingBeldersBeileenBeightyBeganB
efficiencyBdynastyBdyanBdwellsBdwellingBdunawayBdumbingBducksBdroolingBdroningBdriftingBdreamerBdoppelgangerBdomergueBdoktorB
dispatchedBdishesBdinoBdilapidatedBdilBdienBdevonBdevitoBdetourBdermotBdeolB
demolitionB	defeatingBdecayingBdeathbedBdearlyBdealingsBdavidsonBdashedBdariusBdarioBcutestBcutenessBcusterBcurveBcurrBcummingsBculturedBcrypticB
crocodilesBcrockettB	criticiseBcringeworthyBcredentialsBcrazierBcrabsBcostumedBcoonskinB
consultantBconstitutionB	conductedBconditionedB
condemningBcompletistsB
completingBcommerciallyBcomfortsB	collisionB
collectorsBcoinBclutchesBclickedB	cleopatraBcleavageBcinemaxBchurningBchurnedBchuckledBchrissyBchicB	cherishedBchengBchawlaB
charminglyBcharmedB
cautionaryBcatwomanB	catholicsBcatastrophicBcarrollBcarmillaB
capabilityBcandiceB	canadiansBcamBcaBbutterB
butcheringBburrBbulldogBbtasBbryantBbronzeB	brokedownBbrodyBbroaderBbrissonBbrighamBbravelyBbotsBbosworthB	borderingBboorishBbonkersBboilingBboiledBboggyBbogglesBboatsBblurbBbluntlyBblastingBblanketBblancBbizB
bitternessBbfgBberkleyBbelB	bathhouseBbarrageBbarbieB	bannisterB	bandwagonBbadgeBavivBavenueBavengingBautopsyBauntieBatypicalBathletesBastoundinglyBastorB
assistantsBassertBassaultsBarrangeBappeaseBappealedBantiestablishmentBantiamericanBankleB	anastasiaB
anamorphicBamickBamelieBaisleB
advantagesBadolfBadolescentsBadjustBactoractressBactivistBaccuseBabidingBabeBabB9thB97B96B83B7thB74B71B68B360BziyiBzentropaBzenByumByearnByeByankeesByangBwrappingBworkmanlikeBworkingclassB	womanizerBwobblyB	withdrawnBwindingBwigsBwhitBwhiskeyBwhineBwhereaboutsBwhalesBwendersBwelfareBweighBweddingsB	warrantedBwaltzB	visionaryBvillagesBvignetteBviableBverseBvermontBveneerBvendettaBvalidityButilizeB	urinatingBunsurprisinglyBunspeakableBunravelsBunlockB	unlimitedBunjustBunisolB
unfriendlyBundoneBunderwrittenB
underbellyBtwitchBtunnelsBtudorB	troublingBtroublesomeBtrevorBtreacherousBtransmittedB
trainwreckBtraderBtornadoBtopicalBtoiletsBtoastBtmntBtitillationBtimeiBtickingBthyB	throughlyBthoroughBthirdsBthesisBtheologyBtheatricallyBthatbadBthBtextsBterrifyinglyBtenorB	tennesseeBtemperedBteasingBteamworkB	teachingsBtawdryBtateBsyrupyB	syberbergB	swallowedBsuperficiallyB	successorBsuburbBsubtitleBsubsBsturdyB
stupendousBstubbyBstriveBstraussBstraightdvdBstormyBstorageBstonerBstirredBstirbaBsteinerBsteepBstatuesBstathamBsplashesBspillBsphereBspewingBspeedsB	specialtyB	speakeasyBsparringBspBsorrowsBsoooooBsoooBsomersetBsoakedBsnipersBsneakyBsnatchedBsnapshotBslumBslothBslimeBsleeveB	sleeplessBslatedBskirtsBskillfulBskagwayBsilverstoneBshuffleBshovingBshoutedBshortageBshiversBshippedBshintaroBsheltonBsharmaBshadowedB	seventeenBsereneB
sensualityBsenateBsemesterBsellerBselfrighteousBselfindulgenceB
selectionsB	secretiveB
screeningsB	schmaltzyBschlockyBschildkrautB	scheduledB	scepticalBscantBsatiresBsandwichBsanchezBsailingBsailBsadderBsaberBrundownBrubenBroyaltyBroseanneB	rooseveltBronnieBromanticismBroddenberryB	rocknrollBrobberB	ridiculesBridgeBriddleBricciBribisiBrhondaBrhineBrgvBreveBretrospectiveB
resoundingB	resonatesBrerunBrepliedBremovalBreminiscingBrekindleBregionalB
referencedB	redheadedBredheadBrecoveryBreconstructionBraysBraquelBrajinikanthBrainingBraillyBrachaelBraB
quatermainBquartierBpurityBpuddingBpubliclyBprovokedBprovoBproposalB	projectorBprogrammersBprofaneB	procedureBpriorityB	primetimeBpreityB
precociousBprayedB	posturingBporscheBpoopBpoirotBpleasurableBpinsBpillBpiggyB	physicianBphotographersBphelpsBpessimisticB
peripheralBpeerBpedigreeBpeasantsB
payperviewBpayedBpatronBpathologicalBpassportB	parodyingB	paperthinBpantiesBpaineBpaganBpackingB	packagingBpacifistBowingBoverdoseB
overcomingB	overactedBoutfieldBosbourneBonscreenBolenB	oldschoolBoglingB	occupantsBnwaBnubileBnottingBnorwayBnondescriptBnomineesBnobilityBnobelBnitpickBnewsreelB
neorealismB
negligibleB
negativelyBneffBneedyBnecklaceBnavigateBnauseousBnascarBnarrowlyB
narcissismBnapierBnaomiBnagraBnaBn64BmyselfBmunchieBmultifacetedBmulliganBmullerBmoroseBmoreauBmoralesB	mooreheadB
montgomeryBmolestationBmockumentaryBmoB
minimalistBmingB	migrationBmidwestBmidgetsBmicheleBmethBmerchantB	mercenaryBmemphisB	memorizedBmeltsBmelancholicBmechaBmckenzieBmcconaugheyBmaughamBmarxistBmarinBmardiBmarcoBmarchesB
manuscriptB
manchurianBmaineBmacmahonBlungsBlucileB	louisianaBlouieBloomingBlongsBlipstickBlingersBlinedBlibreBliaisonBlhBlevinsonBleungBletputBleoneBlensesBleilaBlandauBlambertoBlairdB
lacklustreBkudrowBkristelBkothariBknowledgeableBkleinBklausB	kellermanBkeenerBkavnerBjongchanBjeanlucBjcB
janmichaelBjaniceBjangBjacobiBiwrongBitscaryBitfullB	islandersBirritatinglyBinvestigativeBinvestigationsB
inventionsBinstructionsB
instructedBinsB
inimitableBinhumanBinertBinducedBinduceB	indicatorB	indicatedB	indelibleBincorporatesBincongruousB
incompleteBimpressionableBimportB
implementsB
imentionedBillustriousBikeepB	ifamiliarBidentificationBicingBibitB	hystericsB	hurricaneBhumanoidBhulceBhousemanBhotterB	hostilityBhostessBhoseBhorrorcomedyBhorrendouslyBholmBhoaxBhingesB	hemingwayBhelmsBhellmanBheedBheeBhearseBhbB
hauntinglyBhatersB
hasselhoffBhartnettBharshlyB	harrelsonB
harassmentBhamptonBhamperedBhammondBhalperinB
hairstylesBhaimBhaiBhackerBguttedBgunshotsBgunplayBgriecoBgrateBgrasBgranddaughterB	graduatesBgradualBgownsB	governessBgoodiesBglobalizationBglibBglenBgiovanniBgingoldB
geographicBgeezBgeerBgauriBgarrisonBgarishBgangstaBfundedBfrogsBfreebirdBfreakinBfrazettaBfranksBfountainBfortressBforteB	foreignerBfooBfoldBflounderBfloppedBfloodingBflirtsBflippedB
flickeringBflemmingBfixationBfirodeBfirefighterBfingernailsBfingBfinerB	financingB	filmfirstBfezBfelineBfaveBfaltersB
extraneousBexpressionistBexemplifiesB
executionsB	executingB	execrableB	excludingBexcelBevokedB	everytownBeverlastingBevaluateBeuroBesteemBenticeBenginesBengineeringBenduresB
emphasizedBembodiesBembodiedBelizaB
elaboratedBeighteenBeerilyB	dystopianBdundeeBdumbedBdulyBducklingBdriftsBdribbleBdrawlBdownloadingBdourBdoodleBdonovanBdonaskB	dominiqueBdolbyBdoingBdjangoBdistrustB
distressedB
disposableBdisinterestedBdisgracefulB
discomfortBdimitriB
diminishesB
diminishedBdiminishBdictionB	diagnosisBdevoutBdevisedBdevastationBdeterioratedB	descendedBdennyBdeniesB	delusionsBdecipherBdazzledB	davenportB	dastardlyBdarcyBdancyBdakarBcynicBcustomBcurtizBcuddlyB	crumblingBcrudBcrothersBcroniesBcrittersBcrippleBcreepingBcraterBcovenBcopperBcooperationB	cooperateB
contractorB	continualB
contentionBconsumerismBconsecutiveBconnedB
conductingB
concludingBconcedeB
componentsBcomplicatingBcomparativelyBcommuneBcomedydramaBcomatoseBcolloraBcollectionsBcohnBcockBclorisBclimberBclimbedBclimaxesBclausenBcircularBchoiBchipsBchimpsB	chikatiloBcheapestBcharlieangelsBchargingBceciliaBcdricBcavemanB	catharsisBcateringB	catalogueBcarriersB	captivateBcampfireBcamilleBcalmlyBcalculatingBcabinetBcabalBbutterfliesBbushwhackersBburstynBburmanBbunkerBbuildupBbubblesBbrittanyB	brigadoonBbrigadeBbricksBbreedingBbravuraBbouvierBbouncesBborzageBboormanBboltsBbogBblouseBblindlyBbitterlyBbiehnBbidBbevyBbergenBbenderBbeltsBbelgianBbehindscenesB	befuddledBbefriendBbedknobsBbeatriceB	batmobileBbarrierBbarjatyaBbangkokBbanditsBbamB
ballantineBbackupBayersBawedBautomobilesBaustraliansBaustereBaudiardBattireB	artifactsBarmandB	arlingtonBaristocratsBarguesBarduousBarchaicBarchaeologicalBaragornBarabiaBappreciatingBaplentyBanupamBannouncementBannounceBandreiBancestorBanachronisticBalternatingBaltarBalludedBallahB
alienatingBalfreBageoldBafoulBaffableBafarBadvocateBadversariesBadvancementBactionerB
acrobaticsB	accoladesB82B81B72B666B49B42ndB1927B14thB120B10thBzuckerBzestBzandaleeBzackB
yugoslaviaByouprobablyByokoByelledBwouldntBworkoutBwingerB
windshieldBwinceBwhoresBwhoppingB	whistlingBwhistlerB	whirlwindB	whatwrongBweirdestB	wednesdayBwarholBwanBwallopBwalesBwailingBwagerBwageB	voyeurismBvivienBvistasB	visiteursBvirtuousBvijayBvickyBvenomousBvariantBvanitiesB	valentinoButtersBupsetsBunworthyBunthinkableBunrecognizableBunrealisticallyBunknowinglyBuniteBunintelligentBunimaginableBunheardBunflinchingB
unengagingBunemploymentB	unearthedBundercurrentB
uncoveringBunconsciouslyBturtlesB	turbulentBtuningBtungBtullyBtuesdayBtruerBtrippyBtribecaBtreborB
transpiresB
transfixedBtracedBtouringB	toughnessBtoppingB	toothlessBtolkienBtissuesBtiresBtimerBtickedBtibetanBthursdayB
thatreallyBtetsuoBterrythomasBtechnoBtaxesBtasBtappedBtamblynBtaggedBtadanobuBtacklingBtackledBsymphonyB
symbolizesB	swordplayBsweetestBsweatingBswapBsurveyB
surpassingB
superstarsBsuitorsBsuccumbsBsuccubusB
subliminalBstyledBstrutBstructurallyBstrollBstrokesBstrodeB	strippersBstrideB	stressfulB
streetwiseBstraysBstrangleBstormtroopersBstintBstewardessesBstephensB
statisticsB
starvationBstarstuddedBstaredBspunkyB
springwoodBspreadsBsprayedBspoutsBspoutBspousesBspeculationB	specificsB
spacecraftB	sophomoreBsoorajB	solutionsB	soapoperaBsnoreBsniffB	smalltimeBslowingBslicesB	sleepawayBslantBskatingB
singularlyB	singletonB	singaporeBsinclairB
simplifiedBsilvioBsilvaB
silhouetteBsiBshuttingBshrineBshrewdBshovelBshoneBshiftyBsherryBshempBshelbyBshakespearianBsexploitationBsexierB	separatesBsensitivelyBselfloathingB
selfesteemB	selectingBseidlBsecularBseannB
scuddamoreB	scriptureBscoutBscorpiontailBschraderB	schoolboyBscalesBsaulBsanjayBsanctimoniousBsamhainBsalaryB	salaciousBsadismBrutBrugBrubbleBrotoscopingBrosyBrondaBromaBrockstarBroarB
ringmasterBrightfulBrichestBribsBrestroomB	respondedBresignedBrequirementBremovesB
reinforcesBreindeerBrefereeBredfieldB
reconsiderB	reconcileBrecalledBreadingsBreactionaryBrappingBrapperBrantsBrammedBrambleBraggedBrafaelBracyBraciallyBrabbitsBquotedBquirozBquibblesBqueueBquarryBquantityBqualmsBpyunBputuponBpumpkinBpumpBpubertyB
provincialBprosecutionBproposedBprolifeBprohibitionBproclaimB
proceedingBpristineBprissyB
prevailingBprettierBpretentiousnessB	prematureB
preferableBpovBpottsBporchBpolandBpointlessnessBpleasBplatinumBplatesBpillowBpiecedBpicardB
photogenicBphilosopherBpeskyB
persuasiveB	persuadesBpersonifiedBpersonasB
persecutedB
perpetuateB	permittedB	permeatesBpereiraB
perceptiveBpeoplelivesBpeanutsBpatrolBpasteurB	parentingBparasiteBpapasBpapaBpapBpaoloBpaltryBpainstakinglyBownBoverviewB	oversexedBoverloadBoutcomesBoswaldBorganisationBoopsBoffenderBodonnellBoconnorBoccupyB
obsessionsBobeyBoatesBnypdBnurseryBnuisanceBnuffBnotoriouslyBnormalcyBnighyBnigelBnewmarBnevilleB
neorealistBneonoirBneighborhoodsB
naturalismBnathBnastiesBmythologicalBmythicBmutinyB
mutilationBmukhsinBmowerB	movieplotBmotifsBmortgageB	mortalityB	morrisseyB	morriconeBmoresB	moodinessBmonetaryBmommyBmohrBmohBmisusedBmissilesBmisogynyBmiragliaB
minoritiesBmilanBmetropolitanB
meticulousBmetaphoricalBmeshBmerchandiseBmendezBmeldBmelanieBmeenaBmeekerBmediterraneanB	mechanismBmckayBmazesBmayslesBmaudlinBmaturedBmatteBmatataB	massivelyBmassachusettsBmarkerBmarianneB	maneatingBmalteseBlymanBlustingBluchinoBlowgradeBlowellBloveableBlouderBlolitaBloafBliteBlistingsBliseBlimbBlickingBlibidoB
liberatingBliberalsB	liberallyBleftwingBlecturesBleansBleaningBleafBleachmanBleaBlavaBlaudedBlandisBlamaBlaidbackBladsBkrabbeBknockoffBkittenBkitschyBkileyBkiBkennelBkasdanBkahnBjustlyB
justifyingBjunglesBjumbleBjuhiBjournalBjorgeBjeromeBjefferyBjeanneB
jeanclaudeBjarndyceBjanosBjadeBiveBitwonderBitsillyBitriedBitplainBitfarBitcompletelyBispentBishtarBiseeBinventivenessBinvadedBintrospectionBintroductoryBintoxicatedB	intervalsBinsultinglyB	instituteB
insistenceBinsignificanceBinsertsB	innocentsBinhabitsBingmarBinflictBinfestedBinfernoB	infantileBinescapableBindistinguishableB
indigenousBindependentlyBincomparableB	improviseBimpoverishedBimpossibilityBimplausibilityB	imperfectBimakingBiliasBifirstBiaBhypocriticalB
humourlessB	humorlessBhumilityBhowlB
horrorfestBhonorsBhomosexualsBholodeckB
histrionicBhijinksB	hijackingBhickokBhersheyBhermannBherculesBhensonBhelmerBhehBheflinBheavyweightBheartrendingB	heartlandB	heartbeatBhealyBhealedBhazeBhayaoBhawaiianB	havenseenBhaterBhastyBhassoBhardwareB	hardedgedBhannaBhallsBhaleyBhakunaBhairsB
guttenbergBgunnedBgrunerBgroomBgroansBgrasshoppersBgrandsonBgranderBgracedB
gorgeouslyBgoonBgoofballBgolemB	goldeneyeB	glorifiesBglitterBgimmickyBgialliBgershonBgerryBgeneticallyBgavinBgatorBgarofaloBgarbBgaimanBfunhouseB
functionalBfullfrontalBfrustrationsBfruitionBfrigginB	frequencyBfraserB
forwardingBforayBfoesBflashmanB	firsthandBfinesseBfidelBfideBfeudBferrisBferrariBfellasBfavorsBfasttalkingBfarisBfalselyB
facilitiesBfacadeBeyeballB
exuberanceBexpressionlessBexpensesBexitingBexclamationBexboyfriendBevokingBevilsB	evidencedBevangelicalBevanB
evaluationB	ethnicityBestelleB	escapadesBerendiraBerasB	ephemeralBenricoBennioB
engineeredB	employingB	embezzlerB
eliminatesBeligibleBelectraB	eglantineBebenezerB	easygoingBdunkBdumblandBduetBdramatizationB	dramaticsBdpBdowntroddenBdotBdooleyBdonateBdomeBdoeBdivideBditzyB
distributeBdistractionsBdistasteB	dissolvesBdisposedBdisposeB	disparateBdismayBdisillusionmentBdisgustinglyB	discourseBdirectorchairBdilemmasBdiggersBdidacticB	diagnosedBderivesB
depressiveB
dependableBdepartsBdepalmaBdentistsBdenB	demeaningBdelpyBdelayedBdefendsB	declaringBdecapitationBdaydayBdarylBdanniBcyberBcustomerB	customaryBcurryBcurbBcuratorBcummingB
cuckoonestBcubBcrustyBcrossbowB
criticisedBcricketB	creepshowBcratchitB	courtshipBcoulierB	costarredBcortesBcooksBconvictionsBcontributingB	consumingB	consumersBconsumerB
constituteB	constableB	conqueredBconcertsBcomposeB
completistBcomplementsB	commendedBcolossalBcollaboratorsBcoachingBcluttersBcliffsBclaytonBclavierBclaudiaBclarifyBcigarBchurnBchunksB
chillinglyBchileBcherryBcherieB	chemicalsBcheezyB	cheesiestBcheeryBchavoBchattingBchatterBcharacternameBchapBchantingB	champagneBcenterpieceB	celestineBceaseBcastlesBcarrereBcardinalBcaptorsBcansBcamillaBcamelBcalfBcalebBcairoBcagesBcabaretBbusesB	burroughsBbumsBbumpingBbulgingBbrynnerBbroomsticksBbroadlyBbrimmingBbreakupBbranchesBbrainerBbradleyBboyhoodBbouchetBboringlyBbombersBboldlyBbogglingB	blindnessBblethynBblaringBblamingB	blackwoodBbignameBbermanBberateBbeardedBbatteryB	bargainedBbaptistsBbankruptBbanBballadsBbakulaBbakedBbadguyBbadgoodBbackseatBbabylonBbabbleBbabbageBaxelB	awesomelyBawardwinningBautobiographicalBatlantaBatkinsBateamBassetsBassertsBaspiresBarmiesBardentB	archetypeB
archetypalBarcaneBantoineB
antithesisBanticlimaticBanandB	analyzingBanachronismBamnesiaB
ammunitionB	americanaBamcB	ambulanceBambientBalastairBalaskaBairsB	airplanesBahhBafricanamericansB	afflictedBadviserBadvertB	adversaryBadvaniB	advancingB	activistsBacklandB
accountantB	absurdistBabrasiveB87B600B35mmB2022B1912B16mmB102B100000BzunigaBzpBzemeckisByulByuenByearnsByankedBwrongsBwouldbetterBwoodwardBwomensBwolfeBwinonaBwinkBwinfieldB	whodunnitBwhitmanBwhisperBwhatnotB
westernersBwellwornBwellexecutedBwellcastBwelcomesBweirderBwebsitesBwarmlyBwalrusBwallowBwaldemarBvoyeurBvolB	vivaciousBvirginalBvinylBvietBvidorB
victimizedBvicarBverminBveriteB	venturingBvartanBvaginaBurbaneBupscaleBupdatingBunspokenBunsophisticatedBunscrupulousB
unofficialBunityBuninitiatedBuninhibitedB	unhappilyBunflatteringB
unfilmableBundoingB	undermineB	undergoesBunderageBunclesB	unchartedBuncaringBunarmedB	unabashedBugliestBtyrantBtyrannyBtypedBtucciB	truncatedB
triumphantBtritonBtripodBtrejoB	treasuredB	treacheryB
travelogueBtrashingBtransferringBtoutedBtouchyBtossingBtolerantBtobeyBtivoBtiniestB	timeframeBtidesBthreedimensionalBthreecompanyBthewlisBtheronBterrorsBterritoriesB
terminallyBtentsBtemporalBtemplarsBtemperamentB	telescopeBteasedBtauntingBtarotBtapsBtallerB	talkativeBtaliaB	taiwaneseBsynthesizerB
sympathiseBswornBswineBswellingBsweetsBswashbucklingBswarmBsuperiorityB
sunglassesBsummersBsuicidesB
stripteaseBstridesBstinkingBstigmaBstewBstarzB	starfleetBstamosBstagBsquirrelB	squeezingBsputnikBspookB	sponsoredBspilledB
spaceshipsB	southwestB
soundstageBsoulfulBsookieBsonjaBsolarisBsolaceBsodaB	socialiteBsobbingBsoapyBsoapdishBsnotBsnickerBsnackBsmartlyBsmartestBslumsBslowedB
slipstreamBslidesBslicedBsleevesynopsisBsleepwalkingBsledgehammerBslaughteringBskeetBsizzlingBsithBsimBsilencesBsidesplittingBsibrelBshovesBshoveB	shogunateBsheaBshavedBshallownessBserpentBserlingBserenityBserbiaBsensationalismBselleckBselflessB
secondrateBscullyB
screentimeBscrawnyBscooterB
schneebaumBschmidB	sceneriesBscarfBscandinavianBsayuriBsawyerBsavorBsalmaBsaladB
sabertoothBruseBruntBrubsBrubbedBrowanB
rotoscopedBrosaBromanticallyBromansBroleplayingBrogenBrockersBrobsonBrobotechBrippnerBrienBrichnessBrichieB
revisitingB	reverenceBreunitesBreubensBrethinkBretardBrestoresBrestaurantsBresistsBreproductionB	reproduceBreplacesBrepercussionsBrepBrentalsB
rendezvousBrenamedBremarkedBrejoiceBreitmanBreichBreggieB
redundancyBrediscoveredBrecorderB	reclusiveB	realisingBrawalBramplingBradiosBradhaBquotientBqueBpusserBpunjabiBpumpingB	psychosisBpsychosBprowlBprospectiveBpromisinglyB
prominenceB
professorsBprewarBprevailB	presenterBprequelsB	practicedBpotionB
popcultureBpollakBpolesBpointeBpoehlerBpluckyBpleadsB
platitudesBplankBplainsBplaguesB
plagiarismBpitiableBphonedBpetitionBpersecutionBpermitBpensionBpenguinsBpeepingB	pedophileBpeakedBpeachBpattiBpatronsBpatricBpatchesBpasB	parasitesBpantherBpalesBpairsBpaigeBpactBoverkillBoutdoBotherworldlyBorganizationsB
oppressorsBontarioBonstageBonsetBonelinerBolinBokadaBojBoffendsBoeuvreBoceansB	obtainingBobtainedBobnoxiouslyB	obligatedBnursingBnovellaBnoonanBnominalBnollBniteBneurosisBnepotismBnarratesBnandiniBnanBnaivetyBmylesBmushyBmushB	multiplexBmulletBmulderBmoynahanBmovietheBmorrowBmorpheusBmontroseBmonteBmonotonyB
monochromeBmonBmomsBmohanlalBmodeledBmobyBmoaningBmoanB
mistreatedBmirrenB	minnesotaBminerB	mimickingBmimeBmiltonBmiliusBmikelsBmightilyB
midwesternBmichiganBmichellBmercedesBmenziesBmemorialBmedleyBmeddlingBmeagerB	mcphillipBmchughBmcguireBmcdoakesBmaxwellBmaudeBmathesonBmasteredBmaryleeBmariusBmanualBmanlyBmaniBmamieBmamanB	magnetismBmadhurBmadetelevisionBmadelineB	maddeningBlynchianBlucienneBlucciBlorneBlorenzBlooserBlookoutBlollobrigidaBliningBlingeredB	limelightBliliesB	lightnessBlievBlianchuBlevineBlettalkBlennyB	lemercierB	leguizamoBleftistBlearBlawlerBlatexBlanishaBlandonB	landmarksB	lancasterBlaconicBlabeoufBkylieBkutcherBkumariBkristinBkormanBkoreansBkoberB	knowinglyBkiraBkiplingBkineticB
kidnappersBkelsoBkatBkarmaBjuxtapositionBjuarezBjourneysBjosBjohnyBjohnsBjetsB	jerusalemBjeonB	jeffersonBjarsBiwaitingBitworstBitimpossibleBitiBitentertainingBitcomedyBitboringBitbitBitbetterBitbasedBistickBinvestigatedBinvadeB	intrusionBintricatelyB
intervenesBintentsBinstinctivelyB
instalmentB	insomniacB
insatiableB	innocuousBinklingBinkBinflatedB
infiltrateBinfatuationBinevitabilityBineffectualBindividualityBindiesBindescribableB
inaccuracyBimprovementsBimprovB	impromptuB
impressingB	implantedB
immoralityBimadeB
illadvisedBikindB
iimpressedBiexpertBidoneBidiosyncraticBidentifyingB	idealizedB
icertainlyBibiasedBhypnosisBhyperBhurlBhungaryBhulkingBhordeB
honourableBhonoredB
homecomingBhomagesBhitchcockianBhindsBhinderedBhildaBhijackB	highpointBhighlightingBhigginsBherosB	hernandezBhereticBherbBheraBhenriBhellishB	heightensBhearstBheadyBheadquartersBheadmistressB
headmasterB	headlinesBhawkinsBhatchetBharvardBharriedBharemBharBhappygoluckyB	halfassedBhaircutsBhahkBgunmanB	gunfightsBgulfBguadalcanalB
gruesomelyB
grudginglyBgrownupsBgrotesquelyBgrossingBgroaningBgrishamBgrippedBgrimyB	greenwichBgreasyB
gratifyingBgrantsBgradesBgoodyBglimpsedB	glaringlyBglamorBgirottiBgimmeBgigsBgigiB	giancarloBghoulBgenevaBgenesisBgelBgawdBgasolineBgarrettBgardinerBgardeniaBgardeBgambleBgalipeauBgabrieleBfuseBfuquaB	funlovingBfrolicBfrighteninglyBfreudBfreespiritedBfredericBfrankaB	fracturedBfoxyBforsakenBformulasBforensicBflungBfluentBfluBflicB
flatteringB
flashlightBflashedB
flashdanceBfittedB	fistfightB
firstclassBfiltersBfilteredBfiloneB	filmgoersBfilmbiggestBfeudalBfencesB
fellowshipBfebruaryBfeatsBfeatherBfatherdeathBfacileBextremitiesB
explosivesB	exchangedBexcerptsBexceedBevpB
evangelistB	evacuatedB	euripidesBettoreBetchedBetceteraBesteemedBeroticaBermBerectionB	entangledBensuringBenlistsBenlistBenforcedBendowedBendearinglyBencompassesBenablingBenabledBemyBemiliaB
embodimentBembassyBeltonBellieBeliminatingBeleniakB	egregiousBegosBeggarBednaBeditionsBeclecticBeburneBearpBdyerBdushkuBdrunksBdroughtBdreyfusB
dreamgirlsB	drawbacksBdrainingB
downstairsBdoveBdoorstepB	donlistenB	dominicanBdomineeringBdolaBdocumentingBdocksBdobsonBdissatisfiedB	dismissesBdiscriminationB	discreditBdiscernBdisapprovingBdisappointinglyBdirectorcommentaryB
diminutiveBdexterBdeweyBdevourB
detractorsBdeterBdetectB	designersB
descendingBdepressinglyBdependedBdeludedB
delicatelyB
delectableBdefianceBdefendedBdefaultBdedlockB	decliningBdeclinedBdebatesBdazedBdawnsBdavyBdasB	daredevilBdaninskyBdamatoB
dalmatiansBdalaiBcynicsBcvBcursesBcrossdressingB	credulityBcraziesBcrashersBcrankyBcraftsmanshipBcrackersBcozyBcoupsB	countdownBcorsautB	correctedBcornballBcorinneBcookbookBcontrivancesBcontaminatedBconspicuousBconsolationBconsentBcongregationBcondomBconciseBconceiveB	conceitedB	concealedB
compulsionB
competenceB
commissionBcomersBcoloradoBcollaboratorBcodesBclothedB	closenessBclichriddenBcleanseBcleansBclapBchunkyBchuckyB	chucklingBchronologicalBchronicBcheckoutB	chauffeurB
channelingBcertificateBcelticBcaterBcarvingBcarriageBcapablyBcallerBcalendarBbustingBburnettBburiesB
burgeoningBburgadeBbrutishBbrushesBbrolinBbrodieBbrimB	briefcaseBbrewingBbreakoutBbramBbrakesBbrainwashingBbradshawBboydBboxersBborneBbootyBbonhamcarterBbonaB	bombshellBbolivianBboggedBboastedBblierBbledBblastsBbjorkBbitchingBbillionaireB
billboardsBbeyonceBbettanyBbenignB
benevolentB	benchmarkBbelloBbeleagueredB	beheadingBbeamsBbattyBbathedBbarresBbarrelsBbarkinBbarefootBbardBbaptistB
bankruptcyBbankerBbangsBbaneBbanderasBawakenedBawakenBavengersB
avantgardeB	attributeB
assessmentBartificeBartfullyBarrangesBarjunBarisingBardenBarchivalBarabsBarabianBaquariumBaproposBappointmentB	appointedB	apatheticB
anticipateBanimateBangusBangersBangeredBangelicBancestryBamusesBalteregoBalibiBairwolfBairheadBaggravatingBaffordsBaffordedBaffectionatelyBaeBadolescenceBadoB	adjectiveB
addictionsBadamsonBaccomplishesBaccompanimentBaccentedBabandonsB58B52B50000B47B41B1929B1851B105BzuluBzionBzenithB	zeitgeistBzanuckBzadoraByrsByrB	youngsterByaphetByanksByaaraBxmasBwuhrerBwuhlBwreckedBwouldaBworshipsBworldgreatestB	workplaceBwordyBwoodlandBwindedBwincottBwincingBwilyBwilcoxBwhitakerBwhippingBwhamB	wellpacedBweirdosBweberBwateryB	waterstonBwarmsBwarmheartedBwalthallBwagesBwadeBvoorheesBvolcanoBvillianB	viceversaB	venantiniB
vegetablesBvariableBvanishBvampyresB
uproariousBunusedBuntimelyBunrestBunreasonableBunprofessionalBunneededBunisolsB
uniquenessB
uninformedBunforgivingB	unfeelingB
unexploredB	undressedB
undisputedBundertakingBunderminingB
underlinesBundercutBunbiasedBummBtysonBtypecastingBtwistersBtwinkleBtwainBtvmBturfB
tumultuousBtumblingBtshirtBtrustingBtruestBtrepidationB	treasuresBtraversBtraumasB	transfersBtradesBtrackedBtracingB	tornadoesBtopperBtoonsBtonguesBtoadBtitillatingBtitansBthwartBthursbyBthorneBthesigerBtherewayB
theregreatBthereabsolutelyBthankedBtestosteroneBteresaBterenceBtenthB	tediouslyB	tarnishedBtandemBtanBtamBtailoredB	syndicateBsymbolicallyBsxswBswappingBsuzyBsustainsBsurgeBsunkenBsuitorBsuckeredBsubstitutingB	stylishlyBstylisedBstuporBstripesB
strindbergBstrifeBstirsBstemBstarklyBstagyBstaggeringlyBstageyBspoonsBspontaneouslyBsponsorsBsponsorB
splatteredBspirituallyBspiralsBspinoffsBspatBsparklesBspanningBsonyBsonicB
songwriterBsombreB	solicitorBsoftlyBsoftenBsnoozerBsnobsBsnareB	snailpaceBsnailBsmokesBsmearedBslippersBslicingBslavicBslateBslamsBskipperBskinnerBskidBsjomanBsizableBsilversteinBsickestBsicBshrunkBshroudedBshowingsBshowersBshittyBshipmentBshiftedBsherylB	shelteredB
shamefullyBsensuousBsenileBselfrespectingBselfrespectBselfconsciouslyB
seductressB	searchersBseamsBseamanBscrapingBscrapesBscrapBscotsBsciammaB
schoolgirlBschaechBscandalsBsawaBsavannahBsaturnBsatisfactorilyBsarafinaBsantiagoBsantanaB
sanitariumBsampsonBsaferBsaddleBsaddenedBsaathB
ruthlesslyBrumourBrozBroundingBrotjBrosettaBrosariosBrompsBrodeBrobertoBroadkillBrisenBriosBrikerBrigetBrigBriffsBrhodaBrhinoBrewritesB	resolvingBresistedBresideBrequestsBrepulsedB	reptilianBrepresentationsB	replicateBreplaysBrepetitiousB
renditionsB
remasteredBrelivingB	rejectingB	reinforceB	rehashingBrehabB	regrettedBregrettableBreeferBredoneB
recreatingBreactedBravenousB	rationingBrashB	rapidfireBranmaBrampBraimiBragsBrafikiBraeBrabiesBquickerBqiBpymBpyleBpublicationB	pseudonymBprudeB
protestantB
prostheticB
propheciesB	propelledB	prologuesB
projectingB
programmesB
programmedBprodigyBprochnowBprivyB	pretensesBpreservationB	prescientBpredominantlyB	precedingBpreachedBprcB	pratfallsBpragueBprBpplBpoursBposseB	polyesterBpoltergeistB
polarisdibBplutoBpluckedB	plotlinesB	plotholesBpleaBpistolsBpiscopoB
pioneeringBpiningBphilosophiesB
pestilenceB
personableBperseveranceBperishBperfunctoryBperaltaBpenultimateBpavementBpavedBpattenBparlorBparkinsBpappyBpanzramBpancakesBpainedB
overworkedB	overthrowBoverpoweringBoverlappingBoverdoesBovationBoutstandinglyB
outerspaceBoutdoesBoutburstBouchBoshiiBosborneB	organisedBorcsBorbitB	oppositesB	onslaughtBonemanBomnipresentB	offscreenBoffenceBoddnessB	occupyingBoccupiesB	observantBobiwanBoakieBoakB
nutcrackerBnutcaseBnursesB	numbinglyBnotreBnordBnoireBninthBnikhilBnighBnicerBnewbornBnewbieBnewageBneriBnephewsBnekromantikBneighbourhoodB	negotiateBnbaBnazismBnationalistBnasalB	narratingBnairBnaggingBmuskaB
mumbojumboBmumboBmumblesBmultiplayerBmultinationalBmultimillionaireBmulroneyB
mulhollandBmuckB	movieevenBmotivateBmortalsBmorphBmorleyBmoonlightingB	moonlightBmonopolyBmocksBmoansBmmmBmississippiBmisrepresentationBmisinformationBmischiefBmiscarriageBmiramaxBminelliBmindbogglingBmilyangBmilkingBmilkedBmidairBmicBmetersBmementoBmelroseBmediumsBmcbrideBmcanallyBmayedaBmaterialismBmassimoBmasochisticBmasculinityBmarginBmarblesB	mannequinB
mankiewiczBmammyBmalcomB	makeshiftBmaestroBmadgeBmachismoB	macgregorBlyonBlustsBlullsBluggageBlucienBlucidB	lovestoryBlovelessBlootingBloniBlongrunningBlokBloathedBloanBlizardsB	liverpoolBliliomBlightedB	lifeforceBlettakeBletgiveB
legitimacyBleftoverBlecturerBleaningsBlbsBlawsonBlawmanB
lasciviousBlairBlagoonBkrugerBkristenBkristaBkowalskiBkottoBknitBkleenexBkittensBkipBkimberlyBkillianBkibbeeBkendrickB	katharineBjunkyardBjunkiesB	judiciousBjoyfulBjoltsBjoltBjiBjeroenBjenkinsBjellyB
jeanpierreBjeanieBjargonBjabBitweirdBitshotBitsetBitoftenBitmadeB
ithorribleBitdoneBitcalledB	itanotherB	isupposedBisuggestBisuckerBistopBisleBislamicBishockedBishiiBisadBirreversibleBironiesBirishmanB	investorsBinvestigatorsB	intrinsicBintrepidBintervieweesBintertwiningB
intertwineBintertitlesB
interruptsBinterracialBinterpersonalB	integrateBinsufficientB	insistentBinsecuritiesBinothingB	injectingBingramB	informingBinfomercialBinfinityBinfernalB
inexorablyB	ineptnessB	indulgingBindulgesB
indulgenceBincorporatingBinconvenientBimpulsesBimprintBimpotentBimmortalityB
immaculateB	imbecilicBimaginativelyBillustratingB
illiteracyBilittleBifeelingBienjoyedBicetB	iassumingBialmostB	hyperboleBhuntsB
humanisticBhugginsBhuggingB	hospitalsBhortonBhormonesBhorizonsBhopalongBhoodlumsBhonedB
homophobiaBhomelyBhollowayBhodderBhobbitsB	himalayasBhighsBhessBheroicsB
henstridgeBhelplessnessBheightenBheftyBheeroBhederBhealerBheadlineBhdBhazingBhaventBhashB	harshnessBharmedBhardhittingBharassedBhaphazardlyBhankaBhagBgypsiesB
gymnasticsBgwenBgushingBgunghoBgundamsBgujaratiB
guidelinesBguetaryBgruntsBgroupieBgrossedBgrimmBgriftersBgreetingBgreenerB	greenawayBgrappleBgrandchildrenBgoyokinBgorshinBgorefestBgooeyBgongB
golddiggerBgoerBglowsBglitzyBglitchesBgleefulBgiorgioBgintyBgideonBgendersBgenBgeddesBgawkyBgamersBgallowsBgabbarBfunnilyBfunctioningBfullfledgedB	fullblownBfulfillsBfuelsBfrielBfreshlyBfreeingB	frederickBfostersBforcefulBfollowerBfoiblesBfocalBflowedB
flourishesBflikBfletcherBflatterBfireflyBfindingsBfilmyB	filmstoryB
filmclimaxBfilmbestBfilipinoBfiddleB	fernandezBfeathersBfangsBfamilialB
eyeopeningBextractsB	exteriorsBextensivelyBexpressionismB	explorersB
exploitiveB	expansiveBexpandsB
exhaustingB	exemplaryBexcopBevenlyBeveningsB
evangelionB	eurotrashB
estimationBestebanB	escalatesBerrB
eraserheadBerasedB
epitomizedB
envisionedBenslavedBendorB	endeavorsBenamoredBemphasizingB	empathiseBemersonB	embroiledB	embracingBembeddedBellisB	elegantlyBelaineBekinBeffectedBeduardoBedmondBedelBecstaticB
ecologicalBechoedBearthlyBduprezBduneBdullnessBducBdrillingB	dragonflyBdozedBdowdyBdoubtingBdoubledBdotsBdoomsdayBdonnieBdonlookBdonbuyBdocumentationBdiversBditchesBditchBdisturbinglyBdisturbanceBdistressingB
distortionBdispositionBdirBdiplomatBdictatorshipBdiabloBdholB	dexterlabBdevoteBdeviantB	detrimentBdescriptiveBdescendantsB
descendantBdeptBdennehyBdelusionBdelinquentsBdegradedB	defendersBdeceivedBdeceiveBdebrisBdeathlyBdeadendBdeadbeatBdamianBdaffyBcuzBcusakBcurvesBcursoryBcurlBcurioBcultistsBculminationBcrushesBcropsBcrewsB	crescendoBcrawlsBcrankedBcraneBcraftsBcraftingBcozBcovertB	courtyardBcourtsBcoursesBcouplingB
costarringBcosmoBcorpBcontrivanceBcontestsBconsciouslyBcongoBconfrontationsBconductsBconceivableBcomplimentedB
complicateBcommunicationsBcommiesBcomBcolumnBcolouredB	colorlessBcollideBcollectivelyBcoldheartedB
colagrandeBcognaciBcoedBcoatsBclownsBclippedBclashesBclarksonBclareBcivilisationBcigarsBchokedBchilesBchiBcharmerBcharlizeBcharadeBchamberlainsBchagrinBceylonB	cellphoneBceliaBcelebiB	cavortingB	catharticBcateBcatchphrasesBcashingBcarvedBcarltonbrowneBcappedBcanoeBcameroonBcalamaiB	cafeteriaBbustsBbusinessmenB
businessesBbushesBburdenedBburakovB	budgetaryBbubblyBbtchBbruisedB
broadcastsB	broadbentBbrinkeBbrevityBbressartBbreakdancingBbragBboyzBboweryB	borowczykBboreanazBbootlegBboopB
boisterousBblowupBblossomsB	blossomedBbloodsuckersBblitzBblindingB	blasphemyBblasphemousB
blacksnakeBblackmailedBbjmBbischoffBbirdieBbipolarBbiographiesBbingeBbigotryBbiggsB
bhandarkarBbgBbernhardBbentonBbentleyBbenkeiBbeekBbedtimeBbatchBbastardsBbassettB	barristerB	barricadeBbanquetBbanishedBbalsamBbaloneyBbainBbailBbahrainBbaggageBbackbackBbabysittingBbabblingBbabaBaxisBawBautumnB
automobileBauthenticallyBauralB	auditionsBauctionBaubreyBattractionsBastutelyBassignmentsBasinineBarouseBaristocracyB	argentineBapplesBapologizingB	apologiseBantiqueB
antiquatedBanthropologistBantagonistsB
announcingBannetteBannalsB	animosityBangeloBanalyzedBanalogBamecheBambushB	amazementBamateurishlyBalumniBaltersBalphabetBallegoricalB	alienatorBalfonsoB
alcoholicsBalabamaBaimeeBaidenBaideBaggressivelyBadvisesBadrienneBadoringBadoptionBadolphBadmiresBadmiralBadjaniBactioncomedyBacerbicB
accompliceB	abysmallyBabjectB	abhorrentB	abductionBabbyBabandonmentB_B92B90minuteB900B69B67B63B61B53B4000B30thB20000B1925B17thB1000000BzillionBzgradeByvaineByoureByentlByelnatsByashByamB	wutheringBwrithingBwrenchBwreckingB	wouldmadeBworldfinestBwokenBwitchingBwitcheryBwishfulBwichBwhoopieBwhomBwhistleBwherebyB	whatworseBwellthoughtBwellroundedBwelldirectedBwelldesignedB
weismullerBweepyBweepingBwebberBweaklyB	watergateBwarlockBwarblingBwacoBwackoB	wackinessBvulcanBvoyeuristicBvortexB
voluptuousBvisageBvirulentBvirileBvilBvigorousBvidalB
victoriousB	viciouslyBvesselsBversesBvaultsB	vampirismBvaluedBurichBurBupwardsBupwardBuproarBupheavalBupgradeBupdatesB
unwaveringBunwarrantedBunsurpassedB
unrequitedB
unravelingBunpleasantnessBunparalleledBunmitigatedB
unmissableBunmemorableB	unmarriedBunkindBuniversitiesBungodlyBungerBunfulfilledBunendingBundressBundiscoveredB
undetectedBunderwayB	undertoneBunderscoredBunconnectedBuncharacteristicBudoBtyneBtwitBturkeysBtubesBtsaiB
truthfullyBtrustyBtrustworthyBtrousersBtroughBtritterBtridentBtrenholmBtrenchesBtremaineBtreatyB
transferedBtramellBtrainspottingBtractBtraciBtourismBtourdeforceBtotalitarianBtosB	torturousBtorridBtorchesBtootsBtonicBtombaBtoenailsB
todayworldBtntBtintB	throbbingBthreewayBthornwayBthomBtherereasonB	thererealBtheoreticallyBthatfineBtetsurBterritorialBtenuousB	tentativeBtemptationsBtemplarBteleplayBteasesB	teammatesBtealcBtavernB	targetingB
tapdancingBtaoistBtantrumsBtangentBtangBtanakaBtammyBtamedBtacticBtabloidsB	syntheticB
synonymousBsyfyBswordfightsBswoopBswoonBswirlingBswillBswiftlyBsweeneyBswearsBswarmingBswainB
surrealistBsurgicalBsurefireB
supervisorBsupervisionBsuperficialityBsummonBsuitcaseBsuedB	succumbedB
succinctlyB
successiveBsubstantiveB	subscribeB
stutteringBstrummerBstrombelBstrawsBstraitB
storyboardBstormareBstompBstocksB	stockholmBstitzerBstinkersB	sternbergBstereotypicallyBstenchBsteelyBsteakBstaunchB	stationedBstateartBstashBstarskyBstantonBstainedB	stabilityBsrkBsquealBsqueakyBsquaresBspringsteenBspottyBsporadicBspoilsBsplitsBspitsB	spiralingB	spinelessBspillsBspewBspermBspedBspectreB	specifiedBspecializesBspatulaBsparkedBspandexBspaderB
soutendijkBsoundtracksBsororityBsorbonneB
somersaultBsolomonBsofterBsoaringBsoarBsnuckBsnoozeBsnootyBsnoopingBsnippetBsneersB	snatchersBsnappingBsmutBsmokeyBsmokedB
smatteringBsmartsBsmackingBslummingBsludgeBslopB
sleepwalksBslavojBsladeBslackerBskiBskeltonB	sisterlawBsirensBsimsBsilentsB
silberlingB	sigourneyBsigneBshutsBshuBshrugBshrewBshotgunsBshogunBshimizuB	sheffieldBshearBshealsoBsharpeBshapelyBshamBserraultBsermonB
selfparodyBsealsBscumbagsBscumbagB	sculptureBsctvB	scratchesBscratBscrapedB	scoundrelBscornedBscolaBscoffBschmaltzBschlesingerBschizophreniaBscentBscarwidBscalpelB	saxophoneBsavingsBsavagesBsauraBsaucyB	satanistsB	sanitizedBsambergBsageBsafariBsadomasochisticBrumoredBrumbleBrudyardBroystonBrothrockBroshanBrosalbaBrooftopBroofsBrobertaB	robberiesBroadieBriskingBrisibleBriggBriftBriemannBriddlerBrhodesBrhodeBrfBrevivingB	retrieverBretailB
respondingB	resonatedBresonantBrequiemBreputedBreprehensibleBrepayB	reminisceBreinventBreinerB	rehearsedBregurgitatedBrefugeesBrefBreelingBreefBreducesBredsBredaB	recyclingB	recreatesBrecountsB
recountingB
reconciledBrecommendationsBrecommendableBrecollectionBrecitesBrealmsBrealistBrealisationBravesB	rationaleBrasukBrappersB
ramshackleBrailBragBradiatesBracketBquitsBquarterbackBpyarBputainBpuristBpurestBpuppetryBpukingBpsychobabbleB	proximityBprovenBprotgB
protestingB	prospectsBproseB
propertiesBpromiscuityB
proficientBproclaimingBprobingB	priscillaBpreteensBpresqueB
presidencyBpremBpreludeB
prejudicedB
preferringBprefaceBpredictionsBpredicamentsB	pqueretteBpottyBpotenteBpostsBposBpoojaBpoodleBpompBpollutedBpolemicBpokedB	poisoningB	pneumonicBplumbingB	plowrightB	pleasanceBpleadingB
playgroundBpittingBpitchesBpinchotBpinchBpikachuBpicsBphysiqueBpheriBphenomenallyBpharaohBpetrolBpetiteB
perverselyBperpetuatesBperpetratorBpermitsBperezBperceptionsB	perceivesB	penthouseBpenetratingB	penetrateBpencilBpeiBpegB
pedophiliaBpaybackBpawnsBpatchyBpatchedBparodiedB
parametersBpanelsBpanelBpanderBpabstBpabloBoxfordB	ownershipB	oversightBovercameB	outweighsBoutshineBorthodoxBoriBorganizeB
ordinarilyBoptingBopheliaBoperatedBoozingBomissionBolgaBohearnB
oftentimesBoffingB	offendingBodditiesBoconorB	obtrusiveBobscuredB	objectionBnymphsBnuggetBnudieBnosyBnoniBnoblemanBnipplesBnippleBnimoyB
nihilisticBnihilismBnicolaiBnettieBnemoBnegroBnegotiationB
neglectingBnecrophiliaBnearerB	naysayersBnataliaBnarrowmindedBnarniaBnanetteBmyronBmunichBmuertosBmowbrayBmouthedB
motivatingBmooseBmontandBmisstepBmisledBmisinterpretedBminstrelBmilliganBmillarBmilitantBmilBmiguelBmiddlingBmesBmergingBmemoirBmelodicBmedB
mechanismsBmeanerBmcintyreBmcgrawBmcgrathBmccallumBmaxxBmawkishBmavensB	massacredB	masochistBmasBmarsdenBmarkhamBmarketplaceBmarietteB
margheritiBmarcelloBmarbleBmaraBmanuBmanmadeBmammothBmaliceBmalcoBmalaBmakeoverBmakebelieveBmagsB	madhubalaBmacgyverBlyndaBlydiaBlurchesBlullBloyalistBlowlyBlovellBloungeBlongedBloftyBloftBlockingBlizzieBliverBlifelikeBlifeboatBlieuBliarsBlewBlesserknownBlesleyBlengleBlembachB	leisurelyBleisenBleggedBleaudBleaseBlawlessBlavenderBlatinosBlatinaBlashesBlanguidBlandoBlandfillBlamerBlabyrinthineBlaboredBkyserBkulkarniBkristyBkokoBknotsBkitamuraBkidmovieBkidaBkendallBkeenanBkapurBjustineBjuonBjuliusBjournalisticBjonnyBjonahBjoanneBjhorrorBjeffsBjasmineB
jacquelineBjacketsBitunfortunateBittwoBitsmallBitotallyBitmasterpieceBitlotBitextremelyB	itexactlyBitenoughBitbigBitabsolutelyBitaBisraelisBisittingBisickBiseriousBisaacsBirightB	invasionsBintricaciesBinterveningBinterruptionsBinterruptingBintegrationBinstructorsB	installedB	insertionBinnumerableB	innuendosB
injusticesB	injectionB
initiativeBinhumaneBinhibitionsB
inhabitingBingenueB
inflictingB	inflationBinfiniteB
industriesBindustrializationBindoorsBinconsistencyB	inanimateBimprovisationBimpressionisticBimpostorBimploreBimplicitB
impersonalB	imperioliBimmigrationBimentionBimbuedBilyingBilonaBillusiveBiletBiknownBiguessBidiosyncrasiesBidentifiableB
iconvincedBicertainBiawareBhyperactiveBhuppertBhuntleyBhungamaBhumanlyBhulaBhuesBhousekeeperBhotelsBhossBhorrormovieBhorrificallyBhoonBhoodlumBhomoBhollywoodizedBhogwashBhobbitBhingleBhimselfBhillyerBhilliardBhighpitchedB	highlandsBherzogBheoneBhelmetsBhelluvaBhegoodB
heartthrobBheapedB
headlightsBhauledBhattieBharmfulB	hardnosedBhammersBhahBhaasBgutwrenchingBgutsyB	gunpowderB	groundingBgroomedBgrenadesBgreetsBgreenstreetB
greenhouseBgreeksBgravitasBgravediggerBgratificationBgratesBgraspedBgrandeBgraciousBgraciaBgouldBgoughBgorrisBgoringBgoodtheBgoldsworthyworkBgoldfishBgobsBgirlieBghouliesBgftBgeronimoBgentileschiBgeezerBgearsBgauntletBgarryBganzBgantryBgambitBgalacticB
gainsbourgB	gabrielleBfussyBfusionBfundamentalistBfumblingBfrigidBfraughtB
fraudulentB	fragilityBfragassoBfpsBfoursomeBfoundingBforwardsBforeeBforeBfollyBfluidsBflownBflourishBflooredBfloBflixBflippenBflickerBflatsBflapsBflappingBflailingBflaccidBfiremanB	finlaysonBfilmpremiseBfilmmainBfigmentBfiercelyBfiendishBfetusBfetchB	fessendenBfervorB
femininityBfellaBfavBfattyB
fastmovingBfastforwardingBfaredBfanshaweBfangoriaB
fanaticismBfaithfulnessBfactionsBfacetB
fabulouslyBeyesightB
eyepoppingBextinctB
expendableBexpelledBexileB	exhusbandBexcisedB
exchangingB	exceptingB	examiningBexamB
exaggerateBevadeB
eurovisionB	eternallyBessayedBespositoBescapadeBesaiBerinBerichBerectedBequateBepiphanyBeodB	entourageBentailsB	enlightenBenglishlanguageBencounteringBenactedBempowermentBemileBelyBeludesBelizondoBeliminationB	elevatorsB	electionsBegonBeerinessBeclipsedB	ecclestonBeatersBearthshatteringB
duplicatedBdumpingBduelsBduelingBdudikoffB	ducktalesBdryingBdropdeadBdrivewayBdrenchedBdragnetB
downloadedBdownedBdoubtlesslyB	doubtlessBdoodyBdonmakeB
dominatingBdolemiteBdoctrineBdocileBdivorceeBdivertedBdivertBdistortionsBdistinguishesBdissertationB	disruptedB
dispatchesB	disordersB
disneylandBdismayedBdiscoveriesB	disclosesB	disclosedBdirecterBdiminishingBdiggerBdictatesB	dichotomyBdiaperBdeyBdevouredBdevoteesBdeterminingBdetainedB
desolationBdeprivedBdepositBdepartBdenizensBdemunnB
demolishedBdementiaBdelinquencyBdegradesBdegradeBdegeneratedBdefiedBdeficienciesBdefiantBdefectsBdecorationsBdeconstructedBdecoBdebonairBdearestBdazBdaxBdatabaseBdarlingsBdaniellaB
dalmationsBdaggersB	cyberpunkBcutoutBcutieBcuterBcurtBcurrentsBcupsBculledBcrustB	crucifiedBcrosscountryBcroftBcreepierB
creditableBcrawledBcowsBcovetedB
counselingBcouldntBcottenBcottageBcorinBconverseBcontradictoryB
contractedBcontraBcontinentalB	contenderB	contactedBconsumeBconjuredBcongratsBconcurB
conceptualBcomradeB	comprisesBcompriseBcompiledBcompactBcommitmentsBcommissionerBcommissionedBcomerB	comebacksBcolumbusBcollegesBcollectsBcollaboratedBcoinsBcodB	cocktailsBcobbledBcnnB	clutchingBclovisBcloudyBclosetsBclocksBcleoBclawsBclaudiusB	classmateBcivicBchteauB
chronologyBchronologicallyB
childishlyBchieflyB
chickflickBcheyenneB
cheerfullyBchastityBchaseyBcharisBcharacterisedBchanningBchahineBceteraBceoB	centeringBcementedBceilingsBceasedBceasarBcavanaghBcatoBcatiiiB	cathedralBcatalinaBcarrotBcarrellBcarouselBcarlinB
carelesslyBcannonsBcanineB	cameramenBcadyBcacklingB
bystandersBbuyersBburgerBbureaucraticBbunuelBbulletproofBbulimiaBbufordBbubblingBbteBbrowningBbroBbristolBbriggsBbrewsterBbredBbragaBbraccoBboxedBbouncyB
bothersomeBbosomB	borlenghiBboonBboomersBboobyBbonoBbolanBbohemianBbodybuilderBbodBboastingBboardedBblurayBblossB
bloodrayneBbloodlettingBblithelyBblandlyBblackoutBblackmailerBbitchesBbiosBbiopicsBbinksBbesiegedBberrymanB
bernadetteBbenedictBbeckerBbeckBbeaversBbeamBbealsBbazzaB	battalionB	bassingerBbasingBbartelBbarredBbaroqueBbarbecueBbarbeauBbarbaricBbaptismBbankableBbaldingBbalancesBbakeBbaghdadBbacklashBbachmanBbabsBaviationBavalonBauthoritativeBaudibleBaudacityB	audaciousBatulBattestBatozB	atlantianBastrayB	assertionBassassinatedBasinB	ascertainBartificialityBarsenalBarmourBargentinianBarentB	archibaldB
archetypesB
applicableBapexB	anxiouslyBantzBantonyB
antiheroesBanorexicBanetaBandrBanarchyBamorousBalokBalludeB
allowancesBalleysB
allegianceBalcatrazBahabB
afterwordsB
aftertasteBafroamericanBadverseBadventBaddictsBadamaBachingBaccommodateBabsurditiesB	aborigineBabnormalBabettedBabelBaamesBaaaB38B2030B2010B1924B1916B1915B1800B12thB123B104B1015B01B	zombifiedBzealousByunByougladByoufindByokozunaByimouByerByearlyBxratedBww1BwussBwriterblockBwrestleB
worldwearyBwordlessBwoodworkBwoesBwizardryBwizBwitchyB	winningerBwingedBwinchBwilfredBwildsBwieldsBwichitaBwhizB
whisperingB	whisperedBwhirlBwhiffBwhatnewBwhalingBwestonB
wellplayedBweightyBweighedBwedBwebsterBweavingBweakensBwcwB
wayneworldBwartornBwarmedB	warburtonB	wallpaperBwaifBvowB
volleyballBvodkaB	violationBvinciBvilliansBvillainyB
vigorouslyBvierdeBvienneseB
videostoreBvicariouslyBvibesB
vernacularBvermaB	veraellenBveilB	vegetableBvaseyBvansB	valientesBvaletteBvaccaroButilityBuriahBurgingBupstagedBupliftBunwiselyB	untergangB
unsuitableBunsentimentalBunscaryBunrulyBunrestrainedB
unpreparedBunnaturallyBuninterruptedBuninterestedBuneBundeservedlyB
undeservedBundervaluedBunderplayedBunderpinningsBunderliningBunderappreciatedB
uncensoredBunavoidableB
unassumingBulteriorBuglinessBtyloBtxBtwofaceBtwaddleBtumorBtugBtshirtsBtruelyBtrimBtrickingBtrenchB
treatmentsBtreasonBtreadB	travelledBtravelerBtrapperBtranssexualB
transportsBtransportingBtransmissionBtranslatingBtrampledBtrailsBtrackerBtoyingBtowneBtoughguyB
touchstoneBtoshiroBtortuousB
tormentorsB
tormentingBtopherBtomeB	tombstoneBtolstoyBtokugawaBtodosBtodaymoviesBtodB
timetravelB	tightenedBtierBtiehBthroesB	thrashingBthoughtlessBthoughtfullyB	thomersonBthirtysomethingBthingyBtheresB
thereneverB	theremanyBthereforBthereenoughBthatrealBtestifyBterminologyBtermedBtendingBtemperamentalBtehranBteetersB	tatsuhitoB	tarkovskyBtapingBtantalizingBtamilBtamborBtalosBtaggingBtadashiBtaciturnBtabuB	synthesisBsymptomsBswipesBswintonBswimsuitBswimsBsweetinBswayingBswashbucklersBswashbucklerBswanBsushmitaBsurmiseBsurBsuppressingB	supplyingBsummonedBsuckersBsuccumbBsubstitutesBsubstitutedB
substancesB	submergedBsubhumanB
subcultureB	styrofoamBstylingBstudlyB
structuresB
structuralBstrongwilledBstressesB
strengthenB	streamingB
stranglingBstonersBstimulationB	stimulateBstiersBstewardBstevieBstealerBsteadBstarvedBstarletsB	stapletonB
standaloneBstampedeBstampedBstallBstalinBstainBstaidBsquadronBspunkBspottingBspongeBspliceBspleenBsplashyBspitefulBspidersBspewsB
spellboundBspeedmanBspecialeffectsB	spanglishBspacedB
spaceballsBsortedB	soporificBsoftpornBsociopoliticalBsnobbyBsnailsBsmugnessBsmuggledBsmokyBsmithereensBsmirkingBsmearB	smackdownBslownessB	slicelifeBsleekBslayBslashesBslapdashBslantedBskippyB
skepticismBsitterBsiskelBsinfulB	simmeringBsillierB	sightingsB	sidelinesBsickeninglyBsicilianBsicaBshugB	shufflingBsharpshooterB
shantytownBshanksBsexpotBsetpieceBsetbacksBserpicoBserbsBseptBselfproclaimedBselfimportantBselfdestructionB	selfawareB	selectiveBseizureBseizedBsegaBseethingBseductivelyBsedateBsecuredBseaverBseasonalBscubaBscrubB	scratchedBscrapeBscotBscissorsBscholarBschnaasB
schiavelliBsaxBsavageryBsaucerBsauceB
satirizingBsashaB
sandwichesBsamplesBsalonBsakamotoB
sagemillerBsadisticallyBsadistBsacrificialBrunyonBrunwayBrungBruizBroyceBrowdyBrouletteBromcomBrollinBrolleBrohmBrodentBrockiesBrobardsBroastedBroastB
riproaringBriotousBringerBriggedBrideauBrichmondBrheaBrhapsodyBreyB	rewrittenB	rewritingBreworkedB	revisitedBrevenueBreubenBretreatsBretitledB
resurgenceBrestrictiveBrestrainingBrestrainB	restoringBrestingBresonateB	replayingBrepairsBremnantsBreligiouslyBrejuvenationBrehashedBregistrationBregentBrefrigeratorBreekBreducingB
redeemableBrectifyB
recruitingBrecreationsBrecluseBreclaimB	recipientBreceptionistB	reccomendB	recallingBrebootBrearsB
reanimatedBrealtimeBreactorBrayeBravedBravagedBraucousBrangedBrandellBramthaBramseyBramoneBramgopalBramblesBragtagBrafBradB
quotationsBquotaBquizBqueenieB
qualifyingBpurportedlyB	punishingBpunisherBpumbaBpufnstufBpuffB
publishingB	publicistBpryceBprurientBprovocationBproustB
prosperityB
prosecutedBproposeBpropelBprogressingB
profundityB
proceduresBprizzihonorBpriyadarshanBprivatesBprincesB	prevailedB	preschoolBprerequisiteB
prereleaseBpreparationsBprematurelyB
predictionBpreconceptionsBpreconceivedBprecedesBpreachesBpraysBprayersBprakashBpoutingBpotatoesB
possessiveBpossessionsBportalBporkBpopulistBpoldiBpoisedBpoirBplungeBplodBpledgeBpleasesB	playfullyBpinpointBpinningBpicassoBphillyBpervertsB	persuadedBpermeateBperkBperettiBpercyBperaboBpentagonBpennsylvaniaBpennantBpeepersBpeepBpedestalBpeanutBpeachesBpausedBpatronisingBpatriotsBpatriarchalBpatinkinBpatentedBpatakiBpastsB	parminderB
parliamentB	parasiticBparamourBparadesBparaB	paperbackB
pantolianoB	palpatineBpairingsBpackagedBoverrunBoverpoweredBoutweighB	outwardlyBoutwardBoutlinesBosheaBorphanedBorgasmBorbachBopaqueBooohBonwardBonekindBoneilB	omissionsBolearyBoffedBoconnellBobscenitiesBoasisBoafBnzBnyqvistBnouvelleBnonchalantlyBnominateBnobodiesBnitB
nineteenthBnineteenBnikiBnightlyB	nietzscheBniB	nervouslyBnemecBneighboringBnayBnauseumBnaturalnessBnatassiaBnascentBnarrateBnapalmB
nailbitingB	mutteringB	mussoliniB	musicallyBmundaeBmunchingBmultiplyBmultilayeredBmoviemakersBmouldBmotherlyB	motherlawBmosqueBmoscowBmortimerBmorphedBmoroccoBmorettiBmorenoBmootBmoocowBmonumentallyB
montmartreB	momentousB	molestingBmolemenBmojoBmogulB
modernizedB	modellingBmnmBmizBmisunderstandBmishapB
mishandledBmiseensceneBmisconceptionBmischaBmirroredBmintonBminorsBmindyB
mindlesslyBmindingBmimesBmilquetoastB	middletonBmexicansB	messengerBmesmerisingBmergeBmercerBmeltedBmeloniBmelangeBmeinBmealsBmccordB	matarazzoB	massacresBmascaraBmarrowBmarqueeBmargauxBmardBmarchandBmanureBmanufacturingBmanuelBmantraBmanifestBmaniacsBmaneuverBmalloryB	malkovichBmalfattiBmalariaBmaidsBmaiBmadchenBmadamBmacrossBmackendrickBmachinaB
macchesneyBlynneBlusterBlurchBluqueBluigiBlugiaBlugerB	lucrativeB	loyaltiesBlovelierBlovablyB	loopholesBloomsB	longevityBloganrunBlitterB	linklaterBlingoBlingerieBlindenBlilliesBlikenessB
librariansBlewtonBleverBleopardBleonaBlendingBlegitimatelyBlaunchesBlassickBlarrazBlapseBlangellaBlainBlagoBladdBlaceyBlabouredBlabelsBlabelledBkureishiBksunBkonkanaBkochBkneeBklugmanBklawBklaraBkiteBkirbyBkilterB
kilpatrickBkilleridentityBkidneyBkickerBkeenlyBkarynBkarinBkallioBjudsonB
judgmentalBjpBjoylessBjovialBjournalsBjonathonBjoltingBjodyBjockeyBjoaquinBjewisonBjesterBjermaineBjeepersBjazzyBjarmuschBjaimeBjaggedB
iwonderingBivesBitwayBittheBitsinceBitpureB
itpleasantBitoddBitobviouslyBitmostlyBitincredibleBitfirstBitalianamericanBistanbulBishwarBishqBisabellaBirreverenceBirarelyBiputtingBipleasedB
invaluableBinvalidBintrinsicallyBinterviewerBinterruptionB	interruptBinternationallyB	interfereBintercontinentalBinterchangeableB	interactsBinstructionB
insecurityBinnovationsBinnardsB
inhumanityB
inhabitantBinfusedBinfectBinfantsBindestructibleBindescribablyBinconceivableB	incarnateBinanityBimprovisingBimissingBimakeBilluminatedBillegitimateB	illegallyBileftBilateB	iinclinedBifansB
ideologiesBicuriousBickyBichiBibuyBiashamedB	hypocriteB
hypnotizesB	hypnotistBhyenasBhydroBhutBhustlingBhustleBhusseyBhumeBhumanismBhoundsBhostingBhoopBhonkyBhombreBhisaishiB	hiroshimaBhipsBhideoutBhickamBhermitBhermioneBhergeB
herehopingB	henriksenBhemoBhelperB	helgelandBheirsBheiglBheidiBhechtBheavingB	heartacheBhealsoB
headphonesBheadlessBhbkBhaysBhaverBhatchBhassleBharleyBhardingB
hardbittenB	harassingBharassBhandhandBhammettB	hammeringBhammedBhalveB	hallmarksB	halfbreedBgwizdoB
gunfighterB
guillotineBguerillaB
guaranteesBgrowlsBgrowlingBgromitBgrodinBgrindsBgrindersBgreensBgreenlightedB
greenlightB
gratefullyBgrapesBgraboidsBgoodiBgoodbadBgonzalezBgoldwynBgogoBglamBgirlishBghostbustersBgenteelBgenocideBgeneticsB	generatorB
generatingBgaugeBgarvinBgamblersBgallonsBgallicoBgallBgaelicBfuzzBfullestBfruleinB	frontiersBfritsBfrightfullyB	frightensBfriedmanBfrewerBfreezesBfreewayBfrawleyBfrankenheimerB	franciosaB
franchisesBfrakesB
formulatedBforlornBforgedBforeseeableB	forensicsBforciblyBfootnoteBfootingBfoolishnessBfondlingBflounderingBfloodedBflippantBflightsBflexibleBflahertyB	fittinglyBfistfulB	firepowerBfilmreleaseBfilmoverallBfilmmessageB	filmgoingBfilingBfetisovBfertileB	ferociousB	feministsB
federationBfecalBfckingB	favorablyBfatigueBfastwayB
fascinatesBfarmingBfarawayBfanciesBfanboysBfakesB	factoriesBfabledBfabBeytanBeyecatchingB	extremistBextraterrestrialBextraordinaireBexpressionisticB
expletivesBexpendB	expansionB	expandingBexloverBexitsBexiledB	exercisesBexclaimsBexaggerationsBexaggeratingBexactingB	everytimeBeversB
euthanasiaBeulogyBethicBeruditeB	erroneousBerrandBernestoBequippedBentrepreneurB
entrenchedBentertainersBengulfedBencyclopediaBemphaticB
emperornewBembodyB
eloquentlyBeggertB	effectingBeelsBedgeseatB	economicsB	earnestlyBdysfunctionB	dwindlingBdvrB	dutifullyBdunBdumbfoundedBduganBduffellBdualityBdtvBds9BdripsBdripBdratchBdrasticBdraperBdoyeonB	downwardsBdownsyndromeBdoubtedBdorseyBdorkBdorfmanBdooneBdonutsBdonrentBdoloresBdoggieB	distancesBdissectBdisregardedB	disposingB	displacedBdisownedBdismemberedBdismallyB	dislikingBdisingenuousB
disheveledB	disgracedBdiscouragedBdirkBdippingBdinosBdimwitBdifferentiateB	dictatingBdiarrheaBdeviatesB	detractedBdeterredBdeteriorationBdessertsBdespisesBdescendBderisionBdeployedBdemureBdemoBdemeanBdelvingB
delinquentBdelhiBdefyingBdefunctB	definetlyB
decorativeBdeconstructionBdecomposingBdauntingBdarkoBdamningBdalyBcyclopsBcutesyBcussBcurrencyBcupidB	culminateBcubsBcubansBcsBcrystalsBcrutchBcruisingBcrudelyBcruddyBcrucifixBcrpB
crossroadsB	crossoverBcrockBcrisesBcreepilyBcreepersBcrediblyBcrateBcrapsBcramerBcrainB	craftsmanB	cracklingBcpBcoyBcourtingBcountersBcountercultureB	coulddoneBcorrespondenceB
correctionBcoronetsB
coronationBcorneredBcopycatB
coproducerB
coproducedBcookiesBcookedBconwayBconvertibleB
conversingBconventionallyB	contractsB	continuumBcontemptibleBcontemplativeBconsiderationsBconservatoryBcongratulatedBconformBconfinementBcondonBcondemnationB	conciergeBcomputergeneratedBcompromisingB
compressedB	composureB
complicityBcomplicationBcomplementedBcompelsBcompassBcomparativeB
commentersBcomelyB	columnistBcolonialismB	colombianBcolombiaB
collinwoodBcohesionBcodaBcoccioBcobwebsBclockingBclockedBclinging
??	
Const_5Const*
_output_shapes

:??*
dtype0	*??	
value??	B??		??"??	                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '      '       '      !'      "'      #'      $'      %'      &'      ''      ('      )'      *'      +'      ,'      -'      .'      /'      0'      1'      2'      3'      4'      5'      6'      7'      8'      9'      :'      ;'      <'      ='      >'      ?'      @'      A'      B'      C'      D'      E'      F'      G'      H'      I'      J'      K'      L'      M'      N'      O'      P'      Q'      R'      S'      T'      U'      V'      W'      X'      Y'      Z'      ['      \'      ]'      ^'      _'      `'      a'      b'      c'      d'      e'      f'      g'      h'      i'      j'      k'      l'      m'      n'      o'      p'      q'      r'      s'      t'      u'      v'      w'      x'      y'      z'      {'      |'      }'      ~'      '      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'      ?'       (      (      (      (      (      (      (      (      (      	(      
(      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (      (       (      !(      "(      #(      $(      %(      &(      '(      ((      )(      *(      +(      ,(      -(      .(      /(      0(      1(      2(      3(      4(      5(      6(      7(      8(      9(      :(      ;(      <(      =(      >(      ?(      @(      A(      B(      C(      D(      E(      F(      G(      H(      I(      J(      K(      L(      M(      N(      O(      P(      Q(      R(      S(      T(      U(      V(      W(      X(      Y(      Z(      [(      \(      ](      ^(      _(      `(      a(      b(      c(      d(      e(      f(      g(      h(      i(      j(      k(      l(      m(      n(      o(      p(      q(      r(      s(      t(      u(      v(      w(      x(      y(      z(      {(      |(      }(      ~(      (      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(      ?(       )      )      )      )      )      )      )      )      )      	)      
)      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )      )       )      !)      ")      #)      $)      %)      &)      ')      ()      ))      *)      +)      ,)      -)      .)      /)      0)      1)      2)      3)      4)      5)      6)      7)      8)      9)      :)      ;)      <)      =)      >)      ?)      @)      A)      B)      C)      D)      E)      F)      G)      H)      I)      J)      K)      L)      M)      N)      O)      P)      Q)      R)      S)      T)      U)      V)      W)      X)      Y)      Z)      [)      \)      ])      ^)      _)      `)      a)      b)      c)      d)      e)      f)      g)      h)      i)      j)      k)      l)      m)      n)      o)      p)      q)      r)      s)      t)      u)      v)      w)      x)      y)      z)      {)      |)      })      ~)      )      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)      ?)       *      *      *      *      *      *      *      *      *      	*      
*      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *      *       *      !*      "*      #*      $*      %*      &*      '*      (*      )*      **      +*      ,*      -*      .*      /*      0*      1*      2*      3*      4*      5*      6*      7*      8*      9*      :*      ;*      <*      =*      >*      ?*      @*      A*      B*      C*      D*      E*      F*      G*      H*      I*      J*      K*      L*      M*      N*      O*      P*      Q*      R*      S*      T*      U*      V*      W*      X*      Y*      Z*      [*      \*      ]*      ^*      _*      `*      a*      b*      c*      d*      e*      f*      g*      h*      i*      j*      k*      l*      m*      n*      o*      p*      q*      r*      s*      t*      u*      v*      w*      x*      y*      z*      {*      |*      }*      ~*      *      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*      ?*       +      +      +      +      +      +      +      +      +      	+      
+      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +      +       +      !+      "+      #+      $+      %+      &+      '+      (+      )+      *+      ++      ,+      -+      .+      /+      0+      1+      2+      3+      4+      5+      6+      7+      8+      9+      :+      ;+      <+      =+      >+      ?+      @+      A+      B+      C+      D+      E+      F+      G+      H+      I+      J+      K+      L+      M+      N+      O+      P+      Q+      R+      S+      T+      U+      V+      W+      X+      Y+      Z+      [+      \+      ]+      ^+      _+      `+      a+      b+      c+      d+      e+      f+      g+      h+      i+      j+      k+      l+      m+      n+      o+      p+      q+      r+      s+      t+      u+      v+      w+      x+      y+      z+      {+      |+      }+      ~+      +      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+      ?+       ,      ,      ,      ,      ,      ,      ,      ,      ,      	,      
,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,      ,       ,      !,      ",      #,      $,      %,      &,      ',      (,      ),      *,      +,      ,,      -,      .,      /,      0,      1,      2,      3,      4,      5,      6,      7,      8,      9,      :,      ;,      <,      =,      >,      ?,      @,      A,      B,      C,      D,      E,      F,      G,      H,      I,      J,      K,      L,      M,      N,      O,      P,      Q,      R,      S,      T,      U,      V,      W,      X,      Y,      Z,      [,      \,      ],      ^,      _,      `,      a,      b,      c,      d,      e,      f,      g,      h,      i,      j,      k,      l,      m,      n,      o,      p,      q,      r,      s,      t,      u,      v,      w,      x,      y,      z,      {,      |,      },      ~,      ,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,      ?,       -      -      -      -      -      -      -      -      -      	-      
-      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -      -       -      !-      "-      #-      $-      %-      &-      '-      (-      )-      *-      +-      ,-      --      .-      /-      0-      1-      2-      3-      4-      5-      6-      7-      8-      9-      :-      ;-      <-      =-      >-      ?-      @-      A-      B-      C-      D-      E-      F-      G-      H-      I-      J-      K-      L-      M-      N-      O-      P-      Q-      R-      S-      T-      U-      V-      W-      X-      Y-      Z-      [-      \-      ]-      ^-      _-      `-      a-      b-      c-      d-      e-      f-      g-      h-      i-      j-      k-      l-      m-      n-      o-      p-      q-      r-      s-      t-      u-      v-      w-      x-      y-      z-      {-      |-      }-      ~-      -      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-      ?-       .      .      .      .      .      .      .      .      .      	.      
.      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .      .       .      !.      ".      #.      $.      %.      &.      '.      (.      ).      *.      +.      ,.      -.      ..      /.      0.      1.      2.      3.      4.      5.      6.      7.      8.      9.      :.      ;.      <.      =.      >.      ?.      @.      A.      B.      C.      D.      E.      F.      G.      H.      I.      J.      K.      L.      M.      N.      O.      P.      Q.      R.      S.      T.      U.      V.      W.      X.      Y.      Z.      [.      \.      ].      ^.      _.      `.      a.      b.      c.      d.      e.      f.      g.      h.      i.      j.      k.      l.      m.      n.      o.      p.      q.      r.      s.      t.      u.      v.      w.      x.      y.      z.      {.      |.      }.      ~.      .      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.      ?.       /      /      /      /      /      /      /      /      /      	/      
/      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /      /       /      !/      "/      #/      $/      %/      &/      '/      (/      )/      */      +/      ,/      -/      ./      //      0/      1/      2/      3/      4/      5/      6/      7/      8/      9/      :/      ;/      </      =/      >/      ?/      @/      A/      B/      C/      D/      E/      F/      G/      H/      I/      J/      K/      L/      M/      N/      O/      P/      Q/      R/      S/      T/      U/      V/      W/      X/      Y/      Z/      [/      \/      ]/      ^/      _/      `/      a/      b/      c/      d/      e/      f/      g/      h/      i/      j/      k/      l/      m/      n/      o/      p/      q/      r/      s/      t/      u/      v/      w/      x/      y/      z/      {/      |/      }/      ~/      /      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/      ?/       0      0      0      0      0      0      0      0      0      	0      
0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0      0       0      !0      "0      #0      $0      %0      &0      '0      (0      )0      *0      +0      ,0      -0      .0      /0      00      10      20      30      40      50      60      70      80      90      :0      ;0      <0      =0      >0      ?0      @0      A0      B0      C0      D0      E0      F0      G0      H0      I0      J0      K0      L0      M0      N0      O0      P0      Q0      R0      S0      T0      U0      V0      W0      X0      Y0      Z0      [0      \0      ]0      ^0      _0      `0      a0      b0      c0      d0      e0      f0      g0      h0      i0      j0      k0      l0      m0      n0      o0      p0      q0      r0      s0      t0      u0      v0      w0      x0      y0      z0      {0      |0      }0      ~0      0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0      ?0       1      1      1      1      1      1      1      1      1      	1      
1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1      1       1      !1      "1      #1      $1      %1      &1      '1      (1      )1      *1      +1      ,1      -1      .1      /1      01      11      21      31      41      51      61      71      81      91      :1      ;1      <1      =1      >1      ?1      @1      A1      B1      C1      D1      E1      F1      G1      H1      I1      J1      K1      L1      M1      N1      O1      P1      Q1      R1      S1      T1      U1      V1      W1      X1      Y1      Z1      [1      \1      ]1      ^1      _1      `1      a1      b1      c1      d1      e1      f1      g1      h1      i1      j1      k1      l1      m1      n1      o1      p1      q1      r1      s1      t1      u1      v1      w1      x1      y1      z1      {1      |1      }1      ~1      1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1      ?1       2      2      2      2      2      2      2      2      2      	2      
2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2      2       2      !2      "2      #2      $2      %2      &2      '2      (2      )2      *2      +2      ,2      -2      .2      /2      02      12      22      32      42      52      62      72      82      92      :2      ;2      <2      =2      >2      ?2      @2      A2      B2      C2      D2      E2      F2      G2      H2      I2      J2      K2      L2      M2      N2      O2      P2      Q2      R2      S2      T2      U2      V2      W2      X2      Y2      Z2      [2      \2      ]2      ^2      _2      `2      a2      b2      c2      d2      e2      f2      g2      h2      i2      j2      k2      l2      m2      n2      o2      p2      q2      r2      s2      t2      u2      v2      w2      x2      y2      z2      {2      |2      }2      ~2      2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2      ?2       3      3      3      3      3      3      3      3      3      	3      
3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3      3       3      !3      "3      #3      $3      %3      &3      '3      (3      )3      *3      +3      ,3      -3      .3      /3      03      13      23      33      43      53      63      73      83      93      :3      ;3      <3      =3      >3      ?3      @3      A3      B3      C3      D3      E3      F3      G3      H3      I3      J3      K3      L3      M3      N3      O3      P3      Q3      R3      S3      T3      U3      V3      W3      X3      Y3      Z3      [3      \3      ]3      ^3      _3      `3      a3      b3      c3      d3      e3      f3      g3      h3      i3      j3      k3      l3      m3      n3      o3      p3      q3      r3      s3      t3      u3      v3      w3      x3      y3      z3      {3      |3      }3      ~3      3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3      ?3       4      4      4      4      4      4      4      4      4      	4      
4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4      4       4      !4      "4      #4      $4      %4      &4      '4      (4      )4      *4      +4      ,4      -4      .4      /4      04      14      24      34      44      54      64      74      84      94      :4      ;4      <4      =4      >4      ?4      @4      A4      B4      C4      D4      E4      F4      G4      H4      I4      J4      K4      L4      M4      N4      O4      P4      Q4      R4      S4      T4      U4      V4      W4      X4      Y4      Z4      [4      \4      ]4      ^4      _4      `4      a4      b4      c4      d4      e4      f4      g4      h4      i4      j4      k4      l4      m4      n4      o4      p4      q4      r4      s4      t4      u4      v4      w4      x4      y4      z4      {4      |4      }4      ~4      4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4      ?4       5      5      5      5      5      5      5      5      5      	5      
5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5      5       5      !5      "5      #5      $5      %5      &5      '5      (5      )5      *5      +5      ,5      -5      .5      /5      05      15      25      35      45      55      65      75      85      95      :5      ;5      <5      =5      >5      ?5      @5      A5      B5      C5      D5      E5      F5      G5      H5      I5      J5      K5      L5      M5      N5      O5      P5      Q5      R5      S5      T5      U5      V5      W5      X5      Y5      Z5      [5      \5      ]5      ^5      _5      `5      a5      b5      c5      d5      e5      f5      g5      h5      i5      j5      k5      l5      m5      n5      o5      p5      q5      r5      s5      t5      u5      v5      w5      x5      y5      z5      {5      |5      }5      ~5      5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5      ?5       6      6      6      6      6      6      6      6      6      	6      
6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6      6       6      !6      "6      #6      $6      %6      &6      '6      (6      )6      *6      +6      ,6      -6      .6      /6      06      16      26      36      46      56      66      76      86      96      :6      ;6      <6      =6      >6      ?6      @6      A6      B6      C6      D6      E6      F6      G6      H6      I6      J6      K6      L6      M6      N6      O6      P6      Q6      R6      S6      T6      U6      V6      W6      X6      Y6      Z6      [6      \6      ]6      ^6      _6      `6      a6      b6      c6      d6      e6      f6      g6      h6      i6      j6      k6      l6      m6      n6      o6      p6      q6      r6      s6      t6      u6      v6      w6      x6      y6      z6      {6      |6      }6      ~6      6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6      ?6       7      7      7      7      7      7      7      7      7      	7      
7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7      7       7      !7      "7      #7      $7      %7      &7      '7      (7      )7      *7      +7      ,7      -7      .7      /7      07      17      27      37      47      57      67      77      87      97      :7      ;7      <7      =7      >7      ?7      @7      A7      B7      C7      D7      E7      F7      G7      H7      I7      J7      K7      L7      M7      N7      O7      P7      Q7      R7      S7      T7      U7      V7      W7      X7      Y7      Z7      [7      \7      ]7      ^7      _7      `7      a7      b7      c7      d7      e7      f7      g7      h7      i7      j7      k7      l7      m7      n7      o7      p7      q7      r7      s7      t7      u7      v7      w7      x7      y7      z7      {7      |7      }7      ~7      7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7      ?7       8      8      8      8      8      8      8      8      8      	8      
8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8      8       8      !8      "8      #8      $8      %8      &8      '8      (8      )8      *8      +8      ,8      -8      .8      /8      08      18      28      38      48      58      68      78      88      98      :8      ;8      <8      =8      >8      ?8      @8      A8      B8      C8      D8      E8      F8      G8      H8      I8      J8      K8      L8      M8      N8      O8      P8      Q8      R8      S8      T8      U8      V8      W8      X8      Y8      Z8      [8      \8      ]8      ^8      _8      `8      a8      b8      c8      d8      e8      f8      g8      h8      i8      j8      k8      l8      m8      n8      o8      p8      q8      r8      s8      t8      u8      v8      w8      x8      y8      z8      {8      |8      }8      ~8      8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8      ?8       9      9      9      9      9      9      9      9      9      	9      
9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9      9       9      !9      "9      #9      $9      %9      &9      '9      (9      )9      *9      +9      ,9      -9      .9      /9      09      19      29      39      49      59      69      79      89      99      :9      ;9      <9      =9      >9      ?9      @9      A9      B9      C9      D9      E9      F9      G9      H9      I9      J9      K9      L9      M9      N9      O9      P9      Q9      R9      S9      T9      U9      V9      W9      X9      Y9      Z9      [9      \9      ]9      ^9      _9      `9      a9      b9      c9      d9      e9      f9      g9      h9      i9      j9      k9      l9      m9      n9      o9      p9      q9      r9      s9      t9      u9      v9      w9      x9      y9      z9      {9      |9      }9      ~9      9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9      ?9       :      :      :      :      :      :      :      :      :      	:      
:      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :      :       :      !:      ":      #:      $:      %:      &:      ':      (:      ):      *:      +:      ,:      -:      .:      /:      0:      1:      2:      3:      4:      5:      6:      7:      8:      9:      ::      ;:      <:      =:      >:      ?:      @:      A:      B:      C:      D:      E:      F:      G:      H:      I:      J:      K:      L:      M:      N:      O:      P:      Q:      R:      S:      T:      U:      V:      W:      X:      Y:      Z:      [:      \:      ]:      ^:      _:      `:      a:      b:      c:      d:      e:      f:      g:      h:      i:      j:      k:      l:      m:      n:      o:      p:      q:      r:      s:      t:      u:      v:      w:      x:      y:      z:      {:      |:      }:      ~:      :      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:      ?:       ;      ;      ;      ;      ;      ;      ;      ;      ;      	;      
;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;      ;       ;      !;      ";      #;      $;      %;      &;      ';      (;      );      *;      +;      ,;      -;      .;      /;      0;      1;      2;      3;      4;      5;      6;      7;      8;      9;      :;      ;;      <;      =;      >;      ?;      @;      A;      B;      C;      D;      E;      F;      G;      H;      I;      J;      K;      L;      M;      N;      O;      P;      Q;      R;      S;      T;      U;      V;      W;      X;      Y;      Z;      [;      \;      ];      ^;      _;      `;      a;      b;      c;      d;      e;      f;      g;      h;      i;      j;      k;      l;      m;      n;      o;      p;      q;      r;      s;      t;      u;      v;      w;      x;      y;      z;      {;      |;      };      ~;      ;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;      ?;       <      <      <      <      <      <      <      <      <      	<      
<      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <      <       <      !<      "<      #<      $<      %<      &<      '<      (<      )<      *<      +<      ,<      -<      .<      /<      0<      1<      2<      3<      4<      5<      6<      7<      8<      9<      :<      ;<      <<      =<      ><      ?<      @<      A<      B<      C<      D<      E<      F<      G<      H<      I<      J<      K<      L<      M<      N<      O<      P<      Q<      R<      S<      T<      U<      V<      W<      X<      Y<      Z<      [<      \<      ]<      ^<      _<      `<      a<      b<      c<      d<      e<      f<      g<      h<      i<      j<      k<      l<      m<      n<      o<      p<      q<      r<      s<      t<      u<      v<      w<      x<      y<      z<      {<      |<      }<      ~<      <      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<      ?<       =      =      =      =      =      =      =      =      =      	=      
=      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =      =       =      !=      "=      #=      $=      %=      &=      '=      (=      )=      *=      +=      ,=      -=      .=      /=      0=      1=      2=      3=      4=      5=      6=      7=      8=      9=      :=      ;=      <=      ==      >=      ?=      @=      A=      B=      C=      D=      E=      F=      G=      H=      I=      J=      K=      L=      M=      N=      O=      P=      Q=      R=      S=      T=      U=      V=      W=      X=      Y=      Z=      [=      \=      ]=      ^=      _=      `=      a=      b=      c=      d=      e=      f=      g=      h=      i=      j=      k=      l=      m=      n=      o=      p=      q=      r=      s=      t=      u=      v=      w=      x=      y=      z=      {=      |=      }=      ~=      =      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=      ?=       >      >      >      >      >      >      >      >      >      	>      
>      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >      >       >      !>      ">      #>      $>      %>      &>      '>      (>      )>      *>      +>      ,>      ->      .>      />      0>      1>      2>      3>      4>      5>      6>      7>      8>      9>      :>      ;>      <>      =>      >>      ?>      @>      A>      B>      C>      D>      E>      F>      G>      H>      I>      J>      K>      L>      M>      N>      O>      P>      Q>      R>      S>      T>      U>      V>      W>      X>      Y>      Z>      [>      \>      ]>      ^>      _>      `>      a>      b>      c>      d>      e>      f>      g>      h>      i>      j>      k>      l>      m>      n>      o>      p>      q>      r>      s>      t>      u>      v>      w>      x>      y>      z>      {>      |>      }>      ~>      >      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>      ?>       ?      ?      ?      ?      ?      ?      ?      ?      ?      	?      
?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       ?      !?      "?      #?      $?      %?      &?      '?      (?      )?      *?      +?      ,?      -?      .?      /?      0?      1?      2?      3?      4?      5?      6?      7?      8?      9?      :?      ;?      <?      =?      >?      ??      @?      A?      B?      C?      D?      E?      F?      G?      H?      I?      J?      K?      L?      M?      N?      O?      P?      Q?      R?      S?      T?      U?      V?      W?      X?      Y?      Z?      [?      \?      ]?      ^?      _?      `?      a?      b?      c?      d?      e?      f?      g?      h?      i?      j?      k?      l?      m?      n?      o?      p?      q?      r?      s?      t?      u?      v?      w?      x?      y?      z?      {?      |?      }?      ~?      ?      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??      ??       @      @      @      @      @      @      @      @      @      	@      
@      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      !@      "@      #@      $@      %@      &@      '@      (@      )@      *@      +@      ,@      -@      .@      /@      0@      1@      2@      3@      4@      5@      6@      7@      8@      9@      :@      ;@      <@      =@      >@      ?@      @@      A@      B@      C@      D@      E@      F@      G@      H@      I@      J@      K@      L@      M@      N@      O@      P@      Q@      R@      S@      T@      U@      V@      W@      X@      Y@      Z@      [@      \@      ]@      ^@      _@      `@      a@      b@      c@      d@      e@      f@      g@      h@      i@      j@      k@      l@      m@      n@      o@      p@      q@      r@      s@      t@      u@      v@      w@      x@      y@      z@      {@      |@      }@      ~@      @      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@       A      A      A      A      A      A      A      A      A      	A      
A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A      A       A      !A      "A      #A      $A      %A      &A      'A      (A      )A      *A      +A      ,A      -A      .A      /A      0A      1A      2A      3A      4A      5A      6A      7A      8A      9A      :A      ;A      <A      =A      >A      ?A      @A      AA      BA      CA      DA      EA      FA      GA      HA      IA      JA      KA      LA      MA      NA      OA      PA      QA      RA      SA      TA      UA      VA      WA      XA      YA      ZA      [A      \A      ]A      ^A      _A      `A      aA      bA      cA      dA      eA      fA      gA      hA      iA      jA      kA      lA      mA      nA      oA      pA      qA      rA      sA      tA      uA      vA      wA      xA      yA      zA      {A      |A      }A      ~A      A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A      ?A       B      B      B      B      B      B      B      B      B      	B      
B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B      B       B      !B      "B      #B      $B      %B      &B      'B      (B      )B      *B      +B      ,B      -B      .B      /B      0B      1B      2B      3B      4B      5B      6B      7B      8B      9B      :B      ;B      <B      =B      >B      ?B      @B      AB      BB      CB      DB      EB      FB      GB      HB      IB      JB      KB      LB      MB      NB      OB      PB      QB      RB      SB      TB      UB      VB      WB      XB      YB      ZB      [B      \B      ]B      ^B      _B      `B      aB      bB      cB      dB      eB      fB      gB      hB      iB      jB      kB      lB      mB      nB      oB      pB      qB      rB      sB      tB      uB      vB      wB      xB      yB      zB      {B      |B      }B      ~B      B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B      ?B       C      C      C      C      C      C      C      C      C      	C      
C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C      C       C      !C      "C      #C      $C      %C      &C      'C      (C      )C      *C      +C      ,C      -C      .C      /C      0C      1C      2C      3C      4C      5C      6C      7C      8C      9C      :C      ;C      <C      =C      >C      ?C      @C      AC      BC      CC      DC      EC      FC      GC      HC      IC      JC      KC      LC      MC      NC      OC      PC      QC      RC      SC      TC      UC      VC      WC      XC      YC      ZC      [C      \C      ]C      ^C      _C      `C      aC      bC      cC      dC      eC      fC      gC      hC      iC      jC      kC      lC      mC      nC      oC      pC      qC      rC      sC      tC      uC      vC      wC      xC      yC      zC      {C      |C      }C      ~C      C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C      ?C       D      D      D      D      D      D      D      D      D      	D      
D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D      D       D      !D      "D      #D      $D      %D      &D      'D      (D      )D      *D      +D      ,D      -D      .D      /D      0D      1D      2D      3D      4D      5D      6D      7D      8D      9D      :D      ;D      <D      =D      >D      ?D      @D      AD      BD      CD      DD      ED      FD      GD      HD      ID      JD      KD      LD      MD      ND      OD      PD      QD      RD      SD      TD      UD      VD      WD      XD      YD      ZD      [D      \D      ]D      ^D      _D      `D      aD      bD      cD      dD      eD      fD      gD      hD      iD      jD      kD      lD      mD      nD      oD      pD      qD      rD      sD      tD      uD      vD      wD      xD      yD      zD      {D      |D      }D      ~D      D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D      ?D       E      E      E      E      E      E      E      E      E      	E      
E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E      E       E      !E      "E      #E      $E      %E      &E      'E      (E      )E      *E      +E      ,E      -E      .E      /E      0E      1E      2E      3E      4E      5E      6E      7E      8E      9E      :E      ;E      <E      =E      >E      ?E      @E      AE      BE      CE      DE      EE      FE      GE      HE      IE      JE      KE      LE      ME      NE      OE      PE      QE      RE      SE      TE      UE      VE      WE      XE      YE      ZE      [E      \E      ]E      ^E      _E      `E      aE      bE      cE      dE      eE      fE      gE      hE      iE      jE      kE      lE      mE      nE      oE      pE      qE      rE      sE      tE      uE      vE      wE      xE      yE      zE      {E      |E      }E      ~E      E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E      ?E       F      F      F      F      F      F      F      F      F      	F      
F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F      F       F      !F      "F      #F      $F      %F      &F      'F      (F      )F      *F      +F      ,F      -F      .F      /F      0F      1F      2F      3F      4F      5F      6F      7F      8F      9F      :F      ;F      <F      =F      >F      ?F      @F      AF      BF      CF      DF      EF      FF      GF      HF      IF      JF      KF      LF      MF      NF      OF      PF      QF      RF      SF      TF      UF      VF      WF      XF      YF      ZF      [F      \F      ]F      ^F      _F      `F      aF      bF      cF      dF      eF      fF      gF      hF      iF      jF      kF      lF      mF      nF      oF      pF      qF      rF      sF      tF      uF      vF      wF      xF      yF      zF      {F      |F      }F      ~F      F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F      ?F       G      G      G      G      G      G      G      G      G      	G      
G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G      G       G      !G      "G      #G      $G      %G      &G      'G      (G      )G      *G      +G      ,G      -G      .G      /G      0G      1G      2G      3G      4G      5G      6G      7G      8G      9G      :G      ;G      <G      =G      >G      ?G      @G      AG      BG      CG      DG      EG      FG      GG      HG      IG      JG      KG      LG      MG      NG      OG      PG      QG      RG      SG      TG      UG      VG      WG      XG      YG      ZG      [G      \G      ]G      ^G      _G      `G      aG      bG      cG      dG      eG      fG      gG      hG      iG      jG      kG      lG      mG      nG      oG      pG      qG      rG      sG      tG      uG      vG      wG      xG      yG      zG      {G      |G      }G      ~G      G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G      ?G       H      H      H      H      H      H      H      H      H      	H      
H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H      H       H      !H      "H      #H      $H      %H      &H      'H      (H      )H      *H      +H      ,H      -H      .H      /H      0H      1H      2H      3H      4H      5H      6H      7H      8H      9H      :H      ;H      <H      =H      >H      ?H      @H      AH      BH      CH      DH      EH      FH      GH      HH      IH      JH      KH      LH      MH      NH      OH      PH      QH      RH      SH      TH      UH      VH      WH      XH      YH      ZH      [H      \H      ]H      ^H      _H      `H      aH      bH      cH      dH      eH      fH      gH      hH      iH      jH      kH      lH      mH      nH      oH      pH      qH      rH      sH      tH      uH      vH      wH      xH      yH      zH      {H      |H      }H      ~H      H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H      ?H       I      I      I      I      I      I      I      I      I      	I      
I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I      I       I      !I      "I      #I      $I      %I      &I      'I      (I      )I      *I      +I      ,I      -I      .I      /I      0I      1I      2I      3I      4I      5I      6I      7I      8I      9I      :I      ;I      <I      =I      >I      ?I      @I      AI      BI      CI      DI      EI      FI      GI      HI      II      JI      KI      LI      MI      NI      OI      PI      QI      RI      SI      TI      UI      VI      WI      XI      YI      ZI      [I      \I      ]I      ^I      _I      `I      aI      bI      cI      dI      eI      fI      gI      hI      iI      jI      kI      lI      mI      nI      oI      pI      qI      rI      sI      tI      uI      vI      wI      xI      yI      zI      {I      |I      }I      ~I      I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I      ?I       J      J      J      J      J      J      J      J      J      	J      
J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J      J       J      !J      "J      #J      $J      %J      &J      'J      (J      )J      *J      +J      ,J      -J      .J      /J      0J      1J      2J      3J      4J      5J      6J      7J      8J      9J      :J      ;J      <J      =J      >J      ?J      @J      AJ      BJ      CJ      DJ      EJ      FJ      GJ      HJ      IJ      JJ      KJ      LJ      MJ      NJ      OJ      PJ      QJ      RJ      SJ      TJ      UJ      VJ      WJ      XJ      YJ      ZJ      [J      \J      ]J      ^J      _J      `J      aJ      bJ      cJ      dJ      eJ      fJ      gJ      hJ      iJ      jJ      kJ      lJ      mJ      nJ      oJ      pJ      qJ      rJ      sJ      tJ      uJ      vJ      wJ      xJ      yJ      zJ      {J      |J      }J      ~J      J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J      ?J       K      K      K      K      K      K      K      K      K      	K      
K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K      K       K      !K      "K      #K      $K      %K      &K      'K      (K      )K      *K      +K      ,K      -K      .K      /K      0K      1K      2K      3K      4K      5K      6K      7K      8K      9K      :K      ;K      <K      =K      >K      ?K      @K      AK      BK      CK      DK      EK      FK      GK      HK      IK      JK      KK      LK      MK      NK      OK      PK      QK      RK      SK      TK      UK      VK      WK      XK      YK      ZK      [K      \K      ]K      ^K      _K      `K      aK      bK      cK      dK      eK      fK      gK      hK      iK      jK      kK      lK      mK      nK      oK      pK      qK      rK      sK      tK      uK      vK      wK      xK      yK      zK      {K      |K      }K      ~K      K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K      ?K       L      L      L      L      L      L      L      L      L      	L      
L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L      L       L      !L      "L      #L      $L      %L      &L      'L      (L      )L      *L      +L      ,L      -L      .L      /L      0L      1L      2L      3L      4L      5L      6L      7L      8L      9L      :L      ;L      <L      =L      >L      ?L      @L      AL      BL      CL      DL      EL      FL      GL      HL      IL      JL      KL      LL      ML      NL      OL      PL      QL      RL      SL      TL      UL      VL      WL      XL      YL      ZL      [L      \L      ]L      ^L      _L      `L      aL      bL      cL      dL      eL      fL      gL      hL      iL      jL      kL      lL      mL      nL      oL      pL      qL      rL      sL      tL      uL      vL      wL      xL      yL      zL      {L      |L      }L      ~L      L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L      ?L       M      M      M      M      M      M      M      M      M      	M      
M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M      M       M      !M      "M      #M      $M      %M      &M      'M      (M      )M      *M      +M      ,M      -M      .M      /M      0M      1M      2M      3M      4M      5M      6M      7M      8M      9M      :M      ;M      <M      =M      >M      ?M      @M      AM      BM      CM      DM      EM      FM      GM      HM      IM      JM      KM      LM      MM      NM      OM      PM      QM      RM      SM      TM      UM      VM      WM      XM      YM      ZM      [M      \M      ]M      ^M      _M      `M      aM      bM      cM      dM      eM      fM      gM      hM      iM      jM      kM      lM      mM      nM      oM      pM      qM      rM      sM      tM      uM      vM      wM      xM      yM      zM      {M      |M      }M      ~M      M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M      ?M       N      N      N      N      N      N      N      N      N      	N      
N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      N      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
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
GPU2*0J 8? *$
fR
__inference_<lambda>_163380
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU2*0J 8? *$
fR
__inference_<lambda>_163385
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?`
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?`
value?`B?` B?_
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
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
;
	keras_api
_lookup_layer
_adapt_function*
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer_with_weights-4
layer-8
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	optimizer*
C
 1
!2
"3
#4
$5
%6
&7
'8
(9*
C
 0
!1
"2
#3
$4
%5
&6
'7
(8*
* 
?
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
.trace_0
/trace_1
0trace_2
1trace_3* 
6
2trace_0
3trace_1
4trace_2
5trace_3* 
* 
* 

6serving_default* 
* 
7
7	keras_api
8lookup_table
9token_counts*

:trace_0* 
* 
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
 
embeddings*
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_random_generator* 
?
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

!kernel
"bias
 N_jit_compiled_convolution_op*
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

#kernel
$bias
 U_jit_compiled_convolution_op*
?
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
?
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

%kernel
&bias*
?
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator* 
?
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

'kernel
(bias*
C
 0
!1
"2
#3
$4
%5
&6
'7
(8*
C
 0
!1
"2
#3
$4
%5
&6
'7
(8*
* 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ttrace_0
utrace_1
vtrace_2
wtrace_3* 
6
xtrace_0
ytrace_1
ztrace_2
{trace_3* 
?
|iter

}beta_1

~beta_2
	decay
?learning_rate m?!m?"m?#m?$m?%m?&m?'m?(m? v?!v?"v?#v?$v?%v?&v?'v?(v?*
TN
VARIABLE_VALUEembedding/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv1d/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv1d/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv1d_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv1d_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEpredictions/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEpredictions/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

?0
?1*
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
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
?
?_create_resource
?_initialize
?_destroy_resource><layer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/*
* 

 0*

 0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

!0
"1*

!0
"1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 

#0
$1*

#0
$1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

%0
&1*

%0
&1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

'0
(1*

'0
(1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
C
0
1
2
3
4
5
6
7
8*

?0
?1*
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
a[
VARIABLE_VALUE	Adam/iter>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE
Adam/decay?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*
* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 

?trace_0* 
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
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 

?0
?1*

?	variables*
jd
VARIABLE_VALUEtotal_1Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_1Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
hb
VARIABLE_VALUEtotalIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEcountIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
??
VARIABLE_VALUEAdam/embedding/embeddings/mWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/conv1d/kernel/mWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv1d/bias/mWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv1d_1/kernel/mWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/conv1d_1/bias/mWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense/kernel/mWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense/bias/mWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/predictions/kernel/mWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/predictions/bias/mWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding/embeddings/vWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/conv1d/kernel/vWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv1d/bias/vWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv1d_1/kernel/vWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUEAdam/conv1d_1/bias/vWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense/kernel/vWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense/bias/vWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/predictions/kernel/vWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/predictions/bias/vWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_5Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_5
hash_tableConstConst_1Const_2embedding/embeddingsconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biaspredictions/kernelpredictions/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_162663
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Adam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp-Adam/predictions/kernel/m/Read/ReadVariableOp+Adam/predictions/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp-Adam/predictions/kernel/v/Read/ReadVariableOp+Adam/predictions/bias/v/Read/ReadVariableOpConst_6*7
Tin0
.2,		*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_163542
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biaspredictions/kernelpredictions/biasMutableHashTable	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_3count_3total_2count_2total_1count_1totalcountAdam/embedding/embeddings/mAdam/conv1d/kernel/mAdam/conv1d/bias/mAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/predictions/kernel/mAdam/predictions/bias/mAdam/embedding/embeddings/vAdam/conv1d/kernel/vAdam/conv1d/bias/vAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/predictions/kernel/vAdam/predictions/bias/v*5
Tin.
,2**
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_163675??
?
?
)__inference_conv1d_1_layer_call_fn_163219

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_161906}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
A__inference_dense_layer_call_and_return_conditional_losses_163266

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_163364
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::P
add/yConst*
_output_shapes
: *
dtype0*
valueB B
table-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: T
add_1/yConst*
_output_shapes
: *
dtype0*
valueB Btable-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?

?
&__inference_model_layer_call_fn_163005

inputs	
unknown:???!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_161954o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

?
&__inference_model_layer_call_fn_162168
input_1	
unknown:???!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_162124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?\
?
C__inference_model_4_layer_call_and_return_conditional_losses_162432

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
model_162412:???$
model_162414:??
model_162416:	?$
model_162418:??
model_162420:	? 
model_162422:
??
model_162424:	?
model_162426:	?
model_162428:
identity??model/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2{
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0model_162412model_162414model_162416model_162418model_162420model_162422model_162424model_162426model_162428*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_162124u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
/
__inference__initializer_163340
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_1633807
3key_value_init4392_lookuptableimportv2_table_handle/
+key_value_init4392_lookuptableimportv2_keys1
-key_value_init4392_lookuptableimportv2_values	
identity??&key_value_init4392/LookupTableImportV2?
&key_value_init4392/LookupTableImportV2LookupTableImportV23key_value_init4392_lookuptableimportv2_table_handle+key_value_init4392_lookuptableimportv2_keys-key_value_init4392_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init4392/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init4392/LookupTableImportV2&key_value_init4392/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
??
?
"__inference__traced_restore_163675
file_prefix:
%assignvariableop_embedding_embeddings:???8
 assignvariableop_1_conv1d_kernel:??-
assignvariableop_2_conv1d_bias:	?:
"assignvariableop_3_conv1d_1_kernel:??/
 assignvariableop_4_conv1d_1_bias:	?3
assignvariableop_5_dense_kernel:
??,
assignvariableop_6_dense_bias:	?8
%assignvariableop_7_predictions_kernel:	?1
#assignvariableop_8_predictions_bias:M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: &
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: %
assignvariableop_14_total_3: %
assignvariableop_15_count_3: %
assignvariableop_16_total_2: %
assignvariableop_17_count_2: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: #
assignvariableop_20_total: #
assignvariableop_21_count: D
/assignvariableop_22_adam_embedding_embeddings_m:???@
(assignvariableop_23_adam_conv1d_kernel_m:??5
&assignvariableop_24_adam_conv1d_bias_m:	?B
*assignvariableop_25_adam_conv1d_1_kernel_m:??7
(assignvariableop_26_adam_conv1d_1_bias_m:	?;
'assignvariableop_27_adam_dense_kernel_m:
??4
%assignvariableop_28_adam_dense_bias_m:	?@
-assignvariableop_29_adam_predictions_kernel_m:	?9
+assignvariableop_30_adam_predictions_bias_m:D
/assignvariableop_31_adam_embedding_embeddings_v:???@
(assignvariableop_32_adam_conv1d_kernel_v:??5
&assignvariableop_33_adam_conv1d_bias_v:	?B
*assignvariableop_34_adam_conv1d_1_kernel_v:??7
(assignvariableop_35_adam_conv1d_1_bias_v:	?;
'assignvariableop_36_adam_dense_kernel_v:
??4
%assignvariableop_37_adam_dense_bias_v:	?@
-assignvariableop_38_adam_predictions_kernel_v:	?9
+assignvariableop_39_adam_predictions_bias_v:
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv1d_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv1d_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_predictions_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_predictions_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:9RestoreV2:tensors:10*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ^

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_3Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_3Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp/assignvariableop_22_adam_embedding_embeddings_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv1d_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_conv1d_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv1d_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv1d_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp%assignvariableop_28_adam_dense_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_predictions_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_predictions_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp/assignvariableop_31_adam_embedding_embeddings_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv1d_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_conv1d_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv1d_1_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv1d_1_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp%assignvariableop_37_adam_dense_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp-assignvariableop_38_adam_predictions_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_predictions_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)
%
#
_class
loc:@MutableHashTable
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_161866

inputs

identity_1\
IdentityIdentityinputs*
T0*5
_output_shapes#
!:???????????????????i

Identity_1IdentityIdentity:output:0*
T0*5
_output_shapes#
!:???????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_161838

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?V
?
__inference__traced_save_163542
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop1
-savev2_predictions_kernel_read_readvariableop/
+savev2_predictions_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop8
4savev2_adam_predictions_kernel_m_read_readvariableop6
2savev2_adam_predictions_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop8
4savev2_adam_predictions_kernel_v_read_readvariableop6
2savev2_adam_predictions_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*?
value?B?+B&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop-savev2_predictions_kernel_read_readvariableop+savev2_predictions_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop4savev2_adam_predictions_kernel_m_read_readvariableop2savev2_adam_predictions_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop4savev2_adam_predictions_kernel_v_read_readvariableop2savev2_adam_predictions_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :???:??:?:??:?:
??:?:	?:::: : : : : : : : : : : : : :???:??:?:??:?:
??:?:	?::???:??:?:??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:???:*&
$
_output_shapes
:??:!

_output_shapes	
:?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 	

_output_shapes
::


_output_shapes
::

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:???:*&
$
_output_shapes
:??:!

_output_shapes	
:?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:% !

_output_shapes
:	?: !

_output_shapes
::'"#
!
_output_shapes
:???:*#&
$
_output_shapes
:??:!$

_output_shapes	
:?:*%&
$
_output_shapes
:??:!&

_output_shapes	
:?:&'"
 
_output_shapes
:
??:!(

_output_shapes	
:?:%)!

_output_shapes
:	?: *

_output_shapes
::+

_output_shapes
: 
?<
?
A__inference_model_layer_call_and_return_conditional_losses_163078

inputs	6
!embedding_embedding_lookup_163031:???J
2conv1d_conv1d_expanddims_1_readvariableop_resource:??5
&conv1d_biasadd_readvariableop_resource:	?L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_1_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
*predictions_matmul_readvariableop_resource:	?9
+predictions_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_163031inputs*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/163031*5
_output_shapes#
!:???????????????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/163031*5
_output_shapes#
!:????????????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*5
_output_shapes#
!:???????????????????g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsdropout/Identity:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????l
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d/Relu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????p
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d/MaxMaxconv1d_1/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????k
dropout_1/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:???????????
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
predictions/MatMulMatMuldropout_1/Identity:output:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????k
IdentityIdentitypredictions/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs

?

C__inference_model_4_layer_call_and_return_conditional_losses_162872

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	<
'model_embedding_embedding_lookup_162825:???P
8model_conv1d_conv1d_expanddims_1_readvariableop_resource:??;
,model_conv1d_biasadd_readvariableop_resource:	?R
:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:??=
.model_conv1d_1_biasadd_readvariableop_resource:	?>
*model_dense_matmul_readvariableop_resource:
??:
+model_dense_biasadd_readvariableop_resource:	?C
0model_predictions_matmul_readvariableop_resource:	??
1model_predictions_biasadd_readvariableop_resource:
identity??#model/conv1d/BiasAdd/ReadVariableOp?/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?%model/conv1d_1/BiasAdd/ReadVariableOp?1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp? model/embedding/embedding_lookup?(model/predictions/BiasAdd/ReadVariableOp?'model/predictions/MatMul/ReadVariableOp?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2{
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
 model/embedding/embedding_lookupResourceGather'model_embedding_embedding_lookup_162825?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*:
_class0
.,loc:@model/embedding/embedding_lookup/162825*-
_output_shapes
:???????????*
dtype0?
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@model/embedding/embedding_lookup/162825*-
_output_shapes
:????????????
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
model/dropout/IdentityIdentity4model/embedding/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????m
"model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
model/conv1d/Conv1D/ExpandDims
ExpandDimsmodel/dropout/Identity:output:0+model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8model_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0f
$model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
 model/conv1d/Conv1D/ExpandDims_1
ExpandDims7model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0-model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d/Conv1DConv2D'model/conv1d/Conv1D/ExpandDims:output:0)model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
model/conv1d/Conv1D/SqueezeSqueezemodel/conv1d/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
#model/conv1d/BiasAdd/ReadVariableOpReadVariableOp,model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d/BiasAddBiasAdd$model/conv1d/Conv1D/Squeeze:output:0+model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????p
model/conv1d/ReluRelumodel/conv1d/BiasAdd:output:0*
T0*-
_output_shapes
:???????????o
$model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 model/conv1d_1/Conv1D/ExpandDims
ExpandDimsmodel/conv1d/Relu:activations:0-model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0h
&model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
"model/conv1d_1/Conv1D/ExpandDims_1
ExpandDims9model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d_1/Conv1DConv2D)model/conv1d_1/Conv1D/ExpandDims:output:0+model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????5?*
paddingVALID*
strides
?
model/conv1d_1/Conv1D/SqueezeSqueezemodel/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:?????????5?*
squeeze_dims

??????????
%model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d_1/BiasAddBiasAdd&model/conv1d_1/Conv1D/Squeeze:output:0-model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????5?s
model/conv1d_1/ReluRelumodel/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????5?r
0model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/global_max_pooling1d/MaxMax!model/conv1d_1/Relu:activations:09model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model/dense/MatMulMatMul'model/global_max_pooling1d/Max:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????w
model/dropout_1/IdentityIdentitymodel/dense/Relu:activations:0*
T0*(
_output_shapes
:???????????
'model/predictions/MatMul/ReadVariableOpReadVariableOp0model_predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/predictions/MatMulMatMul!model/dropout_1/Identity:output:0/model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(model/predictions/BiasAdd/ReadVariableOpReadVariableOp1model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/predictions/BiasAddBiasAdd"model/predictions/MatMul:product:00model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"model/predictions/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^model/conv1d/BiasAdd/ReadVariableOp0^model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp&^model/conv1d_1/BiasAdd/ReadVariableOp2^model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp!^model/embedding/embedding_lookup)^model/predictions/BiasAdd/ReadVariableOp(^model/predictions/MatMul/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2J
#model/conv1d/BiasAdd/ReadVariableOp#model/conv1d/BiasAdd/ReadVariableOp2b
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2N
%model/conv1d_1/BiasAdd/ReadVariableOp%model/conv1d_1/BiasAdd/ReadVariableOp2f
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2T
(model/predictions/BiasAdd/ReadVariableOp(model/predictions/BiasAdd/ReadVariableOp2R
'model/predictions/MatMul/ReadVariableOp'model/predictions/MatMul/ReadVariableOp2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_163173

inputs

identity_1\
IdentityIdentityinputs*
T0*5
_output_shapes#
!:???????????????????i

Identity_1IdentityIdentity:output:0*
T0*5
_output_shapes#
!:???????????????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?'
?
A__inference_model_layer_call_and_return_conditional_losses_162228
input_1	%
embedding_162201:???%
conv1d_162205:??
conv1d_162207:	?'
conv1d_1_162210:??
conv1d_1_162212:	? 
dense_162216:
??
dense_162218:	?%
predictions_162222:	? 
predictions_162224:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_162201*
Tin
2	*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_161857?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_162058?
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_162205conv1d_162207*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_161884?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_162210conv1d_1_162212*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_161906?
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_161838?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_162216dense_162218*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_161924?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_162005?
#predictions/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0predictions_162222predictions_162224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_161947{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?

?
&__inference_model_layer_call_fn_161975
input_1	
unknown:???!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_161954o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?
c
*__inference_dropout_1_layer_call_fn_163276

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_162005p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
-
__inference__destroyer_163345
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
-
__inference__destroyer_163330
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_163293

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_163246

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_162663
input_5
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_161828o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_embedding_layer_call_fn_163149

inputs	
unknown:???
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_161857}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
E__inference_embedding_layer_call_and_return_conditional_losses_161857

inputs	,
embedding_lookup_161851:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_161851inputs*
Tindices0	**
_class 
loc:@embedding_lookup/161851*5
_output_shapes#
!:???????????????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/161851*5
_output_shapes#
!:????????????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:????????????????????
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
G__inference_predictions_layer_call_and_return_conditional_losses_161947

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
__inference__creator_163335
identity: ??MutableHashTable
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_3048*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
Q
5__inference_global_max_pooling1d_layer_call_fn_163240

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_161838i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?$
?
A__inference_model_layer_call_and_return_conditional_losses_161954

inputs	%
embedding_161858:???%
conv1d_161885:??
conv1d_161887:	?'
conv1d_1_161907:??
conv1d_1_161909:	? 
dense_161925:
??
dense_161927:	?%
predictions_161948:	? 
predictions_161950:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_161858*
Tin
2	*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_161857?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_161866?
conv1d/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_161885conv1d_161887*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_161884?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_161907conv1d_1_161909*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_161906?
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_161838?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_161925dense_161927*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_161924?
dropout_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_161935?
#predictions/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0predictions_161948predictions_161950*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_161947{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
(__inference_model_4_layer_call_fn_162492
input_5
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_162432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
!__inference__wrapped_model_161828
input_5W
Smodel_4_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleX
Tmodel_4_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	4
0model_4_text_vectorization_string_lookup_equal_y7
3model_4_text_vectorization_string_lookup_selectv2_t	D
/model_4_model_embedding_embedding_lookup_161781:???X
@model_4_model_conv1d_conv1d_expanddims_1_readvariableop_resource:??C
4model_4_model_conv1d_biasadd_readvariableop_resource:	?Z
Bmodel_4_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:??E
6model_4_model_conv1d_1_biasadd_readvariableop_resource:	?F
2model_4_model_dense_matmul_readvariableop_resource:
??B
3model_4_model_dense_biasadd_readvariableop_resource:	?K
8model_4_model_predictions_matmul_readvariableop_resource:	?G
9model_4_model_predictions_biasadd_readvariableop_resource:
identity??+model_4/model/conv1d/BiasAdd/ReadVariableOp?7model_4/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?-model_4/model/conv1d_1/BiasAdd/ReadVariableOp?9model_4/model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?*model_4/model/dense/BiasAdd/ReadVariableOp?)model_4/model/dense/MatMul/ReadVariableOp?(model_4/model/embedding/embedding_lookup?0model_4/model/predictions/BiasAdd/ReadVariableOp?/model_4/model/predictions/MatMul/ReadVariableOp?Fmodel_4/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
"model_4/text_vectorization/SqueezeSqueezeinput_5*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????m
,model_4/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
4model_4/text_vectorization/StringSplit/StringSplitV2StringSplitV2+model_4/text_vectorization/Squeeze:output:05model_4/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
:model_4/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
<model_4/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
<model_4/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
4model_4/text_vectorization/StringSplit/strided_sliceStridedSlice>model_4/text_vectorization/StringSplit/StringSplitV2:indices:0Cmodel_4/text_vectorization/StringSplit/strided_slice/stack:output:0Emodel_4/text_vectorization/StringSplit/strided_slice/stack_1:output:0Emodel_4/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
<model_4/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>model_4/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>model_4/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6model_4/text_vectorization/StringSplit/strided_slice_1StridedSlice<model_4/text_vectorization/StringSplit/StringSplitV2:shape:0Emodel_4/text_vectorization/StringSplit/strided_slice_1/stack:output:0Gmodel_4/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Gmodel_4/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
]model_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast=model_4/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
_model_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast?model_4/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
gmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeamodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
gmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
fmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdpmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0pmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
kmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
imodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateromodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0tmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
fmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastmmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
imodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
emodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxamodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
gmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
emodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2nmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0pmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
emodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuljmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0imodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
imodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumcmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0imodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
imodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumcmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0mmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
imodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
jmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountamodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0mmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0rmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
dmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_model_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumqmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0mmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
hmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
dmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
_model_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2qmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0emodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0mmodel_4/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Fmodel_4/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Smodel_4_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle=model_4/text_vectorization/StringSplit/StringSplitV2:values:0Tmodel_4_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
.model_4/text_vectorization/string_lookup/EqualEqual=model_4/text_vectorization/StringSplit/StringSplitV2:values:00model_4_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
1model_4/text_vectorization/string_lookup/SelectV2SelectV22model_4/text_vectorization/string_lookup/Equal:z:03model_4_text_vectorization_string_lookup_selectv2_tOmodel_4/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
1model_4/text_vectorization/string_lookup/IdentityIdentity:model_4/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????y
7model_4/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
/model_4/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
>model_4/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor8model_4/text_vectorization/RaggedToTensor/Const:output:0:model_4/text_vectorization/string_lookup/Identity:output:0@model_4/text_vectorization/RaggedToTensor/default_value:output:0?model_4/text_vectorization/StringSplit/strided_slice_1:output:0=model_4/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
(model_4/model/embedding/embedding_lookupResourceGather/model_4_model_embedding_embedding_lookup_161781Gmodel_4/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*B
_class8
64loc:@model_4/model/embedding/embedding_lookup/161781*-
_output_shapes
:???????????*
dtype0?
1model_4/model/embedding/embedding_lookup/IdentityIdentity1model_4/model/embedding/embedding_lookup:output:0*
T0*B
_class8
64loc:@model_4/model/embedding/embedding_lookup/161781*-
_output_shapes
:????????????
3model_4/model/embedding/embedding_lookup/Identity_1Identity:model_4/model/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:????????????
model_4/model/dropout/IdentityIdentity<model_4/model/embedding/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:???????????u
*model_4/model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&model_4/model/conv1d/Conv1D/ExpandDims
ExpandDims'model_4/model/dropout/Identity:output:03model_4/model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
7model_4/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp@model_4_model_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0n
,model_4/model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
(model_4/model/conv1d/Conv1D/ExpandDims_1
ExpandDims?model_4/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:05model_4/model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model_4/model/conv1d/Conv1DConv2D/model_4/model/conv1d/Conv1D/ExpandDims:output:01model_4/model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
#model_4/model/conv1d/Conv1D/SqueezeSqueeze$model_4/model/conv1d/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
+model_4/model/conv1d/BiasAdd/ReadVariableOpReadVariableOp4model_4_model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_4/model/conv1d/BiasAddBiasAdd,model_4/model/conv1d/Conv1D/Squeeze:output:03model_4/model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:????????????
model_4/model/conv1d/ReluRelu%model_4/model/conv1d/BiasAdd:output:0*
T0*-
_output_shapes
:???????????w
,model_4/model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(model_4/model/conv1d_1/Conv1D/ExpandDims
ExpandDims'model_4/model/conv1d/Relu:activations:05model_4/model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
9model_4/model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpBmodel_4_model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0p
.model_4/model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
*model_4/model/conv1d_1/Conv1D/ExpandDims_1
ExpandDimsAmodel_4/model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:07model_4/model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model_4/model/conv1d_1/Conv1DConv2D1model_4/model/conv1d_1/Conv1D/ExpandDims:output:03model_4/model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????5?*
paddingVALID*
strides
?
%model_4/model/conv1d_1/Conv1D/SqueezeSqueeze&model_4/model/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:?????????5?*
squeeze_dims

??????????
-model_4/model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp6model_4_model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_4/model/conv1d_1/BiasAddBiasAdd.model_4/model/conv1d_1/Conv1D/Squeeze:output:05model_4/model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????5??
model_4/model/conv1d_1/ReluRelu'model_4/model/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????5?z
8model_4/model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
&model_4/model/global_max_pooling1d/MaxMax)model_4/model/conv1d_1/Relu:activations:0Amodel_4/model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
)model_4/model/dense/MatMul/ReadVariableOpReadVariableOp2model_4_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model_4/model/dense/MatMulMatMul/model_4/model/global_max_pooling1d/Max:output:01model_4/model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*model_4/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_4_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_4/model/dense/BiasAddBiasAdd$model_4/model/dense/MatMul:product:02model_4/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
model_4/model/dense/ReluRelu$model_4/model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
 model_4/model/dropout_1/IdentityIdentity&model_4/model/dense/Relu:activations:0*
T0*(
_output_shapes
:???????????
/model_4/model/predictions/MatMul/ReadVariableOpReadVariableOp8model_4_model_predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 model_4/model/predictions/MatMulMatMul)model_4/model/dropout_1/Identity:output:07model_4/model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
0model_4/model/predictions/BiasAdd/ReadVariableOpReadVariableOp9model_4_model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
!model_4/model/predictions/BiasAddBiasAdd*model_4/model/predictions/MatMul:product:08model_4/model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????y
IdentityIdentity*model_4/model/predictions/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp,^model_4/model/conv1d/BiasAdd/ReadVariableOp8^model_4/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp.^model_4/model/conv1d_1/BiasAdd/ReadVariableOp:^model_4/model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+^model_4/model/dense/BiasAdd/ReadVariableOp*^model_4/model/dense/MatMul/ReadVariableOp)^model_4/model/embedding/embedding_lookup1^model_4/model/predictions/BiasAdd/ReadVariableOp0^model_4/model/predictions/MatMul/ReadVariableOpG^model_4/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2Z
+model_4/model/conv1d/BiasAdd/ReadVariableOp+model_4/model/conv1d/BiasAdd/ReadVariableOp2r
7model_4/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp7model_4/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2^
-model_4/model/conv1d_1/BiasAdd/ReadVariableOp-model_4/model/conv1d_1/BiasAdd/ReadVariableOp2v
9model_4/model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp9model_4/model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_4/model/dense/BiasAdd/ReadVariableOp*model_4/model/dense/BiasAdd/ReadVariableOp2V
)model_4/model/dense/MatMul/ReadVariableOp)model_4/model/dense/MatMul/ReadVariableOp2T
(model_4/model/embedding/embedding_lookup(model_4/model/embedding/embedding_lookup2d
0model_4/model/predictions/BiasAdd/ReadVariableOp0model_4/model/predictions/BiasAdd/ReadVariableOp2b
/model_4/model/predictions/MatMul/ReadVariableOp/model_4/model/predictions/MatMul/ReadVariableOp2?
Fmodel_4/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Fmodel_4/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_conv1d_layer_call_fn_163194

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_161884}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_161906

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
(__inference_model_4_layer_call_fn_162745

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_162301o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_model_4_layer_call_fn_162330
input_5
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_162301o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_1633257
3key_value_init4392_lookuptableimportv2_table_handle/
+key_value_init4392_lookuptableimportv2_keys1
-key_value_init4392_lookuptableimportv2_values	
identity??&key_value_init4392/LookupTableImportV2?
&key_value_init4392/LookupTableImportV2LookupTableImportV23key_value_init4392_lookuptableimportv2_table_handle+key_value_init4392_lookuptableimportv2_keys-key_value_init4392_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init4392/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: :??:??2P
&key_value_init4392/LookupTableImportV2&key_value_init4392/LookupTableImportV2:"

_output_shapes

:??:"

_output_shapes

:??
?
?
,__inference_predictions_layer_call_fn_163302

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_161947o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_163271

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_161935a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?K
?
A__inference_model_layer_call_and_return_conditional_losses_163142

inputs	6
!embedding_embedding_lookup_163081:???J
2conv1d_conv1d_expanddims_1_readvariableop_resource:??5
&conv1d_biasadd_readvariableop_resource:	?L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_1_biasadd_readvariableop_resource:	?8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?=
*predictions_matmul_readvariableop_resource:	?9
+predictions_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?"predictions/BiasAdd/ReadVariableOp?!predictions/MatMul/ReadVariableOp?
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_163081inputs*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/163081*5
_output_shapes#
!:???????????????????*
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/163081*5
_output_shapes#
!:????????????????????
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????s
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:????????????????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:????????????????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsdropout/dropout/Mul_1:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????l
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d/Relu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????p
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????l
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d/MaxMaxconv1d_1/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_1/dropout/MulMuldense/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????_
dropout_1/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
predictions/MatMulMatMuldropout_1/dropout/Mul_1:z:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????k
IdentityIdentitypredictions/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

b
C__inference_dropout_layer_call_and_return_conditional_losses_162058

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @r
dropout/MulMulinputsdropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:???????????????????}
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:???????????????????w
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????g
IdentityIdentitydropout/Mul_1:z:0*
T0*5
_output_shapes#
!:???????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?'
?
A__inference_model_layer_call_and_return_conditional_losses_162124

inputs	%
embedding_162097:???%
conv1d_162101:??
conv1d_162103:	?'
conv1d_1_162106:??
conv1d_1_162108:	? 
dense_162112:
??
dense_162114:	?%
predictions_162118:	? 
predictions_162120:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_162097*
Tin
2	*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_161857?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_162058?
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_162101conv1d_162103*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_161884?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_162106conv1d_1_162108*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_161906?
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_161838?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_162112dense_162114*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_161924?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_162005?
#predictions/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0predictions_162118predictions_162120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_161947{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_161935

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?
__inference_adapt_step_162708
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
2R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2IteratorGetNext:components:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
?\
?
C__inference_model_4_layer_call_and_return_conditional_losses_162561
input_5O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
model_162541:???$
model_162543:??
model_162545:	?$
model_162547:??
model_162549:	? 
model_162551:
??
model_162553:	?
model_162555:	?
model_162557:
identity??model/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2|
text_vectorization/SqueezeSqueezeinput_5*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0model_162541model_162543model_162545model_162547model_162549model_162551model_162553model_162555model_162557*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_161954u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
;
__inference__creator_163317
identity??
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name4393*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_162005

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
&__inference_model_layer_call_fn_163028

inputs	
unknown:???!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?
	unknown_4:
??
	unknown_5:	?
	unknown_6:	?
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_162124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

?
A__inference_dense_layer_call_and_return_conditional_losses_161924

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
(__inference_dropout_layer_call_fn_163168

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_162058}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????????????22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?	
?
E__inference_embedding_layer_call_and_return_conditional_losses_163158

inputs	,
embedding_lookup_163152:???
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_163152inputs*
Tindices0	**
_class 
loc:@embedding_lookup/163152*5
_output_shapes#
!:???????????????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/163152*5
_output_shapes#
!:????????????????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:????????????????????
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_163235

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?$
?
A__inference_model_layer_call_and_return_conditional_losses_162198
input_1	%
embedding_162171:???%
conv1d_162175:??
conv1d_162177:	?'
conv1d_1_162180:??
conv1d_1_162182:	? 
dense_162186:
??
dense_162188:	?%
predictions_162192:	? 
predictions_162194:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?#predictions/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_162171*
Tin
2	*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_161857?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_161866?
conv1d/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_162175conv1d_162177*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_161884?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0conv1d_1_162180conv1d_1_162182*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_161906?
$global_max_pooling1d/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_161838?
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_162186dense_162188*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_161924?
dropout_1/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_161935?
#predictions/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0predictions_162192predictions_162194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_161947{
IdentityIdentity,predictions/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????????????: : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall:Y U
0
_output_shapes
:??????????????????
!
_user_specified_name	input_1
?
D
(__inference_dropout_layer_call_fn_163163

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_161866n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:???????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
+
__inference_<lambda>_163385
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
(__inference_model_4_layer_call_fn_162776

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:???!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:
??
	unknown_9:	?

unknown_10:	?

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_162432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_dense_layer_call_fn_163255

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_161924p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_restore_fn_163372
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_163281

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_layer_call_and_return_conditional_losses_161884

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?\
?
C__inference_model_4_layer_call_and_return_conditional_losses_162630
input_5O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
model_162610:???$
model_162612:??
model_162614:	?$
model_162616:??
model_162618:	? 
model_162620:
??
model_162622:	?
model_162624:	?
model_162626:
identity??model/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2|
text_vectorization/SqueezeSqueezeinput_5*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0model_162610model_162612model_162614model_162616model_162618model_162620model_162622model_162624model_162626*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_162124u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
G__inference_predictions_layer_call_and_return_conditional_losses_163312

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

b
C__inference_dropout_layer_call_and_return_conditional_losses_163185

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @r
dropout/MulMulinputsdropout/Const:output:0*
T0*5
_output_shapes#
!:???????????????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:???????????????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:???????????????????}
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:???????????????????w
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*5
_output_shapes#
!:???????????????????g
IdentityIdentitydropout/Mul_1:z:0*
T0*5
_output_shapes#
!:???????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????????????:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?

C__inference_model_4_layer_call_and_return_conditional_losses_162982

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	<
'model_embedding_embedding_lookup_162921:???P
8model_conv1d_conv1d_expanddims_1_readvariableop_resource:??;
,model_conv1d_biasadd_readvariableop_resource:	?R
:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:??=
.model_conv1d_1_biasadd_readvariableop_resource:	?>
*model_dense_matmul_readvariableop_resource:
??:
+model_dense_biasadd_readvariableop_resource:	?C
0model_predictions_matmul_readvariableop_resource:	??
1model_predictions_biasadd_readvariableop_resource:
identity??#model/conv1d/BiasAdd/ReadVariableOp?/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?%model/conv1d_1/BiasAdd/ReadVariableOp?1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp? model/embedding/embedding_lookup?(model/predictions/BiasAdd/ReadVariableOp?'model/predictions/MatMul/ReadVariableOp?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2{
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
 model/embedding/embedding_lookupResourceGather'model_embedding_embedding_lookup_162921?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*:
_class0
.,loc:@model/embedding/embedding_lookup/162921*-
_output_shapes
:???????????*
dtype0?
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*:
_class0
.,loc:@model/embedding/embedding_lookup/162921*-
_output_shapes
:????????????
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:???????????`
model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
model/dropout/dropout/MulMul4model/embedding/embedding_lookup/Identity_1:output:0$model/dropout/dropout/Const:output:0*
T0*-
_output_shapes
:???????????
model/dropout/dropout/ShapeShape4model/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:?
2model/dropout/dropout/random_uniform/RandomUniformRandomUniform$model/dropout/dropout/Shape:output:0*
T0*-
_output_shapes
:???????????*
dtype0i
$model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
"model/dropout/dropout/GreaterEqualGreaterEqual;model/dropout/dropout/random_uniform/RandomUniform:output:0-model/dropout/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:????????????
model/dropout/dropout/CastCast&model/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:????????????
model/dropout/dropout/Mul_1Mulmodel/dropout/dropout/Mul:z:0model/dropout/dropout/Cast:y:0*
T0*-
_output_shapes
:???????????m
"model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
model/conv1d/Conv1D/ExpandDims
ExpandDimsmodel/dropout/dropout/Mul_1:z:0+model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8model_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0f
$model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
 model/conv1d/Conv1D/ExpandDims_1
ExpandDims7model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0-model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d/Conv1DConv2D'model/conv1d/Conv1D/ExpandDims:output:0)model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
?
model/conv1d/Conv1D/SqueezeSqueezemodel/conv1d/Conv1D:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

??????????
#model/conv1d/BiasAdd/ReadVariableOpReadVariableOp,model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d/BiasAddBiasAdd$model/conv1d/Conv1D/Squeeze:output:0+model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????p
model/conv1d/ReluRelumodel/conv1d/BiasAdd:output:0*
T0*-
_output_shapes
:???????????o
$model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 model/conv1d_1/Conv1D/ExpandDims
ExpandDimsmodel/conv1d/Relu:activations:0-model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:????????????
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0h
&model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
"model/conv1d_1/Conv1D/ExpandDims_1
ExpandDims9model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d_1/Conv1DConv2D)model/conv1d_1/Conv1D/ExpandDims:output:0+model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????5?*
paddingVALID*
strides
?
model/conv1d_1/Conv1D/SqueezeSqueezemodel/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:?????????5?*
squeeze_dims

??????????
%model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d_1/BiasAddBiasAdd&model/conv1d_1/Conv1D/Squeeze:output:0-model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????5?s
model/conv1d_1/ReluRelumodel/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:?????????5?r
0model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/global_max_pooling1d/MaxMax!model/conv1d_1/Relu:activations:09model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
model/dense/MatMulMatMul'model/global_max_pooling1d/Max:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????b
model/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
model/dropout_1/dropout/MulMulmodel/dense/Relu:activations:0&model/dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????k
model/dropout_1/dropout/ShapeShapemodel/dense/Relu:activations:0*
T0*
_output_shapes
:?
4model/dropout_1/dropout/random_uniform/RandomUniformRandomUniform&model/dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0k
&model/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
$model/dropout_1/dropout/GreaterEqualGreaterEqual=model/dropout_1/dropout/random_uniform/RandomUniform:output:0/model/dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
model/dropout_1/dropout/CastCast(model/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
model/dropout_1/dropout/Mul_1Mulmodel/dropout_1/dropout/Mul:z:0 model/dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
'model/predictions/MatMul/ReadVariableOpReadVariableOp0model_predictions_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/predictions/MatMulMatMul!model/dropout_1/dropout/Mul_1:z:0/model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(model/predictions/BiasAdd/ReadVariableOpReadVariableOp1model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/predictions/BiasAddBiasAdd"model/predictions/MatMul:product:00model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"model/predictions/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^model/conv1d/BiasAdd/ReadVariableOp0^model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp&^model/conv1d_1/BiasAdd/ReadVariableOp2^model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp!^model/embedding/embedding_lookup)^model/predictions/BiasAdd/ReadVariableOp(^model/predictions/MatMul/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2J
#model/conv1d/BiasAdd/ReadVariableOp#model/conv1d/BiasAdd/ReadVariableOp2b
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2N
%model/conv1d_1/BiasAdd/ReadVariableOp%model/conv1d_1/BiasAdd/ReadVariableOp2f
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2T
(model/predictions/BiasAdd/ReadVariableOp(model/predictions/BiasAdd/ReadVariableOp2R
'model/predictions/MatMul/ReadVariableOp'model/predictions/MatMul/ReadVariableOp2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
B__inference_conv1d_layer_call_and_return_conditional_losses_163210

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#????????????????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#???????????????????*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*5
_output_shapes#
!:???????????????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:???????????????????^
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:???????????????????o
IdentityIdentityRelu:activations:0^NoOp*
T0*5
_output_shapes#
!:????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:???????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?\
?
C__inference_model_4_layer_call_and_return_conditional_losses_162301

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	!
model_162281:???$
model_162283:??
model_162285:	?$
model_162287:??
model_162289:	? 
model_162291:
??
model_162293:	?
model_162295:	?
model_162297:
identity??model/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2{
text_vectorization/SqueezeSqueezeinputs*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????      ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
model/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0model_162281model_162283model_162285model_162287model_162289model_162291model_162293model_162295model_162297*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_161954u
IdentityIdentity&model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_50
serving_default_input_5:0?????????;
model2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
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
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer_with_weights-4
layer-8
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	optimizer"
_tf_keras_network
_
 1
!2
"3
#4
$5
%6
&7
'8
(9"
trackable_list_wrapper
_
 0
!1
"2
#3
$4
%5
&6
'7
(8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
?
.trace_0
/trace_1
0trace_2
1trace_32?
(__inference_model_4_layer_call_fn_162330
(__inference_model_4_layer_call_fn_162745
(__inference_model_4_layer_call_fn_162776
(__inference_model_4_layer_call_fn_162492?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z.trace_0z/trace_1z0trace_2z1trace_3
?
2trace_0
3trace_1
4trace_2
5trace_32?
C__inference_model_4_layer_call_and_return_conditional_losses_162872
C__inference_model_4_layer_call_and_return_conditional_losses_162982
C__inference_model_4_layer_call_and_return_conditional_losses_162561
C__inference_model_4_layer_call_and_return_conditional_losses_162630?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z2trace_0z3trace_1z4trace_2z5trace_3
?B?
!__inference__wrapped_model_161828input_5"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
	optimizer
,
6serving_default"
signature_map
"
_generic_user_object
L
7	keras_api
8lookup_table
9token_counts"
_tf_keras_layer
?
:trace_02?
__inference_adapt_step_162708?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z:trace_0
"
_tf_keras_input_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
 
embeddings"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
G_random_generator"
_tf_keras_layer
?
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

!kernel
"bias
 N_jit_compiled_convolution_op"
_tf_keras_layer
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

#kernel
$bias
 U_jit_compiled_convolution_op"
_tf_keras_layer
?
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
?
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator"
_tf_keras_layer
?
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
_
 0
!1
"2
#3
$4
%5
&6
'7
(8"
trackable_list_wrapper
_
 0
!1
"2
#3
$4
%5
&6
'7
(8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ttrace_0
utrace_1
vtrace_2
wtrace_32?
&__inference_model_layer_call_fn_161975
&__inference_model_layer_call_fn_163005
&__inference_model_layer_call_fn_163028
&__inference_model_layer_call_fn_162168?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zttrace_0zutrace_1zvtrace_2zwtrace_3
?
xtrace_0
ytrace_1
ztrace_2
{trace_32?
A__inference_model_layer_call_and_return_conditional_losses_163078
A__inference_model_layer_call_and_return_conditional_losses_163142
A__inference_model_layer_call_and_return_conditional_losses_162198
A__inference_model_layer_call_and_return_conditional_losses_162228?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zxtrace_0zytrace_1zztrace_2z{trace_3
?
|iter

}beta_1

~beta_2
	decay
?learning_rate m?!m?"m?#m?$m?%m?&m?'m?(m? v?!v?"v?#v?$v?%v?&v?'v?(v?"
	optimizer
):'???2embedding/embeddings
%:#??2conv1d/kernel
:?2conv1d/bias
':%??2conv1d_1/kernel
:?2conv1d_1/bias
 :
??2dense/kernel
:?2
dense/bias
%:#	?2predictions/kernel
:2predictions/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_model_4_layer_call_fn_162330input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_4_layer_call_fn_162745inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_4_layer_call_fn_162776inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_4_layer_call_fn_162492input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_4_layer_call_and_return_conditional_losses_162872inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_4_layer_call_and_return_conditional_losses_162982inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_4_layer_call_and_return_conditional_losses_162561input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_4_layer_call_and_return_conditional_losses_162630input_5"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
$__inference_signature_wrapper_162663input_5"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
"
_generic_user_object
j
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jtf.StaticHashTable
O
?_create_resource
?_initialize
?_destroy_resourceR Z

 ??
?B?
__inference_adapt_step_162708iterator"?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_embedding_layer_call_fn_163149?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_embedding_layer_call_and_return_conditional_losses_163158?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
(__inference_dropout_layer_call_fn_163163
(__inference_dropout_layer_call_fn_163168?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
C__inference_dropout_layer_call_and_return_conditional_losses_163173
C__inference_dropout_layer_call_and_return_conditional_losses_163185?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_conv1d_layer_call_fn_163194?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_conv1d_layer_call_and_return_conditional_losses_163210?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv1d_1_layer_call_fn_163219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_163235?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
5__inference_global_max_pooling1d_layer_call_fn_163240?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_163246?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
&__inference_dense_layer_call_fn_163255?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
A__inference_dense_layer_call_and_return_conditional_losses_163266?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
*__inference_dropout_1_layer_call_fn_163271
*__inference_dropout_1_layer_call_fn_163276?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
E__inference_dropout_1_layer_call_and_return_conditional_losses_163281
E__inference_dropout_1_layer_call_and_return_conditional_losses_163293?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
,__inference_predictions_layer_call_fn_163302?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
G__inference_predictions_layer_call_and_return_conditional_losses_163312?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_model_layer_call_fn_161975input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_model_layer_call_fn_163005inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_model_layer_call_fn_163028inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_model_layer_call_fn_162168input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_model_layer_call_and_return_conditional_losses_163078inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_model_layer_call_and_return_conditional_losses_163142inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_model_layer_call_and_return_conditional_losses_162198input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_model_layer_call_and_return_conditional_losses_162228input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
?
?trace_02?
__inference__creator_163317?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_163325?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_163330?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__creator_163335?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__initializer_163340?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
?
?trace_02?
__inference__destroyer_163345?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? z?trace_0
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
?B?
*__inference_embedding_layer_call_fn_163149inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_embedding_layer_call_and_return_conditional_losses_163158inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
(__inference_dropout_layer_call_fn_163163inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_dropout_layer_call_fn_163168inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_dropout_layer_call_and_return_conditional_losses_163173inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_dropout_layer_call_and_return_conditional_losses_163185inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
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
?B?
'__inference_conv1d_layer_call_fn_163194inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_conv1d_layer_call_and_return_conditional_losses_163210inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
)__inference_conv1d_1_layer_call_fn_163219inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_163235inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
5__inference_global_max_pooling1d_layer_call_fn_163240inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_163246inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
&__inference_dense_layer_call_fn_163255inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
A__inference_dense_layer_call_and_return_conditional_losses_163266inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_dropout_1_layer_call_fn_163271inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_dropout_1_layer_call_fn_163276inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_1_layer_call_and_return_conditional_losses_163281inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_dropout_1_layer_call_and_return_conditional_losses_163293inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
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
?B?
,__inference_predictions_layer_call_fn_163302inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
G__inference_predictions_layer_call_and_return_conditional_losses_163312inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
?B?
__inference__creator_163317"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_163325"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_163330"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__creator_163335"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__initializer_163340"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference__destroyer_163345"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.:,???2Adam/embedding/embeddings/m
*:(??2Adam/conv1d/kernel/m
:?2Adam/conv1d/bias/m
,:*??2Adam/conv1d_1/kernel/m
!:?2Adam/conv1d_1/bias/m
%:#
??2Adam/dense/kernel/m
:?2Adam/dense/bias/m
*:(	?2Adam/predictions/kernel/m
#:!2Adam/predictions/bias/m
.:,???2Adam/embedding/embeddings/v
*:(??2Adam/conv1d/kernel/v
:?2Adam/conv1d/bias/v
,:*??2Adam/conv1d_1/kernel/v
!:?2Adam/conv1d_1/bias/v
%:#
??2Adam/dense/kernel/v
:?2Adam/dense/bias/v
*:(	?2Adam/predictions/kernel/v
#:!2Adam/predictions/bias/v
?B?
__inference_save_fn_163364checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_163372restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant7
__inference__creator_163317?

? 
? "? 7
__inference__creator_163335?

? 
? "? 9
__inference__destroyer_163330?

? 
? "? 9
__inference__destroyer_163345?

? 
? "? B
__inference__initializer_1633258???

? 
? "? ;
__inference__initializer_163340?

? 
? "? ?
!__inference__wrapped_model_161828s8??? !"#$%&'(0?-
&?#
!?
input_5?????????
? "-?*
(
model?
model?????????k
__inference_adapt_step_162708J9???<
5?2
0?-?
??????????IteratorSpec 
? "
 ?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_163235x#$=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
)__inference_conv1d_1_layer_call_fn_163219k#$=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
B__inference_conv1d_layer_call_and_return_conditional_losses_163210x!"=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
'__inference_conv1d_layer_call_fn_163194k!"=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
A__inference_dense_layer_call_and_return_conditional_losses_163266^%&0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_dense_layer_call_fn_163255Q%&0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dropout_1_layer_call_and_return_conditional_losses_163281^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_163293^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_1_layer_call_fn_163271Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_1_layer_call_fn_163276Q4?1
*?'
!?
inputs??????????
p
? "????????????
C__inference_dropout_layer_call_and_return_conditional_losses_163173xA?>
7?4
.?+
inputs???????????????????
p 
? "3?0
)?&
0???????????????????
? ?
C__inference_dropout_layer_call_and_return_conditional_losses_163185xA?>
7?4
.?+
inputs???????????????????
p
? "3?0
)?&
0???????????????????
? ?
(__inference_dropout_layer_call_fn_163163kA?>
7?4
.?+
inputs???????????????????
p 
? "&?#????????????????????
(__inference_dropout_layer_call_fn_163168kA?>
7?4
.?+
inputs???????????????????
p
? "&?#????????????????????
E__inference_embedding_layer_call_and_return_conditional_losses_163158r 8?5
.?+
)?&
inputs??????????????????	
? "3?0
)?&
0???????????????????
? ?
*__inference_embedding_layer_call_fn_163149e 8?5
.?+
)?&
inputs??????????????????	
? "&?#????????????????????
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_163246wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
5__inference_global_max_pooling1d_layer_call_fn_163240jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
C__inference_model_4_layer_call_and_return_conditional_losses_162561s8??? !"#$%&'(8?5
.?+
!?
input_5?????????
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_162630s8??? !"#$%&'(8?5
.?+
!?
input_5?????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_162872r8??? !"#$%&'(7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_162982r8??? !"#$%&'(7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
(__inference_model_4_layer_call_fn_162330f8??? !"#$%&'(8?5
.?+
!?
input_5?????????
p 

 
? "???????????
(__inference_model_4_layer_call_fn_162492f8??? !"#$%&'(8?5
.?+
!?
input_5?????????
p

 
? "???????????
(__inference_model_4_layer_call_fn_162745e8??? !"#$%&'(7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
(__inference_model_4_layer_call_fn_162776e8??? !"#$%&'(7?4
-?*
 ?
inputs?????????
p

 
? "???????????
A__inference_model_layer_call_and_return_conditional_losses_162198u	 !"#$%&'(A?>
7?4
*?'
input_1??????????????????	
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_162228u	 !"#$%&'(A?>
7?4
*?'
input_1??????????????????	
p

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_163078t	 !"#$%&'(@?=
6?3
)?&
inputs??????????????????	
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_layer_call_and_return_conditional_losses_163142t	 !"#$%&'(@?=
6?3
)?&
inputs??????????????????	
p

 
? "%?"
?
0?????????
? ?
&__inference_model_layer_call_fn_161975h	 !"#$%&'(A?>
7?4
*?'
input_1??????????????????	
p 

 
? "???????????
&__inference_model_layer_call_fn_162168h	 !"#$%&'(A?>
7?4
*?'
input_1??????????????????	
p

 
? "???????????
&__inference_model_layer_call_fn_163005g	 !"#$%&'(@?=
6?3
)?&
inputs??????????????????	
p 

 
? "???????????
&__inference_model_layer_call_fn_163028g	 !"#$%&'(@?=
6?3
)?&
inputs??????????????????	
p

 
? "???????????
G__inference_predictions_layer_call_and_return_conditional_losses_163312]'(0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ?
,__inference_predictions_layer_call_fn_163302P'(0?-
&?#
!?
inputs??????????
? "??????????z
__inference_restore_fn_163372Y9K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_163364?9&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
$__inference_signature_wrapper_162663~8??? !"#$%&'(;?8
? 
1?.
,
input_5!?
input_5?????????"-?*
(
model?
model?????????