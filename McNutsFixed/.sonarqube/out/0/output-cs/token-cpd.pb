�,
^D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Controllers\AuthController.cs
	namespace		 	
	McNutsAPI		
 
.		 
Controllers		 
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IUserService %
userService& 1
;1 2
public 
AuthController 
( 
IUserService *
userService+ 6
)6 7
{ 	
this 
. 
userService 
= 
userService *
;* +
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
RegisterAsync) 6
(6 7
[7 8
FromBody8 @
]@ A
RegisterViewModelB S
modelT Y
)Y Z
{ 	
if 
( 

ModelState 
. 
IsValid "
)" #
{ 
var 
result 
= 
await "
userService# .
.. /
RegisterUserAsync/ @
(@ A
modelA F
)F G
;G H
if 
( 
result 
. 
	IsSuccess $
)$ %
return 
Ok 
( 
result $
)$ %
;% &
return!! 

BadRequest!! !
(!!! "
result!!" (
)!!( )
;!!) *
}"" 
return$$ 

BadRequest$$ 
($$ 
$str$$ =
)$$= >
;$$> ?
}%% 	
['' 	
HttpPost''	 
('' 
$str'' 
)'' 
]'' 
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
CreateRolenAsync(() 9
(((9 :
[((: ;
FromBody((; C
]((C D
CreateRoleViewModel((E X
model((Y ^
)((^ _
{)) 	
if** 
(** 

ModelState** 
.** 
IsValid** "
)**" #
{++ 
var,, 
result,, 
=,, 
await,, "
userService,,# .
.,,. /
CreateRoleAsync,,/ >
(,,> ?
model,,? D
),,D E
;,,E F
if.. 
(.. 
result.. 
... 
	IsSuccess.. $
)..$ %
{// 
return00 
Ok00 
(00 
result00 $
)00$ %
;00% &
}11 
return33 

BadRequest33 !
(33! "
result33" (
)33( )
;33) *
}44 
return55 

BadRequest55 
(55 
$str55 =
)55= >
;55> ?
}66 	
[88 	
HttpPost88	 
(88 
$str88 
)88 
]88 
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' ( 
CreateUserRolenAsync99) =
(99= >
[99> ?
FromBody99? G
]99G H#
CreateUserRoleViewModel99I `
model99a f
)99f g
{:: 	
if;; 
(;; 

ModelState;; 
.;; 
IsValid;; "
);;" #
{<< 
var== 
result== 
=== 
await== "
userService==# .
.==. /
CreateUserRoleAsync==/ B
(==B C
model==C H
)==H I
;==I J
if?? 
(?? 
result?? 
.?? 
	IsSuccess?? $
)??$ %
{@@ 
returnAA 
OkAA 
(AA 
resultAA $
)AA$ %
;AA% &
}BB 
returnDD 

BadRequestDD !
(DD! "
resultDD" (
)DD( )
;DD) *
}EE 
returnFF 

BadRequestFF 
(FF 
$strFF =
)FF= >
;FF> ?
}GG 	
[II 	
HttpPostII	 
(II 
$strII 
)II 
]II 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (

LoginAsyncJJ) 3
(JJ3 4
[JJ4 5
FromBodyJJ5 =
]JJ= >
LoginViewModelJJ? M
modelJJN S
)JJS T
{KK 	
ifLL 
(LL 

ModelStateLL 
.LL 
IsValidLL "
)LL" #
{MM 
varNN 
resultNN 
=NN 
awaitNN "
userServiceNN# .
.NN. /
LoginUserAsyncNN/ =
(NN= >
modelNN> C
)NNC D
;NND E
ifPP 
(PP 
resultPP 
.PP 
	IsSuccessPP $
)PP$ %
{QQ 
returnRR 
OkRR 
(RR 
resultRR $
)RR$ %
;RR% &
}SS 
returnUU 

BadRequestUU !
(UU! "
resultUU" (
)UU( )
;UU) *
}VV 
returnXX 

BadRequestXX 
(XX 
$strXX =
)XX= >
;XX> ?
}YY 	
}[[ 
}\\ �N
`D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Controllers\ClientController.cs
	namespace 	
	McNutsAPI
 
. 
Controllers 
{ 
[ 
Route 

(
 
$str 5
)5 6
]6 7
public 

class 
ClientsController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IClientService '
_clientService( 6
;6 7
private 
readonly 
IFileService %
_fileService& 2
;2 3
public 
ClientsController  
(  !
IClientService! /
clientsService0 >
,> ?
IFileService@ L
fileServiceM X
)X Y
{ 	
_clientService 
= 
clientsService +
;+ ,
_fileService 
= 
fileService &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
ClientModel3 >
>> ?
>? @
>@ A
GetClientsAsyncB Q
(Q R
longR V
peanutIdW _
)_ `
{ 	
try 
{ 
var   
clients   
=   
await   #
_clientService  $ 2
.  2 3
GetClientsAsync  3 B
(  B C
peanutId  C K
)  K L
;  L M
return!! 
Ok!! 
(!! 
clients!! !
)!!! "
;!!" #
}"" 
catch## 
(## +
InvalidOperationClientException## 2
ex##3 5
)##5 6
{$$ 
return%% 

BadRequest%% !
(%%! "
ex%%" $
.%%$ %
Message%%% ,
)%%, -
;%%- .
}&& 
catch'' 
('' 
	Exception'' 
)'' 
{(( 
return)) 

StatusCode)) !
())! "
StatusCodes))" -
.))- .(
Status500InternalServerError)). J
,))J K
$str))L d
)))d e
;))e f
}** 
},, 	
[.. 	
HttpGet..	 
(.. 
$str.. 
).. 
].. 
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (
GetClientAsync//) 7
(//7 8
long//8 <
peanutId//= E
,//E F
long//G K
ci//L N
)//N O
{00 	
try11 
{22 
var33 
client33 
=33 
await33 "
_clientService33# 1
.331 2
GetClientAsync332 @
(33@ A
peanutId33A I
,33I J
ci33K M
)33M N
;33N O
return44 
Ok44 
(44 
client44  
)44  !
;44! "
}55 
catch66 
(66 #
NotFoundClientException66 *
ex66+ -
)66- .
{77 
return88 

BadRequest88 !
(88! "
ex88" $
.88$ %
Message88% ,
)88, -
;88- .
}99 
catch:: 
(:: 
	Exception:: 
):: 
{;; 
return<< 

StatusCode<< !
(<<! "
StatusCodes<<" -
.<<- .(
Status500InternalServerError<<. J
,<<J K
$str<<L d
)<<d e
;<<e f
}== 
}>> 	
[GG 	
HttpPostGG	 
]GG 
publicHH 
asyncHH 
TaskHH 
<HH 
ActionResultHH &
<HH& '
ClientModelHH' 2
>HH2 3
>HH3 4
CreateTeamFormAsyncHH5 H
(HHH I
longHHI M
peanutIdHHN V
,HHV W
[HHX Y
FromFormHHY a
]HHa b
ClientFormModelHHc r
	newClientHHs |
)HH| }
{II 	
tryJJ 
{KK 
ifLL 
(LL 
!LL 

ModelStateLL 
.LL  
IsValidLL  '
)LL' (
returnMM 

BadRequestMM %
(MM% &

ModelStateMM& 0
)MM0 1
;MM1 2
ifOO 
(OO 
	newClientOO 
.OO 
ImageOO "
!=OO" $
nullOO$ (
)OO( )
{PP 
varQQ 
fileQQ 
=QQ 
	newClientQQ (
.QQ( )
ImageQQ) .
;QQ. /
stringRR 
	imagePathRR $
=RR% &
_fileServiceRR' 3
.RR3 4

UploadFileRR4 >
(RR> ?
fileRR? C
)RRC D
;RRD E
	newClientSS 
.SS 
	ImagePathSS '
=SS( )
	imagePathSS* 3
;SS3 4
}TT 
varUU 
createdClientUU !
=UU" #
awaitUU$ )
_clientServiceUU* 8
.UU8 9
CreateClientAsyncUU9 J
(UUJ K
peanutIdUUK S
,UUS T
	newClientUUT ]
)UU] ^
;UU^ _
returnVV 
CreatedVV 
(VV 
$"VV !
$strVV! .
{VV. /
peanutIdVV/ 7
}VV7 8
$strVV8 A
{VVA B
createdClientVVB O
.VVO P
CiVVP R
}VVR S
"VVS T
,VVT U
createdClientVVV c
)VVc d
;VVd e
}WW 
catchXX 
(XX 
	ExceptionXX 
)XX 
{YY 
returnZZ 

StatusCodeZZ !
(ZZ! "
StatusCodesZZ" -
.ZZ- .(
Status500InternalServerErrorZZ. J
,ZZJ K
$strZZL l
)ZZl m
;ZZm n
}[[ 
}\\ 	
[^^ 	
HttpPut^^	 
(^^ 
$str^^ 
)^^ 
]^^ 
public__ 
async__ 
Task__ 
<__ 
ActionResult__ &
<__& '
ClientModel__' 2
>__2 3
>__3 4
UpdateClientAsync__5 F
(__F G
long__G K
peanutId__L T
,__T U
long__V Z
ci__[ ]
,__] ^
[___ `
FromForm__` h
]__h i
ClientFormModel__j y
updateClient	__z �
)
__� �
{`` 	
tryaa 
{bb 
ifcc 
(cc 
!cc 

ModelStatecc 
.cc  
IsValidcc  '
)cc' (
returndd 

BadRequestdd %
(dd% &

ModelStatedd& 0
)dd0 1
;dd1 2
ifff 
(ff 
updateClientff  
.ff  !
Imageff! &
!=ff' )
nullff* .
)ff. /
{gg 
varhh 
filehh 
=hh 
updateClienthh +
.hh+ ,
Imagehh, 1
;hh1 2
stringii 
	imagePathii $
=ii% &
_fileServiceii' 3
.ii3 4

UploadFileii4 >
(ii> ?
fileii? C
)iiC D
;iiD E
updateClientjj  
.jj  !
	ImagePathjj! *
=jj+ ,
	imagePathjj- 6
;jj6 7
}kk 
varll 
clientUpdatell  
=ll! "
awaitll# (
_clientServicell) 7
.ll7 8
UpdateClientAsyncll8 I
(llI J
peanutIdllJ R
,llR S
cillT V
,llV W
updateClientllX d
)lld e
;lle f
returnmm 
Okmm 
(mm 
clientUpdatemm &
)mm& '
;mm' (
}nn 
catchoo 
(oo #
NotFoundClientExceptionoo *
exoo+ -
)oo- .
{pp 
returnqq 

BadRequestqq !
(qq! "
exqq" $
.qq$ %
Messageqq% ,
)qq, -
;qq- .
}rr 
catchss 
(ss 
	Exceptionss 
)ss 
{tt 
returnuu 

StatusCodeuu !
(uu! "
StatusCodesuu" -
.uu- .(
Status500InternalServerErroruu. J
,uuJ K
$struuL d
)uud e
;uue f
}vv 
}ww 	
[
�� 	

HttpDelete
��	 
(
�� 
$str
�� 
)
��  
]
��  !
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
bool
��' +
>
��+ ,
>
��, -
DeleteClientAsync
��. ?
(
��? @
long
��@ D
peanutId
��E M
,
��M N
long
��O S
ci
��T V
)
��V W
{
�� 	
try
�� 
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "
_clientService
��# 1
.
��1 2
DeleteClientAsync
��2 C
(
��C D
peanutId
��D L
,
��L M
ci
��N P
)
��P Q
;
��Q R
return
�� 
Ok
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� %
NotFoundClientException
�� *
ex
��+ -
)
��- .
{
�� 
return
�� 

BadRequest
�� !
(
��! "
ex
��" $
.
��$ %
Message
��% ,
)
��, -
;
��- .
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L d
)
��d e
;
��e f
}
�� 
}
�� 	
}
�� 
}�� �m
`D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Controllers\PeanutController.cs
	namespace 	
	McNutsAPI
 
. 
Controllers 
{ 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PeanutsController "
:# $

Controller% /
{ 
private 
readonly 
IPeanutService '
_peanutsService( 7
;7 8
private 
readonly 
IFileService %
_fileService& 2
;2 3
public 
PeanutsController  
(  !
IPeanutService! /
peanutsService0 >
,> ?
IFileService@ L
fileServiceM X
)X Y
{ 	
_peanutsService 
= 
peanutsService ,
;, -
_fileService 
= 
fileService &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
PeanutModel3 >
>> ?
>? @
>@ A
GetPeanutsAsyncB Q
(Q R
stringR X
orderByY `
=a b
$strc g
)g h
{ 	
try 
{ 
var 
peanuts 
= 
await #
_peanutsService$ 3
.3 4
GetPeanutsAsync4 C
(C D
orderByD K
)K L
;L M
return 
Ok 
( 
peanuts !
)! "
;" #
}   
catch!! 
(!! +
InvalidOperationPeanutException!! 2
ex!!3 5
)!!5 6
{"" 
return## 

BadRequest## !
(##! "
ex##" $
.##$ %
Message##% ,
)##, -
;##- .
}$$ 
catch%% 
(%% 
	Exception%% 
)%% 
{&& 
return'' 

StatusCode'' !
(''! "
StatusCodes''" -
.''- .(
Status500InternalServerError''. J
,''J K
$str''L d
)''d e
;''e f
}(( 
}** 	
[++ 	
HttpGet++	 
(++ 
$str++ "
)++" #
]++# $
public,, 
async,, 
Task,, 
<,, 
ActionResult,, &
<,,& '
PeanutModel,,' 2
>,,2 3
>,,3 4
GetPeanutAsync,,5 C
(,,C D
long,,D H
peanutId,,I Q
),,Q R
{-- 	
try.. 
{// 
var00 
peanut00 
=00 
await00 "
_peanutsService00# 2
.002 3
GetPeanutAsync003 A
(00A B
peanutId00B J
)00J K
;00K L
return11 
Ok11 
(11 
peanut11  
)11  !
;11! "
}33 
catch44 
(44 #
NotFoundPeanutException44 *
ex44+ -
)44- .
{55 
return66 
NotFound66 
(66  
ex66  "
.66" #
Message66# *
)66* +
;66+ ,
}77 
catch88 
(88 
	Exception88 
)88 
{99 
return:: 

StatusCode:: !
(::! "
StatusCodes::" -
.::- .(
Status500InternalServerError::. J
,::J K
$str::L d
)::d e
;::e f
};; 
}== 	
[>> 	
HttpPost>>	 
]>> 
public?? 
async?? 
Task?? 
<?? 
ActionResult?? &
<??& '
PeanutModel??' 2
>??2 3
>??3 4
CreatePeanutAsync??5 F
(??F G
[??G H
FromBody??H P
]??P Q
PeanutModel??R ]
	newPeanut??^ g
)??g h
{@@ 	
tryAA 
{BB 
ifCC 
(CC 
!CC 

ModelStateCC 
.CC  
IsValidCC  '
)CC' (
returnDD 

BadRequestDD %
(DD% &

ModelStateDD& 0
)DD0 1
;DD1 2
varFF 
peanutFF 
=FF 
awaitFF "
_peanutsServiceFF# 2
.FF2 3
CreatePeanutAsyncFF3 D
(FFD E
	newPeanutFFE N
)FFN O
;FFO P
returnGG 
CreatedGG 
(GG 
$"GG !
$strGG! .
{GG. /
peanutGG/ 5
.GG5 6
IdGG6 8
}GG8 9
"GG9 :
,GG: ;
peanutGG< B
)GGB C
;GGC D
}HH 
catchII 
(II 
	ExceptionII 
)II 
{JJ 
returnKK 

StatusCodeKK !
(KK! "
StatusCodesKK" -
.KK- .(
Status500InternalServerErrorKK. J
,KKJ K
$strKKL d
)KKd e
;KKe f
}LL 
}NN 	
[SS 	
HttpPostSS	 
(SS 
$strSS 
)SS 
]SS 
publicTT 
asyncTT 
TaskTT 
<TT 
ActionResultTT &
<TT& '
PeanutModelTT' 2
>TT2 3
>TT3 4
CreateTeamFormAsyncTT5 H
(TTH I
[TTI J
FromFormTTJ R
]TTR S
PeanutFormModelTTT c
	newPeanutTTd m
)TTm n
{UU 	
tryVV 
{WW 
ifXX 
(XX 
!XX 

ModelStateXX 
.XX  
IsValidXX  '
)XX' (
returnYY 

BadRequestYY %
(YY% &

ModelStateYY& 0
)YY0 1
;YY1 2
ifZZ 
(ZZ 
	newPeanutZZ 
.ZZ 
ImageZZ "
!=ZZ" $
nullZZ$ (
)ZZ( )
{[[ 
var\\ 
file\\ 
=\\ 
	newPeanut\\ (
.\\( )
Image\\) .
;\\. /
string]] 
	imagePath]] $
=]]% &
_fileService]]' 3
.]]3 4

UploadFile]]4 >
(]]> ?
file]]? C
)]]C D
;]]D E
	newPeanut^^ 
.^^ 
	ImagePath^^ '
=^^( )
	imagePath^^* 3
;^^3 4
}__ 
var`` 
peanut`` 
=`` 
await`` "
_peanutsService``# 2
.``2 3
CreatePeanutAsync``3 D
(``D E
	newPeanut``E N
)``N O
;``O P
returnaa 
Createdaa 
(aa 
$"aa !
$straa! .
{aa. /
peanutaa/ 5
.aa5 6
Idaa6 8
}aa8 9
"aa9 :
,aa: ;
peanutaa< B
)aaB C
;aaC D
}bb 
catchcc 
(cc 
	Exceptioncc 
)cc 
{dd 
returnee 

StatusCodeee !
(ee! "
StatusCodesee" -
.ee- .(
Status500InternalServerErroree. J
,eeJ K
$streeL l
)eel m
;eem n
}ff 
}gg 	
[jj 	
HttpPutjj	 
(jj 
$strjj "
)jj" #
]jj# $
publickk 
asynckk 
Taskkk 
<kk 
ActionResultkk &
<kk& '
PeanutModelkk' 2
>kk2 3
>kk3 4!
UpdatePeanutFormAsynckk5 J
(kkJ K
longkkK O
peanutIdkkP X
,kkX Y
[kkZ [
FromFormkk[ c
]kkc d
PeanutFormModelkke t
updatePeanut	kku �
)
kk� �
{ll 	
trymm 
{nn 
ifoo 
(oo 
!oo 

ModelStateoo 
.oo  
IsValidoo  '
)oo' (
returnpp 

BadRequestpp %
(pp% &

ModelStatepp& 0
)pp0 1
;pp1 2
ifrr 
(rr 
updatePeanutrr 
.rr  
Imagerr  %
!=rr% '
nullrr' +
)rr+ ,
{ss 
vartt 
filett 
=tt 
updatePeanuttt +
.tt+ ,
Imagett, 1
;tt1 2
stringuu 
	imagePathuu $
=uu% &
_fileServiceuu' 3
.uu3 4

UploadFileuu4 >
(uu> ?
fileuu? C
)uuC D
;uuD E
updatePeanutvv  
.vv  !
	ImagePathvv! *
=vv+ ,
	imagePathvv- 6
;vv6 7
}ww 
varxx 
peanutxx 
=xx 
awaitxx "
_peanutsServicexx# 2
.xx2 3
UpdatePeanutAsyncxx3 D
(xxD E
peanutIdxxE M
,xxM N
updatePeanutxxO [
)xx[ \
;xx\ ]
returnyy 
Okyy 
(yy 
peanutyy  
)yy  !
;yy! "
}zz 
catch{{ 
({{ #
NotFoundPeanutException{{ *
ex{{+ -
){{- .
{|| 
return}} 
NotFound}} 
(}}  
ex}}  "
.}}" #
Message}}# *
)}}* +
;}}+ ,
}~~ 
catch 
( 
	Exception 
) 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L d
)
��d e
;
��e f
}
�� 
}
�� 	
[
�� 	

HttpDelete
��	 
(
�� 
$str
�� %
)
��% &
]
��& '
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
bool
��' +
>
��+ ,
>
��, -
DeletePeanutAsync
��. ?
(
��? @
long
��@ D
peanutId
��E M
)
��M N
{
�� 	
try
�� 
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "
_peanutsService
��# 2
.
��2 3
DeletePeanutAsync
��3 D
(
��D E
peanutId
��E M
)
��M N
;
��N O
return
�� 
Ok
�� 
(
�� 
result
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� %
NotFoundPeanutException
�� *
ex
��+ -
)
��- .
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L d
)
��d e
;
��e f
}
�� 
}
�� 	
[
�� 	
	HttpPatch
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
PeanutModel
��' 2
>
��2 3
>
��3 4
RestoreProduction
��5 F
(
��F G
long
��G K
peanutId
��L T
)
��T U
{
�� 	
try
�� 
{
�� 
var
�� 
peanut
�� 
=
�� 
await
�� "
_peanutsService
��# 2
.
��2 3$
RestoreProductionAsync
��3 I
(
��I J
peanutId
��J R
)
��R S
;
��S T
return
�� 
Ok
�� 
(
�� 
peanut
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L d
)
��d e
;
��e f
}
�� 
}
�� 	
[
�� 	
HttpPut
��	 
(
�� 
$str
�� .
)
��. /
]
��/ 0
public
�� 
async
�� 
Task
�� 
<
�� 
ActionResult
�� &
<
��& '
PeanutModel
��' 2
>
��2 3
>
��3 4
UpdateStockAsync
��5 E
(
��E F
long
��F J
peanutId
��K S
,
��S T
[
��U V
FromBody
��V ^
]
��^ _
long
��` d
amount
��e k
)
��k l
{
�� 	
try
�� 
{
�� 
var
�� 
peanut
�� 
=
�� 
await
�� "
_peanutsService
��# 2
.
��2 3
UpdateStockAsync
��3 C
(
��C D
peanutId
��D L
,
��L M
amount
��N T
)
��T U
;
��U V
return
�� 
Ok
�� 
(
�� 
peanut
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� 0
"InsufficientAmountPeanutsException
�� 5
ex
��6 8
)
��8 9
{
�� 
return
�� 
NotFound
�� 
(
��  
ex
��  "
.
��" #
Message
��# *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 

StatusCode
�� !
(
��! "
StatusCodes
��" -
.
��- .*
Status500InternalServerError
��. J
,
��J K
$str
��L d
)
��d e
;
��e f
}
�� 
}
�� 	
}
�� 
}�� �
YD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Data\AtomapperProfile.cs
	namespace		 	
	McNutsAPI		
 
.		 
Data		 
{

 
public 

class 
AtomapperProfile !
:! "
Profile" )
{ 
public 
AtomapperProfile 
(  
)  !
{ 	
this 
. 
	CreateMap 
< 
PeanutModel &
,& '
PeanutEntity( 4
>4 5
(5 6
)6 7
.7 8

ReverseMap8 B
(B C
)C D
;D E
this 
. 
	CreateMap 
< 
ClientModel &
,& '
ClientEntity( 4
>4 5
(5 6
)6 7
. 
	ForMember 
( 
ent 
=> !
ent" %
.% &
Peanut& ,
,, -
mod. 1
=>2 4
mod5 8
.8 9
MapFrom9 @
(@ A
modSrcA G
=>H J
newK N
PeanutEntityO [
([ \
)\ ]
{^ _
Id` b
=c d
modSrce k
.k l
PeanutIdl t
}u v
)v w
)w x
. 

ReverseMap 
( 
) 
. 
	ForMember 
( 
mod 
=> !
mod" %
.% &
PeanutId& .
,. /
ent0 3
=>4 6
ent7 :
.: ;
MapFrom; B
(B C
entSrcC I
=>J L
entSrcM S
.S T
PeanutT Z
.Z [
Id[ ]
)] ^
)^ _
;_ `
this 
. 
	CreateMap 
< !
PeanutWithClientModel 0
,0 1
PeanutEntity2 >
>> ?
(? @
)@ A
.A B

ReverseMapB L
(L M
)M N
;N O
} 	
} 
} �
^D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Data\Entities\ClientEntity.cs
	namespace 	
	McNutsAPI
 
. 
Data 
. 
Entities !
{		 
public

 

class

 
ClientEntity

 
{ 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public 
long 
Ci 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Apellido 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
Celular 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
LugarCompra !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
FechaCompra $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

ForeignKey	 
( 
$str 
) 
]  
public 
virtual 
PeanutEntity #
Peanut$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
long 
? 
CantidadCompra #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
^D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Data\Entities\PeanutEntity.cs
	namespace 	
	McNutsAPI
 
. 
Data 
. 
Entities !
{ 
public		 

class		 
PeanutEntity		 
{

 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
? 
ElaborationDate (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DateTime 
? 
ExpirationDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
long 
? 
UnitCost 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
? 
WholesalePrice #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
long 
? 
Amount 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
? 
ProductionStatus %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
DiscontinuationDate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DateTime 
? 
ProductionStartDate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
IEnumerable 
< 
ClientEntity '
>' (
Clients) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
XD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Data\PeanutDbContext.cs
	namespace		 	
	McNutsAPI		
 
.		 
Data		 
{

 
public 

class 
PeanutDbContext  
:  !
IdentityDbContext! 2
{ 
public 
DbSet 
< 
PeanutEntity !
>! "
Peanuts# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
DbSet 
< 
ClientEntity !
>! "
Clients# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
PeanutDbContext 
( 
DbContextOptions /
</ 0
PeanutDbContext0 ?
>? @
optionsA H
)H I
:J K
baseL P
(P Q
optionsQ X
)X Y
{Y Z
}Z [
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
builder= D
)D E
{ 	
base 
. 
OnModelCreating  
(  !
builder! (
)( )
;) *
builder 
. 
Entity 
< 
PeanutEntity '
>' (
(( )
)) *
.* +
ToTable+ 2
(2 3
$str3 ;
); <
;< =
builder 
. 
Entity 
< 
PeanutEntity '
>' (
(( )
)) *
.* +
Property+ 3
(3 4
p4 5
=>6 8
p9 :
.: ;
Id; =
)= >
.> ?
ValueGeneratedOnAdd? R
(R S
)S T
;T U
builder 
. 
Entity 
< 
PeanutEntity '
>' (
(( )
)) *
.* +
HasMany+ 2
(2 3
p3 4
=>5 7
p8 9
.9 :
Clients: A
)A B
.B C
WithOneC J
(J K
cK L
=>M O
cP Q
.Q R
PeanutR X
)X Y
;Y Z
builder 
. 
Entity 
< 
ClientEntity '
>' (
(( )
)) *
.* +
ToTable+ 2
(2 3
$str3 ;
); <
;< =
builder 
. 
Entity 
< 
ClientEntity '
>' (
(( )
)) *
.* +
Property+ 3
(3 4
c4 5
=>6 8
c9 :
.: ;
Id; =
)= >
.> ?
ValueGeneratedOnAdd? R
(R S
)S T
;T U
builder 
. 
Entity 
< 
ClientEntity '
>' (
(( )
)) *
.* +
HasOne+ 1
(1 2
c2 3
=>4 6
c7 8
.8 9
Peanut9 ?
)? @
.@ A
WithManyA I
(I J
pJ K
=>L N
pO P
.P Q
ClientsQ X
)X Y
;Y Z
} 	
}   
}!! �
gD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Data\Repositories\IPeanutRepository.cs
	namespace 	
	McNutsAPI
 
. 
Data 
. 
Repositories %
{ 
public		 

	interface		 
IPeanutRepository		 &
{

 
public 
Task 
< 
IEnumerable 
<  
PeanutEntity  ,
>, -
>- .
GetPeanutsAsync/ >
(> ?
string? E
orderByF M
=N O
$strP T
)T U
;U V
public 
Task 
< 
PeanutEntity  
>  !
GetPeanutAsync" 0
(0 1
long1 5
peanutId6 >
)> ?
;? @
public 
void 
CreatePeanut  
(  !
PeanutEntity! -
	newPeanut. 7
)7 8
;8 9
public 
Task 
DeletePeanutAsync %
(% &
long& *
peanutId+ 3
)3 4
;4 5
public 
Task 
UpdatePeanutAsync %
(% &
long& *
peanutId+ 3
,3 4
PeanutEntity5 A
updatePeanutB N
)N O
;O P
public 
Task 
< 
PeanutEntity  
>  !"
RestoreProductionAsync" 8
(8 9
long9 =
peanutId> F
)F G
;G H
public 
Task 
< 
PeanutEntity  
>  !
UpdateStockAsync" 2
(2 3
long3 7
peanutId8 @
,@ A
longB F
?F G
amountH N
)N O
;O P
public 
Task 
< 
IEnumerable 
<  
ClientEntity  ,
>, -
>- .
GetClientsAsync/ >
(> ?
long? C
peanutIdD L
)L M
;M N
public 
Task 
< 
ClientEntity  
>  !
GetClientAsync" 0
(0 1
long1 5
peanutId6 >
,> ?
long@ D
ciE G
)G H
;H I
public 
void 
CreateClient  
(  !
long! %
peanutId& .
,. /
ClientEntity0 <
	newClient= F
)F G
;G H
public 
Task 
DeleteClientAsync %
(% &
long& *
peanutId+ 3
,3 4
long5 9
ci: <
)< =
;= >
public 
Task 
UpdateClientAsync %
(% &
long& *
peanutId+ 3
,3 4
long5 9
ci: <
,< =
ClientEntity> J
updateClientK W
)W X
;X Y
public 
Task 
< 
ClientEntity  
>  !
GetClientAsyncII" 2
(2 3
long3 7
peanutId8 @
,@ A
longB F
ciG I
)I J
;J K
Task 
< 
bool 
> 
SaveChangesAsync #
(# $
)$ %
;% &
}   
}!! ��
fD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Data\Repositories\PeanutRepository.cs
	namespace 	
	McNutsAPI
 
. 
Data 
. 
Repositories %
{		 
public

 

class

 
PeanutRepository

 !
:

" #
IPeanutRepository

$ 5
{ 
private 
readonly 
PeanutDbContext (

_dbContext) 3
;3 4
public 
PeanutRepository 
(  
PeanutDbContext  /
	dbContext0 9
)9 :
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
void 
CreateClient  
(  !
long! %
peanutId& .
,. /
ClientEntity0 <
	newClient= F
)F G
{ 	

_dbContext 
. 
Entry 
( 
	newClient &
.& '
Peanut' -
)- .
.. /
State/ 4
=5 6
EntityState7 B
.B C
	UnchangedC L
;L M

_dbContext 
. 
Clients 
. 
Add "
(" #
	newClient# ,
), -
;- .
} 	
public 
void 
CreatePeanut  
(  !
PeanutEntity! -
	newPeanut. 7
)7 8
{ 	

_dbContext 
. 
Peanuts 
. 
Add "
(" #
	newPeanut# ,
), -
;- .
} 	
public 
async 
Task 
DeleteClientAsync +
(+ ,
long, 0
peanutId1 9
,9 :
long; ?
ci@ B
)B C
{ 	
var 
clientToDelete 
=  
await! &

_dbContext' 1
.1 2
Clients2 9
.9 :
FirstOrDefaultAsync: M
(M N
cN O
=>P R
cS T
.T U
IdU W
==X Z
ci[ ]
)] ^
;^ _

_dbContext   
.   
Clients   
.   
Remove   %
(  % &
clientToDelete  & 4
)  4 5
;  5 6
}!! 	
public## 
async## 
Task## 
DeletePeanutAsync## +
(##+ ,
long##, 0
peanutId##1 9
)##9 :
{$$ 	

IQueryable%% 
<%% 
ClientEntity%% #
>%%# $
query%%% *
=%%+ ,

_dbContext%%- 7
.%%7 8
Clients%%8 ?
;%%? @
query&& 
=&& 
query&& 
.&& 
Where&& 
(&&  
c&&  !
=>&&" $
c&&% &
.&&& '
Peanut&&' -
.&&- .
Id&&. 0
==&&1 3
peanutId&&4 <
)&&< =
;&&= >
query'' 
='' 
query'' 
.'' 
Include'' !
(''! "
p''" #
=>''$ &
p''' (
.''( )
Peanut'') /
)''/ 0
;''0 1
var(( 
clientsToDelete(( 
=((  !
await((" '
query((( -
.((- .
ToListAsync((. 9
(((9 :
)((: ;
;((; <
var)) 
peanutToDelete)) 
=))  
await))! &

_dbContext))' 1
.))1 2
Peanuts))2 9
.))9 :

FirstAsync)): D
())D E
p))E F
=>))G I
p))J K
.))K L
Id))L N
==))O Q
peanutId))R Z
)))Z [
;))[ \
foreach** 
(** 
ClientEntity**  
client**! '
in**( *
clientsToDelete**+ :
)**: ;
{++ 

_dbContext,, 
.,, 
Clients,, "
.,," #
Remove,,# )
(,,) *
client,,* 0
),,0 1
;,,1 2
}-- 

_dbContext.. 
... 
Peanuts.. 
... 
Remove.. %
(..% &
peanutToDelete..& 4
)..4 5
;..5 6
}// 	
public11 
async11 
Task11 
<11 
ClientEntity11 &
>11& '
GetClientAsync11( 6
(116 7
long117 ;
peanutId11< D
,11D E
long11F J
ci11K M
)11M N
{22 	

IQueryable33 
<33 
ClientEntity33 #
>33# $
query33% *
=33+ ,

_dbContext33- 7
.337 8
Clients338 ?
;33? @
query44 
=44 
query44 
.44 
AsNoTracking44 &
(44& '
)44' (
;44( )
return55 
await55 
query55 
.55 
FirstOrDefaultAsync55 2
(552 3
c553 4
=>555 7
c558 9
.559 :
Peanut55: @
.55@ A
Id55A C
==55D F
peanutId55G O
&&55P R
c55S T
.55T U
Id55U W
==55X Z
ci55[ ]
)55] ^
;55^ _
}66 	
public88 
async88 
Task88 
<88 
ClientEntity88 &
>88& '
GetClientAsyncII88( 8
(888 9
long889 =
peanutId88> F
,88F G
long88H L
ci88M O
)88O P
{99 	

IQueryable:: 
<:: 
ClientEntity:: #
>::# $
query::% *
=::+ ,

_dbContext::- 7
.::7 8
Clients::8 ?
;::? @
query;; 
=;; 
query;; 
.;; 
AsNoTracking;; &
(;;& '
);;' (
;;;( )
return<< 
await<< 
query<< 
.<< 
FirstOrDefaultAsync<< 2
(<<2 3
c<<3 4
=><<5 7
c<<8 9
.<<9 :
Peanut<<: @
.<<@ A
Id<<A C
==<<D F
peanutId<<G O
&&<<P R
c<<S T
.<<T U
Ci<<U W
==<<X Z
ci<<[ ]
)<<] ^
;<<^ _
}== 	
public?? 
async?? 
Task?? 
<?? 
IEnumerable?? %
<??% &
ClientEntity??& 2
>??2 3
>??3 4
GetClientsAsync??5 D
(??D E
long??E I
peanutId??J R
)??R S
{@@ 	

IQueryableAA 
<AA 
ClientEntityAA #
>AA# $
queryAA% *
=AA+ ,

_dbContextAA- 7
.AA7 8
ClientsAA8 ?
;AA? @
queryBB 
=BB 
queryBB 
.BB 
WhereBB 
(BB  
cBB  !
=>BB" $
cBB% &
.BB& '
PeanutBB' -
.BB- .
IdBB. 0
==BB1 3
peanutIdBB4 <
)BB< =
;BB= >
queryCC 
=CC 
queryCC 
.CC 
IncludeCC !
(CC! "
pCC" #
=>CC$ &
pCC' (
.CC( )
PeanutCC) /
)CC/ 0
;CC0 1
queryDD 
=DD 
queryDD 
.DD 
AsNoTrackingDD &
(DD& '
)DD' (
;DD( )
returnEE 
awaitEE 
queryEE 
.EE 
ToListAsyncEE *
(EE* +
)EE+ ,
;EE, -
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
PeanutEntityHH &
>HH& '
GetPeanutAsyncHH( 6
(HH6 7
longHH7 ;
peanutIdHH< D
)HHD E
{II 	

IQueryableJJ 
<JJ 
PeanutEntityJJ #
>JJ# $
queryJJ% *
=JJ+ ,

_dbContextJJ- 7
.JJ7 8
PeanutsJJ8 ?
;JJ? @
queryKK 
=KK 
queryKK 
.KK 
AsNoTrackingKK &
(KK& '
)KK' (
;KK( )
queryLL 
=LL 
queryLL 
.LL 
IncludeLL !
(LL! "
pLL" #
=>LL$ &
pLL' (
.LL( )
ClientsLL) 0
)LL0 1
;LL1 2
returnMM 
awaitMM 
queryMM 
.MM 
FirstOrDefaultAsyncMM 2
(MM2 3
pMM3 4
=>MM5 7
pMM8 9
.MM9 :
IdMM: <
==MM= ?
peanutIdMM@ H
)MMH I
;MMI J
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
IEnumerablePP %
<PP% &
PeanutEntityPP& 2
>PP2 3
>PP3 4
GetPeanutsAsyncPP5 D
(PPD E
stringPPE K
orderByPPL S
=PPT U
$strPPV Z
)PPZ [
{QQ 	

IQueryableRR 
<RR 
PeanutEntityRR #
>RR# $
queryRR% *
=RR+ ,

_dbContextRR- 7
.RR7 8
PeanutsRR8 ?
;RR? @
querySS 
=SS 
querySS 
.SS 
AsNoTrackingSS &
(SS& '
)SS' (
;SS( )
switchTT 
(TT 
orderByTT 
.TT 
ToLowerTT #
(TT# $
)TT$ %
)TT% &
{UU 
caseVV 
$strVV 
:VV 
queryWW 
=WW 
queryWW 
.WW  
OrderByWW  '
(WW' (
tWW( )
=>WW* ,
tWW- .
.WW. /
NameWW/ 3
)WW3 4
;WW4 5
breakXX 
;XX 
caseYY 
$strYY &
:YY& '
queryZZ 
=ZZ 
queryZZ !
.ZZ! "
OrderByZZ" )
(ZZ) *
tZZ* +
=>ZZ, .
tZZ/ 0
.ZZ0 1
ElaborationDateZZ1 @
)ZZ@ A
;ZZA B
break[[ 
;[[ 
case\\ 
$str\\ %
:\\% &
query]] 
=]] 
query]] !
.]]! "
OrderBy]]" )
(]]) *
t]]* +
=>]], .
t]]/ 0
.]]0 1
ExpirationDate]]1 ?
)]]? @
;]]@ A
break^^ 
;^^ 
default__ 
:__ 
query`` 
=`` 
query`` !
.``! "
OrderBy``" )
(``) *
t``* +
=>``, .
t``/ 0
.``0 1
Id``1 3
)``3 4
;``4 5
breakaa 
;aa 
}bb 
returncc 
awaitcc 
querycc 
.cc 
ToListAsynccc *
(cc* +
)cc+ ,
;cc, -
}dd 	
publicff 
asyncff 
Taskff 
<ff 
PeanutEntityff &
>ff& '"
RestoreProductionAsyncff( >
(ff> ?
longff? C
peanutIdffD L
)ffL M
{gg 	
varhh 
peanuthh 
=hh 
awaithh 

_dbContexthh )
.hh) *
Peanutshh* 1
.hh1 2
FirstOrDefaultAsynchh2 E
(hhE F
phhF G
=>hhH J
phhK L
.hhL M
IdhhM O
==hhP R
peanutIdhhS [
)hh[ \
;hh\ ]
ifii 
(ii 
peanutii 
.ii 
DiscontinuationDateii *
==ii+ -
nullii. 2
)ii2 3
{jj 
peanutkk 
.kk 
ProductionStatuskk '
=kk( )
falsekk* /
;kk/ 0
peanutll 
.ll 
DiscontinuationDatell *
=ll+ ,
DateTimell- 5
.ll5 6
Nowll6 9
.ll9 :
ToUniversalTimell: I
(llI J
)llJ K
;llK L
peanutmm 
.mm 
Amountmm 
=mm 
$nummm  !
;mm! "
}nn 
elseoo 
{pp 
peanutqq 
.qq 
ProductionStatusqq '
=qq( )
trueqq* .
;qq. /
peanutrr 
.rr 
ProductionStartDaterr *
=rr+ ,
DateTimerr- 5
.rr5 6
Nowrr6 9
.rr9 :
ToUniversalTimerr: I
(rrI J
)rrJ K
;rrK L
peanutss 
.ss 
DiscontinuationDatess *
=ss+ ,
nullss- 1
;ss1 2
}tt 
returnuu 
peanutuu 
;uu 
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
boolxx 
>xx 
SaveChangesAsyncxx  0
(xx0 1
)xx1 2
{yy 	
tryzz 
{{{ 
var|| 
res|| 
=|| 
await|| 

_dbContext||  *
.||* +
SaveChangesAsync||+ ;
(||; <
)||< =
;||= >
return}} 
res}} 
>}} 
$num}} 
;}} 
}~~ 
catch 
( 
	Exception 
ex 
)  
{
�� 
throw
�� 
ex
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
UpdateClientAsync
�� +
(
��+ ,
long
��, 0
peanutId
��1 9
,
��9 :
long
��; ?
ci
��@ B
,
��B C
ClientEntity
��D P
updateClient
��Q ]
)
��] ^
{
�� 	
var
�� 
clientToUpdate
�� 
=
��  
await
��! &

_dbContext
��' 1
.
��1 2
Clients
��2 9
.
��9 :!
FirstOrDefaultAsync
��: M
(
��M N
c
��N O
=>
��P R
c
��S T
.
��T U
Ci
��U W
==
��X Z
ci
��[ ]
)
��] ^
;
��^ _
clientToUpdate
�� 
.
�� 
Nombre
�� !
=
��" #
updateClient
��$ 0
.
��0 1
Nombre
��1 7
??
��8 :
clientToUpdate
��; I
.
��I J
Nombre
��J P
;
��P Q
clientToUpdate
�� 
.
�� 
Apellido
�� #
=
��$ %
updateClient
��& 2
.
��2 3
Apellido
��3 ;
??
��< >
clientToUpdate
��? M
.
��M N
Apellido
��N V
;
��V W
clientToUpdate
�� 
.
�� 
Celular
�� "
=
��# $
updateClient
��% 1
.
��1 2
Celular
��2 9
??
��: <
clientToUpdate
��= K
.
��K L
Celular
��L S
;
��S T
clientToUpdate
�� 
.
�� 
LugarCompra
�� &
=
��' (
updateClient
��) 5
.
��5 6
LugarCompra
��6 A
??
��B D
clientToUpdate
��E S
.
��S T
LugarCompra
��T _
;
��_ `
clientToUpdate
�� 
.
�� 
FechaCompra
�� &
=
��' (
updateClient
��) 5
.
��5 6
FechaCompra
��6 A
??
��B D
clientToUpdate
��E S
.
��S T
FechaCompra
��T _
;
��_ `
clientToUpdate
�� 
.
�� 
CantidadCompra
�� )
=
��* +
clientToUpdate
��, :
.
��: ;
CantidadCompra
��; I
+
��J K
updateClient
��L X
.
��X Y
CantidadCompra
��Y g
??
��h j
clientToUpdate
��k y
.
��y z
CantidadCompra��z �
;��� �
clientToUpdate
�� 
.
�� 
	ImagePath
�� $
=
��% &
updateClient
��' 3
.
��3 4
	ImagePath
��4 =
??
��> @
clientToUpdate
��A O
.
��O P
	ImagePath
��P Y
;
��Y Z
}
�� 	
public
�� 
async
�� 
Task
�� 
UpdatePeanutAsync
�� +
(
��+ ,
long
��, 0
peanutId
��1 9
,
��9 :
PeanutEntity
��; G
updatePeanut
��H T
)
��T U
{
�� 	
var
�� 
peanut
�� 
=
�� 
await
�� 

_dbContext
�� )
.
��) *
Peanuts
��* 1
.
��1 2!
FirstOrDefaultAsync
��2 E
(
��E F
p
��F G
=>
��H J
p
��K L
.
��L M
Id
��M O
==
��P R
peanutId
��S [
)
��[ \
;
��\ ]
peanut
�� 
.
�� 
Name
�� 
=
�� 
updatePeanut
�� &
.
��& '
Name
��' +
??
��, .
peanut
��/ 5
.
��5 6
Name
��6 :
;
��: ;
peanut
�� 
.
�� 
ElaborationDate
�� "
=
��# $
updatePeanut
��% 1
.
��1 2
ElaborationDate
��2 A
??
��B D
peanut
��E K
.
��K L
ElaborationDate
��L [
;
��[ \
peanut
�� 
.
�� 
ExpirationDate
�� !
=
��" #
updatePeanut
��$ 0
.
��0 1
ExpirationDate
��1 ?
??
��@ B
peanut
��C I
.
��I J
ExpirationDate
��J X
;
��X Y
peanut
�� 
.
�� 
UnitCost
�� 
=
�� 
updatePeanut
�� *
.
��* +
UnitCost
��+ 3
??
��4 6
peanut
��7 =
.
��= >
UnitCost
��> F
;
��F G
peanut
�� 
.
�� 
WholesalePrice
�� !
=
��" #
updatePeanut
��$ 0
.
��0 1
WholesalePrice
��1 ?
??
��@ B
peanut
��C I
.
��I J
WholesalePrice
��J X
;
��X Y
peanut
�� 
.
�� 
Amount
�� 
=
�� 
updatePeanut
�� (
.
��( )
Amount
��) /
??
��0 2
peanut
��3 9
.
��9 :
Amount
��: @
;
��@ A
peanut
�� 
.
�� 
ProductionStatus
�� #
=
��$ %
updatePeanut
��& 2
.
��2 3
ProductionStatus
��3 C
??
��D F
peanut
��G M
.
��M N
ProductionStatus
��N ^
;
��^ _
peanut
�� 
.
�� 
	ImagePath
�� 
=
�� 
updatePeanut
�� +
.
��+ ,
	ImagePath
��, 5
??
��6 8
peanut
��9 ?
.
��? @
	ImagePath
��@ I
;
��I J
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
PeanutEntity
�� &
>
��& '
UpdateStockAsync
��( 8
(
��8 9
long
��9 =
peanutId
��> F
,
��F G
long
��H L
?
��L M
amount
��N T
)
��T U
{
�� 	
var
�� 
peanut
�� 
=
�� 
await
�� 

_dbContext
�� )
.
��) *
Peanuts
��* 1
.
��1 2!
FirstOrDefaultAsync
��2 E
(
��E F
p
��F G
=>
��H J
p
��K L
.
��L M
Id
��M O
==
��P R
peanutId
��S [
)
��[ \
;
��\ ]
peanut
�� 
.
�� 
Amount
�� 
=
�� 
peanut
�� "
.
��" #
Amount
��# )
+
��* +
amount
��, 2
;
��2 3
return
�� 
peanut
�� 
;
�� 
}
�� 	
}
�� 
}�� �
cD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Exceptions\ClientExistException.cs
	namespace 	
	MCNutsAPI
 
. 

Exceptions 
{ 
public 

class  
ClientExistException %
:& '
	Exception( 1
{		 
public

  
ClientExistException

 #
(

# $
string

$ *
message

+ 2
)

2 3
:

4 5
base

6 :
(

: ;
message

; B
)

B C
{ 	
} 	
} 
} �
TD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Exceptions\Empty.cs
	namespace 	
	McNutsAPI
 
. 

Exceptions 
{ 
public 

class 
Empty 
: 
	Exception "
{		 
public

 
Empty

 
(

 
string

 
message

 #
)

# $
:

% &
base

' +
(

+ ,
message

, 3
)

3 4
{ 	
} 	
} 
} �
hD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Exceptions\InsufficientAmountPeanuts.cs
	namespace 	
	McNutsAPI
 
. 

Exceptions 
{ 
public 

class .
"InsufficientAmountPeanutsException 3
:4 5
	Exception6 ?
{		 
public

 .
"InsufficientAmountPeanutsException

 1
(

1 2
string

2 8
message

9 @
)

@ A
:

B C
base

D H
(

H I
message

I P
)

P Q
{ 	
} 	
} 
} �
nD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Exceptions\InvalidOperationClientException.cs
	namespace 	
	McNutsAPI
 
. 

Exceptions 
{ 
public 

class +
InvalidOperationClientException 0
:1 2
	Exception3 <
{		 
public

 +
InvalidOperationClientException

 .
(

. /
string

/ 5
message

6 =
)

= >
:

? @
base

A E
(

E F
message

F M
)

M N
{ 	
} 	
} 
} �
nD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Exceptions\InvalidOperationPeanutException.cs
	namespace 	
	McNutsAPI
 
. 

Exceptions 
{ 
public 

class +
InvalidOperationPeanutException 0
:1 2
	Exception3 <
{		 
public

 +
InvalidOperationPeanutException

 .
(

. /
string

/ 5
message

6 =
)

= >
:

? @
base

A E
(

E F
message

F M
)

M N
{ 	
} 	
} 
} �
fD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Exceptions\NotFoundClientException.cs
	namespace 	
	McNutsAPI
 
. 

Exceptions 
{ 
public 

class #
NotFoundClientException (
:) *
	Exception+ 4
{		 
public

 #
NotFoundClientException

 &
(

& '
string

' -
message

. 5
)

5 6
:

7 8
base

9 =
(

= >
message

> E
)

E F
{ 	
} 	
} 
} �
fD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Exceptions\NotFoundPeanutException.cs
	namespace 	
	McNutsAPI
 
. 

Exceptions 
{ 
public 

class #
NotFoundPeanutException (
:) *
	Exception+ 4
{		 
public

 #
NotFoundPeanutException

 &
(

& '
string

' -
message

. 5
)

5 6
:

7 8
base

9 =
(

= >
message

> E
)

E F
{ 	
} 	
} 
} ��
kD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Migrations\20210617023108_InitialCreate.cs
	namespace 	
	McNutsAPI
 
. 

Migrations 
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
	maxLength1 :
:: ;
$num< ?
,? @
nullableA I
:I J
trueK O
)O P
,P Q
NormalizedEmail   #
=  $ %
table  & +
.  + ,
Column  , 2
<  2 3
string  3 9
>  9 :
(  : ;
	maxLength  ; D
:  D E
$num  F I
,  I J
nullable  K S
:  S T
true  U Y
)  Y Z
,  Z [
EmailConfirmed!! "
=!!# $
table!!% *
.!!* +
Column!!+ 1
<!!1 2
bool!!2 6
>!!6 7
(!!7 8
nullable!!8 @
:!!@ A
false!!B G
)!!G H
,!!H I
PasswordHash""  
=""! "
table""# (
.""( )
Column"") /
<""/ 0
string""0 6
>""6 7
(""7 8
nullable""8 @
:""@ A
true""B F
)""F G
,""G H
SecurityStamp## !
=##" #
table##$ )
.##) *
Column##* 0
<##0 1
string##1 7
>##7 8
(##8 9
nullable##9 A
:##A B
true##C G
)##G H
,##H I
ConcurrencyStamp$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
string$$4 :
>$$: ;
($$; <
nullable$$< D
:$$D E
true$$F J
)$$J K
,$$K L
PhoneNumber%% 
=%%  !
table%%" '
.%%' (
Column%%( .
<%%. /
string%%/ 5
>%%5 6
(%%6 7
nullable%%7 ?
:%%? @
true%%A E
)%%E F
,%%F G 
PhoneNumberConfirmed&& (
=&&) *
table&&+ 0
.&&0 1
Column&&1 7
<&&7 8
bool&&8 <
>&&< =
(&&= >
nullable&&> F
:&&F G
false&&H M
)&&M N
,&&N O
TwoFactorEnabled'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
bool''4 8
>''8 9
(''9 :
nullable'': B
:''B C
false''D I
)''I J
,''J K

LockoutEnd(( 
=((  
table((! &
.((& '
Column((' -
<((- .
DateTimeOffset((. <
>((< =
(((= >
nullable((> F
:((F G
true((H L
)((L M
,((M N
LockoutEnabled)) "
=))# $
table))% *
.))* +
Column))+ 1
<))1 2
bool))2 6
>))6 7
())7 8
nullable))8 @
:))@ A
false))B G
)))G H
,))H I
AccessFailedCount** %
=**& '
table**( -
.**- .
Column**. 4
<**4 5
int**5 8
>**8 9
(**9 :
nullable**: B
:**B C
false**D I
)**I J
}++ 
,++ 
constraints,, 
:,, 
table,, "
=>,,# %
{-- 
table.. 
... 

PrimaryKey.. $
(..$ %
$str..% 5
,..5 6
x..7 8
=>..9 ;
x..< =
...= >
Id..> @
)..@ A
;..A B
}// 
)// 
;// 
migrationBuilder11 
.11 
CreateTable11 (
(11( )
name22 
:22 
$str22 
,22 
columns33 
:33 
table33 
=>33 !
new33" %
{44 
Id55 
=55 
table55 
.55 
Column55 %
<55% &
long55& *
>55* +
(55+ ,
nullable55, 4
:554 5
false556 ;
)55; <
.66 

Annotation66 #
(66# $
$str66$ 8
,668 9
$str66: @
)66@ A
,66A B
Name77 
=77 
table77  
.77  !
Column77! '
<77' (
string77( .
>77. /
(77/ 0
nullable770 8
:778 9
true77: >
)77> ?
,77? @
ElaborationDate88 #
=88$ %
table88& +
.88+ ,
Column88, 2
<882 3
DateTime883 ;
>88; <
(88< =
nullable88= E
:88E F
true88G K
)88K L
,88L M
ExpirationDate99 "
=99# $
table99% *
.99* +
Column99+ 1
<991 2
DateTime992 :
>99: ;
(99; <
nullable99< D
:99D E
true99F J
)99J K
,99K L
UnitCost:: 
=:: 
table:: $
.::$ %
Column::% +
<::+ ,
long::, 0
>::0 1
(::1 2
nullable::2 :
:::: ;
true::< @
)::@ A
,::A B
WholesalePrice;; "
=;;# $
table;;% *
.;;* +
Column;;+ 1
<;;1 2
long;;2 6
>;;6 7
(;;7 8
nullable;;8 @
:;;@ A
true;;B F
);;F G
,;;G H
Amount<< 
=<< 
table<< "
.<<" #
Column<<# )
<<<) *
long<<* .
><<. /
(<</ 0
nullable<<0 8
:<<8 9
true<<: >
)<<> ?
,<<? @
ProductionStatus== $
===% &
table==' ,
.==, -
Column==- 3
<==3 4
bool==4 8
>==8 9
(==9 :
nullable==: B
:==B C
true==D H
)==H I
,==I J
DiscontinuationDate>> '
=>>( )
table>>* /
.>>/ 0
Column>>0 6
<>>6 7
DateTime>>7 ?
>>>? @
(>>@ A
nullable>>A I
:>>I J
true>>K O
)>>O P
,>>P Q
ProductionStartDate?? '
=??( )
table??* /
.??/ 0
Column??0 6
<??6 7
DateTime??7 ?
>??? @
(??@ A
nullable??A I
:??I J
true??K O
)??O P
,??P Q
	ImagePath@@ 
=@@ 
table@@  %
.@@% &
Column@@& ,
<@@, -
string@@- 3
>@@3 4
(@@4 5
nullable@@5 =
:@@= >
true@@? C
)@@C D
}AA 
,AA 
constraintsBB 
:BB 
tableBB "
=>BB# %
{CC 
tableDD 
.DD 

PrimaryKeyDD $
(DD$ %
$strDD% 0
,DD0 1
xDD2 3
=>DD4 6
xDD7 8
.DD8 9
IdDD9 ;
)DD; <
;DD< =
}EE 
)EE 
;EE 
migrationBuilderGG 
.GG 
CreateTableGG (
(GG( )
nameHH 
:HH 
$strHH (
,HH( )
columnsII 
:II 
tableII 
=>II !
newII" %
{JJ 
IdKK 
=KK 
tableKK 
.KK 
ColumnKK %
<KK% &
intKK& )
>KK) *
(KK* +
nullableKK+ 3
:KK3 4
falseKK5 :
)KK: ;
.LL 

AnnotationLL #
(LL# $
$strLL$ 8
,LL8 9
$strLL: @
)LL@ A
,LLA B
RoleIdMM 
=MM 
tableMM "
.MM" #
ColumnMM# )
<MM) *
stringMM* 0
>MM0 1
(MM1 2
nullableMM2 :
:MM: ;
falseMM< A
)MMA B
,MMB C
	ClaimTypeNN 
=NN 
tableNN  %
.NN% &
ColumnNN& ,
<NN, -
stringNN- 3
>NN3 4
(NN4 5
nullableNN5 =
:NN= >
trueNN? C
)NNC D
,NND E

ClaimValueOO 
=OO  
tableOO! &
.OO& '
ColumnOO' -
<OO- .
stringOO. 4
>OO4 5
(OO5 6
nullableOO6 >
:OO> ?
trueOO@ D
)OOD E
}PP 
,PP 
constraintsQQ 
:QQ 
tableQQ "
=>QQ# %
{RR 
tableSS 
.SS 

PrimaryKeySS $
(SS$ %
$strSS% :
,SS: ;
xSS< =
=>SS> @
xSSA B
.SSB C
IdSSC E
)SSE F
;SSF G
tableTT 
.TT 

ForeignKeyTT $
(TT$ %
nameUU 
:UU 
$strUU F
,UUF G
columnVV 
:VV 
xVV  !
=>VV" $
xVV% &
.VV& '
RoleIdVV' -
,VV- .
principalTableWW &
:WW& '
$strWW( 5
,WW5 6
principalColumnXX '
:XX' (
$strXX) -
,XX- .
onDeleteYY  
:YY  !
ReferentialActionYY" 3
.YY3 4
CascadeYY4 ;
)YY; <
;YY< =
}ZZ 
)ZZ 
;ZZ 
migrationBuilder\\ 
.\\ 
CreateTable\\ (
(\\( )
name]] 
:]] 
$str]] (
,]]( )
columns^^ 
:^^ 
table^^ 
=>^^ !
new^^" %
{__ 
Id`` 
=`` 
table`` 
.`` 
Column`` %
<``% &
int``& )
>``) *
(``* +
nullable``+ 3
:``3 4
false``5 :
)``: ;
.aa 

Annotationaa #
(aa# $
$straa$ 8
,aa8 9
$straa: @
)aa@ A
,aaA B
UserIdbb 
=bb 
tablebb "
.bb" #
Columnbb# )
<bb) *
stringbb* 0
>bb0 1
(bb1 2
nullablebb2 :
:bb: ;
falsebb< A
)bbA B
,bbB C
	ClaimTypecc 
=cc 
tablecc  %
.cc% &
Columncc& ,
<cc, -
stringcc- 3
>cc3 4
(cc4 5
nullablecc5 =
:cc= >
truecc? C
)ccC D
,ccD E

ClaimValuedd 
=dd  
tabledd! &
.dd& '
Columndd' -
<dd- .
stringdd. 4
>dd4 5
(dd5 6
nullabledd6 >
:dd> ?
truedd@ D
)ddD E
}ee 
,ee 
constraintsff 
:ff 
tableff "
=>ff# %
{gg 
tablehh 
.hh 

PrimaryKeyhh $
(hh$ %
$strhh% :
,hh: ;
xhh< =
=>hh> @
xhhA B
.hhB C
IdhhC E
)hhE F
;hhF G
tableii 
.ii 

ForeignKeyii $
(ii$ %
namejj 
:jj 
$strjj F
,jjF G
columnkk 
:kk 
xkk  !
=>kk" $
xkk% &
.kk& '
UserIdkk' -
,kk- .
principalTablell &
:ll& '
$strll( 5
,ll5 6
principalColumnmm '
:mm' (
$strmm) -
,mm- .
onDeletenn  
:nn  !
ReferentialActionnn" 3
.nn3 4
Cascadenn4 ;
)nn; <
;nn< =
}oo 
)oo 
;oo 
migrationBuilderqq 
.qq 
CreateTableqq (
(qq( )
namerr 
:rr 
$strrr (
,rr( )
columnsss 
:ss 
tabless 
=>ss !
newss" %
{tt 
LoginProvideruu !
=uu" #
tableuu$ )
.uu) *
Columnuu* 0
<uu0 1
stringuu1 7
>uu7 8
(uu8 9
nullableuu9 A
:uuA B
falseuuC H
)uuH I
,uuI J
ProviderKeyvv 
=vv  !
tablevv" '
.vv' (
Columnvv( .
<vv. /
stringvv/ 5
>vv5 6
(vv6 7
nullablevv7 ?
:vv? @
falsevvA F
)vvF G
,vvG H
ProviderDisplayNameww '
=ww( )
tableww* /
.ww/ 0
Columnww0 6
<ww6 7
stringww7 =
>ww= >
(ww> ?
nullableww? G
:wwG H
truewwI M
)wwM N
,wwN O
UserIdxx 
=xx 
tablexx "
.xx" #
Columnxx# )
<xx) *
stringxx* 0
>xx0 1
(xx1 2
nullablexx2 :
:xx: ;
falsexx< A
)xxA B
}yy 
,yy 
constraintszz 
:zz 
tablezz "
=>zz# %
{{{ 
table|| 
.|| 

PrimaryKey|| $
(||$ %
$str||% :
,||: ;
x||< =
=>||> @
new||A D
{||E F
x||G H
.||H I
LoginProvider||I V
,||V W
x||X Y
.||Y Z
ProviderKey||Z e
}||f g
)||g h
;||h i
table}} 
.}} 

ForeignKey}} $
(}}$ %
name~~ 
:~~ 
$str~~ F
,~~F G
column 
: 
x  !
=>" $
x% &
.& '
UserId' -
,- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� '
,
��' (
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
RoleId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 9
,
��9 :
x
��; <
=>
��= ?
new
��@ C
{
��D E
x
��F G
.
��G H
UserId
��H N
,
��N O
x
��P Q
.
��Q R
RoleId
��R X
}
��Y Z
)
��Z [
;
��[ \
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
RoleId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
LoginProvider
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
nullable
��9 A
:
��A B
false
��C H
)
��H I
,
��I J
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
false
��: ?
)
��? @
,
��@ A
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
true
��; ?
)
��? @
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S
LoginProvider
��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� 
,
�� 
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
Id
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
long
��& *
>
��* +
(
��+ ,
nullable
��, 4
:
��4 5
false
��6 ;
)
��; <
.
�� 

Annotation
�� #
(
��# $
$str
��$ 8
,
��8 9
$str
��: @
)
��@ A
,
��A B
Ci
�� 
=
�� 
table
�� 
.
�� 
Column
�� %
<
��% &
long
��& *
>
��* +
(
��+ ,
nullable
��, 4
:
��4 5
false
��6 ;
)
��; <
,
��< =
Nombre
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
true
��< @
)
��@ A
,
��A B
Apellido
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
string
��, 2
>
��2 3
(
��3 4
nullable
��4 <
:
��< =
true
��> B
)
��B C
,
��C D
Celular
�� 
=
�� 
table
�� #
.
��# $
Column
��$ *
<
��* +
int
��+ .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
true
��: >
)
��> ?
,
��? @
LugarCompra
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
string
��/ 5
>
��5 6
(
��6 7
nullable
��7 ?
:
��? @
true
��A E
)
��E F
,
��F G
FechaCompra
�� 
=
��  !
table
��" '
.
��' (
Column
��( .
<
��. /
DateTime
��/ 7
>
��7 8
(
��8 9
nullable
��9 A
:
��A B
true
��C G
)
��G H
,
��H I
PeanutId
�� 
=
�� 
table
�� $
.
��$ %
Column
��% +
<
��+ ,
long
��, 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
true
��< @
)
��@ A
,
��A B
CantidadCompra
�� "
=
��# $
table
��% *
.
��* +
Column
��+ 1
<
��1 2
long
��2 6
>
��6 7
(
��7 8
nullable
��8 @
:
��@ A
true
��B F
)
��F G
,
��G H
	ImagePath
�� 
=
�� 
table
��  %
.
��% &
Column
��& ,
<
��, -
string
��- 3
>
��3 4
(
��4 5
nullable
��5 =
:
��= >
true
��? C
)
��C D
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% 0
,
��0 1
x
��2 3
=>
��4 6
x
��7 8
.
��8 9
Id
��9 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� 9
,
��9 :
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
PeanutId
��' /
,
��/ 0
principalTable
�� &
:
��& '
$str
��( 0
,
��0 1
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Restrict
��4 <
)
��< =
;
��= >
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� :
)
��: ;
;
��; <
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� *
,
��* +
table
�� 
:
�� 
$str
�� 
,
��  
column
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� 
)
�� 
;
��  
}
�� 	
}
�� 
}�� �
ZD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\ClientFormModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
{ 
public		 

class		 
ClientFormModel		  
:		  !
ClientModel		! ,
{

 
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
VD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\ClientModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
{ 
public		 

class		 
ClientModel		 
{

 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
public 
long 
Ci 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Apellido 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
Celular 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
LugarCompra !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
? 
FechaCompra $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
long 
PeanutId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
long 
? 
CantidadCompra #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
VD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\DeleteModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
{ 
public 

class 
DeleteModel 
{		 
public

 
bool

 
	IsSuccess

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
ZD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\PeanutFormModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
{ 
public		 

class		 
PeanutFormModel		  
:		! "
PeanutModel		# .
{

 
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
VD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\PeanutModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
{ 
public		 

class		 
PeanutModel		 
{

 
public 
long 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
public 
DateTime 
? 
ElaborationDate (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Date 
)  
]  !
public 
DateTime 
? 
ExpirationDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
Required	 
] 
public 
long 
? 
UnitCost 
{ 
get  #
;# $
set% (
;( )
}* +
public 
long 
? 
WholesalePrice #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
long 
? 
Amount 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
? 
ProductionStatus %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
DiscontinuationDate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DateTime 
? 
ProductionStartDate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
`D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\PeanutWithClientModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
{ 
public 

class !
PeanutWithClientModel &
:& '
PeanutModel' 2
{		 
public

 
IEnumerable

 
<

 
ClientModel

 &
>

& '
Clients

( /
{

0 1
get

2 5
;

5 6
set

7 :
;

: ;
}

< =
} 
} �
gD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\Security\CreateRoleViewModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
. 
Security #
{ 
public		 

class		 
CreateRoleViewModel		 $
{

 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
NormalizedName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} �
kD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\Security\CreateUserRoleViewModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
. 
Security #
{ 
public 

class #
CreateUserRoleViewModel (
{		 
public

 
string

 
UserId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
RoleId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
bD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\Security\LoginViewModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
. 
Security #
{ 
public		 

class		 
LoginViewModel		 
{

 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
eD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\Security\RegisterViewModel.cs
	namespace 	
	McNutsAPI
 
. 
Models 
. 
Security #
{ 
public		 

class		 
RegisterViewModel		 "
{

 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} �
gD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Models\Security\UserManagerResponse.cs
	namespace 	
	McNutsAPI
 
. 
Models 
. 
Security #
{ 
public 

class 
UserManagerResponse $
{		 
public

 
string

 
Message

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
bool 
	IsSuccess 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IEnumerable 
< 
string !
>! "
Errors# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DateTime 
? 

ExpireDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} �

KD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Program.cs
	namespace

 	
	McNutsAPI


 
{ 
public 

static 
class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} �X
ZD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\ClientService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
{ 
public 

class 
ClientService 
:  
IClientService! /
{ 
private 
IPeanutRepository !
_peanutRepository" 3
;3 4
private 
readonly 
IMapper  
_mapper! (
;( )
public 
ClientService 
( 
IPeanutRepository .
peanutRepository/ ?
,? @
IMapperA H
mapperI O
)O P
{ 	
_peanutRepository 
= 
peanutRepository  0
;0 1
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
ClientModel %
>% &
CreateClientAsync' 8
(8 9
long9 =
peanutId> F
,F G
ClientModelH S
	newClientT ]
)] ^
{ 	
await 
ValidatePeanutAsync %
(% &
peanutId& .
). /
;/ 0
	newClient 
. 
PeanutId 
=  
peanutId! )
;) *
var 
clientEntity 
= 
_mapper &
.& '
Map' *
<* +
ClientEntity+ 7
>7 8
(8 9
	newClient9 B
)B C
;C D
_peanutRepository 
. 
CreateClient *
(* +
peanutId+ 3
,3 4
clientEntity5 A
)A B
;B C
var 
result 
= 
await 
_peanutRepository 0
.0 1
SaveChangesAsync1 A
(A B
)B C
;C D
if 
( 
! 
result 
) 
{ 
string   
dataMessage   "
=  " #
$str  # 3
;  3 4
throw!! 
new!! !
ArgumentNullException!! /
(!!/ 0
dataMessage!!0 ;
)!!; <
;!!< =
}"" 
await## 
_peanutRepository## #
.### $
UpdateStockAsync##$ 4
(##4 5
peanutId##5 =
,##= >
-##? @
	newClient##@ I
.##I J
CantidadCompra##J X
)##X Y
;##Y Z
return$$ 
_mapper$$ 
.$$ 
Map$$ 
<$$ 
ClientModel$$ *
>$$* +
($$+ ,
clientEntity$$, 8
)$$8 9
;$$9 :
}%% 	
public'' 
async'' 
Task'' 
<'' 
bool'' 
>'' 
DeleteClientAsync''  1
(''1 2
long''2 6
peanutId''7 ?
,''? @
long''A E
ci''F H
)''H I
{(( 	
await)) (
ValidateClientAndPeanutAsync)) .
()). /
peanutId))/ 7
,))7 8
ci))9 ;
))); <
;))< =
await** 
_peanutRepository** #
.**# $
DeleteClientAsync**$ 5
(**5 6
peanutId**6 >
,**> ?
ci**@ B
)**B C
;**C D
var++ 
result++ 
=++ 
await++ 
_peanutRepository++ 0
.++0 1
SaveChangesAsync++1 A
(++A B
)++B C
;++C D
if,, 
(,, 
!,, 
result,, 
),, 
{-- 
string.. 
dataMessage.. "
=.." #
$str..# 3
;..3 4
throw// 
new// !
ArgumentNullException// /
(/// 0
dataMessage//0 ;
)//; <
;//< =
}00 
return11 
true11 
;11 
}22 	
public44 
async44 
Task44 
<44 
ClientModel44 %
>44% &
GetClientAsync44' 5
(445 6
long446 :
peanutId44; C
,44C D
long44E I
ci44J L
)44L M
{55 	
await66 
ValidatePeanutAsync66 %
(66% &
peanutId66& .
)66. /
;66/ 0
var77 
client77 
=77 
await77 
_peanutRepository77 0
.770 1
GetClientAsync771 ?
(77? @
peanutId77@ H
,77H I
ci77J L
)77L M
;77M N
if88 
(88 
client88 
==88 
null88 
)88 
{99 
throw:: 
new:: #
NotFoundClientException:: 1
(::1 2
$"::2 4
$str::4 I
{::I J
ci::J L
}::L M
$str::M u
{::u v
peanutId::v ~
}::~ 
"	:: �
)
::� �
;
::� �
};; 
var<< 
clientModel<< 
=<< 
_mapper<< %
.<<% &
Map<<& )
<<<) *
ClientModel<<* 5
><<5 6
(<<6 7
client<<7 =
)<<= >
;<<> ?
clientModel== 
.== 
PeanutId==  
===! "
peanutId==# +
;==+ ,
return>> 
clientModel>> 
;>> 
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
ClientModelAA %
>AA% &
GetClientAsyncIIAA' 7
(AA7 8
longAA8 <
peanutIdAA= E
,AAE F
longAAG K
ciAAL N
)AAN O
{BB 	
awaitCC 
ValidatePeanutAsyncCC %
(CC% &
peanutIdCC& .
)CC. /
;CC/ 0
varDD 
clientDD 
=DD 
awaitDD 
_peanutRepositoryDD 0
.DD0 1
GetClientAsyncIIDD1 A
(DDA B
peanutIdDDB J
,DDJ K
ciDDL N
)DDN O
;DDO P
ifEE 
(EE 
clientEE 
==EE 
nullEE 
)EE 
{FF 
throwGG 
newGG #
NotFoundClientExceptionGG 1
(GG1 2
$"GG2 4
$strGG4 I
{GGI J
ciGGJ L
}GGL M
$strGGM u
{GGu v
peanutIdGGv ~
}GG~ 
"	GG �
)
GG� �
;
GG� �
}HH 
varII 
clientModelII 
=II 
_mapperII %
.II% &
MapII& )
<II) *
ClientModelII* 5
>II5 6
(II6 7
clientII7 =
)II= >
;II> ?
clientModelJJ 
.JJ 
PeanutIdJJ  
=JJ! "
peanutIdJJ# +
;JJ+ ,
returnKK 
clientModelKK 
;KK 
}LL 	
publicNN 
asyncNN 
TaskNN 
<NN 
IEnumerableNN %
<NN% &
ClientModelNN& 1
>NN1 2
>NN2 3
GetClientsAsyncNN4 C
(NNC D
longNND H
peanutIdNNI Q
)NNQ R
{OO 	
awaitPP 
ValidatePeanutAsyncPP %
(PP% &
peanutIdPP& .
)PP. /
;PP/ 0
varQQ 
clientsQQ 
=QQ 
awaitQQ 
_peanutRepositoryQQ  1
.QQ1 2
GetClientsAsyncQQ2 A
(QQA B
peanutIdQQB J
)QQJ K
;QQK L
returnRR 
_mapperRR 
.RR 
MapRR 
<RR 
IEnumerableRR *
<RR* +
ClientModelRR+ 6
>RR6 7
>RR7 8
(RR8 9
clientsRR9 @
)RR@ A
;RRA B
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
ClientModelUU %
>UU% &
UpdateClientAsyncUU' 8
(UU8 9
longUU9 =
peanutIdUU> F
,UUF G
longUUH L
ciUUM O
,UUO P
ClientModelUUQ \
updateClientUU] i
)UUi j
{VV 	
awaitWW *
ValidateClientAndPeanutAsyncIIWW 0
(WW0 1
peanutIdWW1 9
,WW9 :
ciWW; =
)WW= >
;WW> ?
awaitXX 
_peanutRepositoryXX #
.XX# $
UpdateClientAsyncXX$ 5
(XX5 6
peanutIdXX6 >
,XX> ?
ciXX@ B
,XXB C
_mapperXXD K
.XXK L
MapXXL O
<XXO P
ClientEntityXXP \
>XX\ ]
(XX] ^
updateClientXX^ j
)XXj k
)XXk l
;XXl m
awaitYY 
_peanutRepositoryYY #
.YY# $
UpdateStockAsyncYY$ 4
(YY4 5
peanutIdYY5 =
,YY= >
updateClientYY? K
.YYK L
CantidadCompraYYL Z
)YYZ [
;YY[ \
varZZ 
resultZZ 
=ZZ 
awaitZZ 
_peanutRepositoryZZ 0
.ZZ0 1
SaveChangesAsyncZZ1 A
(ZZA B
)ZZB C
;ZZC D
if[[ 
([[ 
![[ 
result[[ 
)[[ 
{\\ 
string]] 
dataMessage]] "
=]]" #
$str]]# 3
;]]3 4
throw^^ 
new^^ !
ArgumentNullException^^ /
(^^/ 0
dataMessage^^0 ;
)^^; <
;^^< =
}__ 
return`` 
updateClient`` 
;``  
}aa 	
privatecc 
asynccc 
Taskcc 
ValidatePeanutAsynccc .
(cc. /
longcc/ 3
peanutIdcc4 <
)cc< =
{dd 	
varee 
peanutee 
=ee 
awaitee 
_peanutRepositoryee 0
.ee0 1
GetPeanutAsyncee1 ?
(ee? @
peanutIdee@ H
)eeH I
;eeI J
ifff 
(ff 
peanutff 
==ff 
nullff 
)ff 
{gg 
throwhh 
newhh #
NotFoundPeanutExceptionhh 1
(hh1 2
$"hh2 4
$strhh4 C
{hhC D
peanutIdhhD L
}hhL M
$strhhM W
"hhW X
)hhX Y
;hhY Z
}ii 
}jj 	
privatell 
asyncll 
Taskll (
ValidateClientAndPeanutAsyncll 7
(ll7 8
longll8 <
peanutIdll= E
,llE F
longllG K
clientIdllL T
)llT U
{mm 	
varnn 
clientnn 
=nn 
awaitnn 
GetClientAsyncnn -
(nn- .
peanutIdnn. 6
,nn6 7
clientIdnn8 @
)nn@ A
;nnA B
}oo 	
privateqq 
asyncqq 
Taskqq *
ValidateClientAndPeanutAsyncIIqq 9
(qq9 :
longqq: >
peanutIdqq? G
,qqG H
longqqI M
clientIdqqN V
)qqV W
{rr 	
varss 
clientss 
=ss 
awaitss 
GetClientAsyncIIss /
(ss/ 0
peanutIdss0 8
,ss8 9
clientIdss: B
)ssB C
;ssC D
}tt 	
}uu 
}vv �
XD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\FileService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
{		 
public

 

class

 
FileService

 
:

 
IFileService

 +
{ 
public 
string 

UploadFile  
(  !
	IFormFile! *
file+ /
)/ 0
{ 	
string 
	imagePath 
= 
string %
.% &
Empty& +
;+ ,
var 

folderName 
= 
Path !
.! "
Combine" )
() *
$str* 5
,5 6
$str7 ?
)? @
;@ A
var 

pathToSave 
= 
Path !
.! "
Combine" )
() *
	Directory* 3
.3 4
GetCurrentDirectory4 G
(G H
)H I
,I J

folderNameK U
)U V
;V W
if 
( 
file 
. 
Length 
> 
$num 
)  
{ 
string 
	extension  
=! "
Path# '
.' (
GetExtension( 4
(4 5
file5 9
.9 :
FileName: B
)B C
;C D
var 
fileName 
= 
$" !
{! "
Guid" &
.& '
NewGuid' .
(. /
)/ 0
.0 1
ToString1 9
(9 :
): ;
}; <
{< =
	extension= F
}F G
"G H
;H I
var 
fullPath 
= 
Path #
.# $
Combine$ +
(+ ,

pathToSave, 6
,6 7
fileName8 @
)@ A
;A B
	imagePath 
= 
Path  
.  !
Combine! (
(( )

folderName) 3
,3 4
fileName5 =
)= >
;> ?
using 
( 
var 
stream !
=" #
new$ '

FileStream( 2
(2 3
fullPath3 ;
,; <
FileMode= E
.E F
CreateF L
)L M
)M N
{ 
file 
. 
CopyTo 
(  
stream  &
)& '
;' (
} 
} 
else 
{ 
return 
$str 
; 
}   
return"" 
	imagePath"" 
;"" 
}## 	
}$$ 
}%% �
[D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\IClientService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
{ 
public		 

	interface		 
IClientService		 #
{

 
public 
Task 
< 
IEnumerable 
<  
ClientModel  +
>+ ,
>, -
GetClientsAsync. =
(= >
long> B
peanutIdC K
)K L
;L M
public 
Task 
< 
ClientModel 
>  
GetClientAsync! /
(/ 0
long0 4
peanutId5 =
,= >
long? C
ciD F
)F G
;G H
public 
Task 
< 
ClientModel 
>  
CreateClientAsync! 2
(2 3
long3 7
peanutId8 @
,@ A
ClientModelB M
	newClientN W
)W X
;X Y
public 
Task 
< 
bool 
> 
DeleteClientAsync +
(+ ,
long, 0
peanutId1 9
,9 :
long; ?
ci@ B
)B C
;C D
public 
Task 
< 
ClientModel 
>  
UpdateClientAsync! 2
(2 3
long3 7
peanutId8 @
,@ A
longB F
ciG I
,I J
ClientModelK V
updateClientW c
)c d
;d e
} 
} �
YD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\IFileService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
{ 
public 

	interface 
IFileService !
{ 
string 

UploadFile 
( 
	IFormFile #
file$ (
)( )
;) *
} 
}		 �
[D:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\IPeanutService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
{ 
public		 

	interface		 
IPeanutService		 #
{

 
public 
Task 
< 
IEnumerable 
<  
PeanutModel  +
>+ ,
>, -
GetPeanutsAsync. =
(= >
string> D
orderByE L
=M N
$strO S
)S T
;T U
public 
Task 
< !
PeanutWithClientModel )
>) *
GetPeanutAsync+ 9
(9 :
long: >
peanutId? G
)G H
;H I
public 
Task 
< 
PeanutModel 
>  
CreatePeanutAsync! 2
(2 3
PeanutModel3 >
	newPeanut? H
)H I
;I J
public 
Task 
< 
bool 
> 
DeletePeanutAsync +
(+ ,
long, 0
peanutId1 9
)9 :
;: ;
public 
Task 
< 
PeanutModel 
>  
UpdatePeanutAsync! 2
(2 3
long3 7
peanutId8 @
,@ A
PeanutModelB M
updatePeanutN Z
)Z [
;[ \
public 
Task 
< 
PeanutModel 
>  "
RestoreProductionAsync! 7
(7 8
long8 <
peanutId= E
)E F
;F G
public 
Task 
< 
PeanutModel 
>  
UpdateStockAsync! 1
(1 2
long2 6
peanutId7 ?
,? @
longA E
?E F
amountG M
)M N
;N O
} 
} �f
ZD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\PeanutService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
{ 
public 

class 
PeanutService 
:  
IPeanutService! /
{ 
private 
readonly 
IPeanutRepository *
_peanutRepository+ <
;< =
private 
IMapper 
_mapper 
;  
private 
readonly 
HashSet  
<  !
string! '
>' (!
_allowedOrderByValues) >
=? @
newA D
HashSetE L
<L M
stringM S
>S T
(T U
)U V
{ 	
$str 
, 
$str 
, 
$str 
, 
$str 
} 	
;	 

public 
PeanutService 
( 
IPeanutRepository .
mCNutsRepository/ ?
,? @
IMapperA H
mapperI O
)O P
{ 	
_peanutRepository 
= 
mCNutsRepository  0
;0 1
_mapper 
= 
mapper 
; 
} 	
public 
async 
Task 
< 
PeanutModel %
>% &
CreatePeanutAsync' 8
(8 9
PeanutModel9 D
	newPeanutE N
)N O
{ 	
var 
peanutEntity 
= 
_mapper &
.& '
Map' *
<* +
PeanutEntity+ 7
>7 8
(8 9
	newPeanut9 B
)B C
;C D
_peanutRepository   
.   
CreatePeanut   *
(  * +
_mapper  + 2
.  2 3
Map  3 6
<  6 7
PeanutEntity  7 C
>  C D
(  D E
peanutEntity  E Q
)  Q R
)  R S
;  S T
var!! 
result!! 
=!! 
await!! 
_peanutRepository!! 0
.!!0 1
SaveChangesAsync!!1 A
(!!A B
)!!B C
;!!C D
if"" 
("" 
result"" 
)"" 
{## 
return$$ 
_mapper$$ 
.$$ 
Map$$ "
<$$" #
PeanutModel$$# .
>$$. /
($$/ 0
peanutEntity$$0 <
)$$< =
;$$= >
}%% 
string&& 
dataMessage&& "
=&&" #
$str&&# 3
;&&3 4
throw'' 
new'' !
ArgumentNullException'' /
(''/ 0
dataMessage''0 ;
)''; <
;''< =
}(( 	
public** 
async** 
Task** 
<** 
bool** 
>** 
DeletePeanutAsync**  1
(**1 2
long**2 6
peanutId**7 ?
)**? @
{++ 	
await,, 
ValidatePeanutAsync,, %
(,,% &
peanutId,,& .
),,. /
;,,/ 0
await-- 
_peanutRepository-- #
.--# $
DeletePeanutAsync--$ 5
(--5 6
peanutId--6 >
)--> ?
;--? @
var.. 
result.. 
=.. 
await.. 
_peanutRepository.. 0
...0 1
SaveChangesAsync..1 A
(..A B
)..B C
;..C D
if// 
(// 
!// 
result// 
)// 
{00 
string11 
dataMessage11 "
=11" #
$str11# 3
;113 4
throw22 
new22 !
ArgumentNullException22 /
(22/ 0
dataMessage220 ;
)22; <
;22< =
}33 
return44 
true44 
;44 
}55 	
public77 
async77 
Task77 
<77 !
PeanutWithClientModel77 /
>77/ 0
GetPeanutAsync771 ?
(77? @
long77@ D
peanutId77E M
)77M N
{88 	
var99 
peanut99 
=99 
await99 
_peanutRepository99 0
.990 1
GetPeanutAsync991 ?
(99? @
peanutId99@ H
)99H I
;99I J
if:: 
(:: 
peanut:: 
==:: 
null:: 
):: 
{;; 
throw<< 
new<< #
NotFoundPeanutException<< 1
(<<1 2
$"<<2 4
$str<<4 M
{<<M N
peanutId<<N V
}<<V W
$str<<W c
"<<c d
)<<d e
;<<e f
}== 
return>> 
_mapper>> 
.>> 
Map>> 
<>> !
PeanutWithClientModel>> 4
>>>4 5
(>>5 6
peanut>>6 <
)>>< =
;>>= >
}?? 	
privateAA 
asyncAA 
TaskAA 
<AA 
PeanutModelAA &
>AA& '
GetPeanutAsyncIIAA( 8
(AA8 9
longAA9 =
peanutIdAA> F
)AAF G
{BB 	
varCC 
peanutCC 
=CC 
awaitCC 
_peanutRepositoryCC 0
.CC0 1
GetPeanutAsyncCC1 ?
(CC? @
peanutIdCC@ H
)CCH I
;CCI J
ifDD 
(DD 
peanutDD 
==DD 
nullDD 
)DD 
{EE 
throwFF 
newFF #
NotFoundPeanutExceptionFF 1
(FF1 2
$"FF2 4
$strFF4 M
{FFM N
peanutIdFFN V
}FFV W
$strFFW c
"FFc d
)FFd e
;FFe f
}GG 
varHH 
peanutIIHH 
=HH 
_mapperHH !
.HH! "
MapHH" %
<HH% &
PeanutModelHH& 1
>HH1 2
(HH2 3
peanutHH3 9
)HH9 :
;HH: ;
returnII 
peanutIIII 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IEnumerableLL %
<LL% &
PeanutModelLL& 1
>LL1 2
>LL2 3
GetPeanutsAsyncLL4 C
(LLC D
stringLLD J
orderByLLK R
=LLS T
$strLLU Y
)LLY Z
{MM 	
ifNN 
(NN 
!NN !
_allowedOrderByValuesNN &
.NN& '
ContainsNN' /
(NN/ 0
orderByNN0 7
.NN7 8
ToLowerNN8 ?
(NN? @
)NN@ A
)NNA B
)NNB C
throwOO 
newOO +
InvalidOperationPeanutExceptionOO 9
(OO9 :
$"OO: <
$strOO< Y
{OOY Z
orderByOOZ a
}OOa b
$str	OOb �
{
OO� �
String
OO� �
.
OO� �
Join
OO� �
(
OO� �
$char
OO� �
,
OO� �#
_allowedOrderByValues
OO� �
.
OO� �
ToArray
OO� �
(
OO� �
)
OO� �
)
OO� �
}
OO� �
"
OO� �
)
OO� �
;
OO� �
varPP 

entityListPP 
=PP 
awaitPP "
_peanutRepositoryPP# 4
.PP4 5
GetPeanutsAsyncPP5 D
(PPD E
orderByPPE L
.PPL M
ToLowerPPM T
(PPT U
)PPU V
)PPV W
;PPW X
varQQ 
	modelListQQ 
=QQ 
_mapperQQ #
.QQ# $
MapQQ$ '
<QQ' (
IEnumerableQQ( 3
<QQ3 4
PeanutModelQQ4 ?
>QQ? @
>QQ@ A
(QQA B

entityListQQB L
)QQL M
;QQM N
returnRR 
	modelListRR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
PeanutModelUU %
>UU% &"
RestoreProductionAsyncUU' =
(UU= >
longUU> B
peanutIdUUC K
)UUK L
{VV 	
awaitWW 
ValidatePeanutAsyncWW %
(WW% &
peanutIdWW& .
)WW. /
;WW/ 0
varXX 
resultXX 
=XX 
awaitXX 
_peanutRepositoryXX 0
.XX0 1"
RestoreProductionAsyncXX1 G
(XXG H
peanutIdXXH P
)XXP Q
;XXQ R
returnYY 
_mapperYY 
.YY 
MapYY 
<YY 
PeanutModelYY *
>YY* +
(YY+ ,
resultYY, 2
)YY2 3
;YY3 4
}[[ 	
public]] 
async]] 
Task]] 
<]] 
PeanutModel]] %
>]]% &
UpdatePeanutAsync]]' 8
(]]8 9
long]]9 =
peanutId]]> F
,]]F G
PeanutModel]]H S
updatePeanut]]T `
)]]` a
{^^ 	
await__ 
ValidatePeanutAsync__ %
(__% &
peanutId__& .
)__. /
;__/ 0
var`` 
peanut`` 
=`` 
await`` 
GetPeanutAsyncII`` /
(``/ 0
peanutId``0 8
)``8 9
;``9 :
ifaa 
(aa 
peanutaa 
.aa 
ProductionStatusaa '
==aa( *
falseaa+ 0
)aa0 1
{bb 
throwcc 
newcc #
NotFoundPeanutExceptioncc 1
(cc1 2
$"cc2 4
$strcc4 M
{ccM N
peanutIdccN V
}ccV W
$str	ccW �
"
cc� �
)
cc� �
;
cc� �
}ee 
updatePeanutff 
.ff 
Idff 
=ff 
peanutIdff &
;ff& '
awaitgg 
_peanutRepositorygg #
.gg# $
UpdatePeanutAsyncgg$ 5
(gg5 6
peanutIdgg6 >
,gg> ?
_mappergg@ G
.ggG H
MapggH K
<ggK L
PeanutEntityggL X
>ggX Y
(ggY Z
updatePeanutggZ f
)ggf g
)ggg h
;ggh i
varhh 
resulthh 
=hh 
awaithh 
_peanutRepositoryhh 0
.hh0 1
SaveChangesAsynchh1 A
(hhA B
)hhB C
;hhC D
ifii 
(ii 
!ii 
resultii 
)ii 
{jj 
stringkk 
dataMessagekk "
=kk" #
$strkk# 3
;kk3 4
throwll 
newll !
ArgumentNullExceptionll /
(ll/ 0
dataMessagell0 ;
)ll; <
;ll< =
}mm 
returnnn 
_mappernn 
.nn 
Mapnn 
<nn 
PeanutModelnn *
>nn* +
(nn+ ,
updatePeanutnn, 8
)nn8 9
;nn9 :
}oo 	
publicqq 
asyncqq 
Taskqq 
<qq 
PeanutModelqq %
>qq% &
UpdateStockAsyncqq' 7
(qq7 8
longqq8 <
peanutIdqq= E
,qqE F
longqqG K
?qqK L
amountqqM S
)qqS T
{rr 	
varss 
peanutss 
=ss 
awaitss 
GetPeanutAsyncIIss /
(ss/ 0
peanutIdss0 8
)ss8 9
;ss9 :
iftt 
(tt 
peanuttt 
.tt 
ProductionStatustt '
==tt( *
falsett+ 0
)tt0 1
{uu 
throwvv 
newvv #
NotFoundPeanutExceptionvv 1
(vv1 2
$"vv2 4
$strvv4 M
{vvM N
peanutIdvvN V
}vvV W
$str	vvW �
"
vv� �
)
vv� �
;
vv� �
}xx 
elseyy 
{zz 
if{{ 
({{ 
peanut{{ 
.{{ 
Amount{{ !
<={{" $
$num{{% &
){{& '
{|| 
throw}} 
new}} .
"InsufficientAmountPeanutsException}} @
(}}@ A
$"}}A C
$str}}C \
{}}\ ]
peanutId}}] e
}}}e f
$str	}}f �
"
}}� �
)
}}� �
;
}}� �
}~~ 
} 
var
�� 
stockUpdated
�� 
=
�� 
await
�� $
_peanutRepository
��% 6
.
��6 7
UpdateStockAsync
��7 G
(
��G H
peanutId
��H P
,
��P Q
amount
��R X
)
��X Y
;
��Y Z
var
�� 
	respuesta
�� 
=
�� 
_mapper
�� #
.
��# $
Map
��$ '
<
��' (
PeanutModel
��( 3
>
��3 4
(
��4 5
stockUpdated
��5 A
)
��A B
;
��B C
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� !
ValidatePeanutAsync
�� .
(
��. /
long
��/ 3
peanutId
��4 <
)
��< =
{
�� 	
await
�� 
GetPeanutAsync
��  
(
��  !
peanutId
��! )
)
��) *
;
��* +
}
�� 	
}
�� 
}�� �	
bD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\Security\IUserService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
. 
Security %
{ 
public		 

	interface		 
IUserService		 !
{

 
Task 
< 
UserManagerResponse  
>  !
RegisterUserAsync" 3
(3 4
RegisterViewModel4 E
modelF K
)K L
;L M
Task 
< 
UserManagerResponse  
>  !
CreateRoleAsync" 1
(1 2
CreateRoleViewModel2 E
modelF K
)K L
;L M
Task 
< 
UserManagerResponse  
>  !
LoginUserAsync" 0
(0 1
LoginViewModel1 ?
model@ E
)E F
;F G
Task 
< 
UserManagerResponse  
>  !
CreateUserRoleAsync" 5
(5 6#
CreateUserRoleViewModel6 M
modelN S
)S T
;T U
} 
} �j
aD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Services\Security\UserService.cs
	namespace 	
	McNutsAPI
 
. 
Services 
. 
Security %
{ 
public 

class 
UserService 
: 
IUserService +
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
userManager3 >
;> ?
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
roleManager3 >
;> ?
private 
readonly 
IConfiguration '
configuration( 5
;5 6
public 
UserService 
( 
UserManager &
<& '
IdentityUser' 3
>3 4
userManager5 @
,@ A
RoleManagerB M
<M N
IdentityRoleN Z
>Z [
roleManager\ g
,g h
IConfigurationi w
configuration	x �
)
� �
{ 	
this 
. 
userManager 
= 
userManager *
;* +
this 
. 
roleManager 
= 
roleManager *
;* +
this 
. 
configuration 
=  
configuration! .
;. /
} 	
public 
async 
Task 
< 
UserManagerResponse -
>- .
LoginUserAsync/ =
(= >
LoginViewModel> L
modelM R
)R S
{ 	
var 
user 
= 
await 
userManager (
.( )
FindByEmailAsync) 9
(9 :
model: ?
.? @
Email@ E
)E F
;F G
if!! 
(!! 
user!! 
==!! 
null!! 
)!! 
{"" 
return## 
new## 
UserManagerResponse## .
{$$ 
Message%% 
=%% 
$str%% H
,%%H I
	IsSuccess&& 
=&& 
false&&  %
,&&% &
}'' 
;'' 
}(( 
var** 
result** 
=** 
await** 
userManager** *
.*** +
CheckPasswordAsync**+ =
(**= >
user**> B
,**B C
model**D I
.**I J
Password**J R
)**R S
;**S T
if,, 
(,, 
!,, 
result,, 
),, 
return-- 
new-- 
UserManagerResponse-- .
{.. 
Message// 
=// 
$str// 0
,//0 1
	IsSuccess00 
=00 
false00  %
,00% &
}11 
;11 
var33 
roles33 
=33 
await33 
userManager33 )
.33) *
GetRolesAsync33* 7
(337 8
user338 <
)33< =
;33= >
var55 
claims55 
=55 
new55 
List55 !
<55! "
Claim55" '
>55' (
(55( )
)55) *
{66 
new77 
Claim77 
(77 
$str77 !
,77! "
model77# (
.77( )
Email77) .
)77. /
,77/ 0
new88 
Claim88 
(88 

ClaimTypes88 $
.88$ %
NameIdentifier88% 3
,883 4
user885 9
.889 :
Id88: <
)88< =
,88= >
}99 
;99 
foreach;; 
(;; 
var;; 
role;; 
in;;  
roles;;! &
);;& '
{<< 
claims== 
.== 
Add== 
(== 
new== 
Claim== $
(==$ %

ClaimTypes==% /
.==/ 0
Role==0 4
,==4 5
role==6 :
)==: ;
)==; <
;==< =
}>> 
varAA 
keyAA 
=AA 
newAA  
SymmetricSecurityKeyAA .
(AA. /
EncodingAA/ 7
.AA7 8
UTF8AA8 <
.AA< =
GetBytesAA= E
(AAE F
configurationAAF S
[AAS T
$strAAT f
]AAf g
)AAg h
)AAh i
;AAi j
varCC 
tokenCC 
=CC 
newCC 
JwtSecurityTokenCC ,
(CC, -
issuerDD 
:DD 
configurationDD %
[DD% &
$strDD& ;
]DD; <
,DD< =
audienceEE 
:EE 
configurationEE '
[EE' (
$strEE( ?
]EE? @
,EE@ A
claimsFF 
:FF 
claimsFF 
,FF 
expiresGG 
:GG 
DateTimeGG !
.GG! "
NowGG" %
.GG% &
AddHoursGG& .
(GG. /
$numGG/ 0
)GG0 1
,GG1 2
signingCredentialsHH "
:HH" #
newHH$ '
SigningCredentialsHH( :
(HH: ;
keyHH; >
,HH> ?
SecurityAlgorithmsHH@ R
.HHR S

HmacSha256HHS ]
)HH] ^
)HH^ _
;HH_ `
stringJJ 
tokenAsStringJJ  
=JJ! "
newJJ# &#
JwtSecurityTokenHandlerJJ' >
(JJ> ?
)JJ? @
.JJ@ A

WriteTokenJJA K
(JJK L
tokenJJL Q
)JJQ R
;JJR S
returnLL 
newLL 
UserManagerResponseLL *
{MM 
MessageNN 
=NN 
tokenAsStringNN '
,NN' (
	IsSuccessOO 
=OO 
trueOO  
,OO  !

ExpireDatePP 
=PP 
tokenPP "
.PP" #
ValidToPP# *
}QQ 
;QQ 
}RR 	
publicTT 
asyncTT 
TaskTT 
<TT 
UserManagerResponseTT -
>TT- .
RegisterUserAsyncTT/ @
(TT@ A
RegisterViewModelTTA R
modelTTS X
)TTX Y
{UU 	
ifVV 
(VV 
modelVV 
==VV 
nullVV 
)VV 
{WW 
throwXX 
newXX "
NullReferenceExceptionXX 0
(XX0 1
$strXX1 @
)XX@ A
;XXA B
}YY 
if[[ 
([[ 
model[[ 
.[[ 
Password[[ 
!=[[ !
model[[" '
.[[' (
ConfirmPassword[[( 7
)[[7 8
return\\ 
new\\ 
UserManagerResponse\\ .
{]] 
Message^^ 
=^^ 
$str^^ K
,^^K L
	IsSuccess__ 
=__ 
false__  %
,__% &
}`` 
;`` 
varbb 
identityUserbb 
=bb 
newbb "
IdentityUserbb# /
{cc 
Emaildd 
=dd 
modeldd 
.dd 
Emaildd #
,dd# $
UserNameee 
=ee 
modelee  
.ee  !
Emailee! &
}ff 
;ff 
varhh 
resulthh 
=hh 
awaithh 
userManagerhh *
.hh* +
CreateAsynchh+ 6
(hh6 7
identityUserhh7 C
,hhC D
modelhhE J
.hhJ K
PasswordhhK S
)hhS T
;hhT U
ifjj 
(jj 
resultjj 
.jj 
	Succeededjj  
)jj  !
{kk 
returnll 
newll 
UserManagerResponsell .
{mm 
Messagenn 
=nn 
$strnn :
,nn: ;
	IsSuccessoo 
=oo 
trueoo  $
,oo$ %
}pp 
;pp 
}qq 
returnss 
newss 
UserManagerResponsess *
{tt 
Messageuu 
=uu 
$struu /
,uu/ 0
	IsSuccessvv 
=vv 
falsevv !
,vv! "
Errorsww 
=ww 
resultww 
.ww  
Errorsww  &
.ww& '
Selectww' -
(ww- .
eww. /
=>ww0 2
eww3 4
.ww4 5
Descriptionww5 @
)ww@ A
}xx 
;xx 
}yy 	
public{{ 
async{{ 
Task{{ 
<{{ 
UserManagerResponse{{ -
>{{- .
CreateRoleAsync{{/ >
({{> ?
CreateRoleViewModel{{? R
model{{S X
){{X Y
{|| 	
var~~ 
identityRole~~ 
=~~ 
new~~ "
IdentityRole~~# /
(~~/ 0
)~~0 1
{ 
Name
�� 
=
�� 
model
�� 
.
�� 
Name
�� !
,
��! "
NormalizedName
�� 
=
��  
model
��! &
.
��& '
NormalizedName
��' 5
}
�� 
;
�� 
var
�� 
result
�� 
=
�� 
await
�� 
roleManager
�� *
.
��* +
CreateAsync
��+ 6
(
��6 7
identityRole
��7 C
)
��C D
;
��D E
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� :
,
��: ;
	IsSuccess
�� 
=
�� 
true
��  $
,
��$ %
}
�� 
;
�� 
}
�� 
return
�� 
new
�� !
UserManagerResponse
�� *
{
�� 
Message
�� 
=
�� 
$str
�� /
,
��/ 0
	IsSuccess
�� 
=
�� 
false
�� !
,
��! "
Errors
�� 
=
�� 
result
�� 
.
��  
Errors
��  &
.
��& '
Select
��' -
(
��- .
e
��. /
=>
��0 2
e
��3 4
.
��4 5
Description
��5 @
)
��@ A
}
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� !
UserManagerResponse
�� -
>
��- .!
CreateUserRoleAsync
��/ B
(
��B C%
CreateUserRoleViewModel
��C Z
model
��[ `
)
��` a
{
�� 	
var
�� 
role
�� 
=
�� 
await
�� 
roleManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
model
��7 <
.
��< =
RoleId
��= C
)
��C D
;
��D E
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� 3
,
��3 4
	IsSuccess
�� 
=
�� 
false
��  %
}
�� 
;
�� 
}
�� 
var
�� 
user
�� 
=
�� 
await
�� 
userManager
�� (
.
��( )
FindByIdAsync
��) 6
(
��6 7
model
��7 <
.
��< =
UserId
��= C
)
��C D
;
��D E
if
�� 
(
�� 
role
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� 3
,
��3 4
	IsSuccess
�� 
=
�� 
false
��  %
}
�� 
;
�� 
}
�� 
if
�� 
(
�� 
await
�� 
userManager
�� !
.
��! "
IsInRoleAsync
��" /
(
��/ 0
user
��0 4
,
��4 5
role
��6 :
.
��: ;
Name
��; ?
)
��? @
)
��@ A
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� 5
,
��5 6
	IsSuccess
�� 
=
�� 
false
��  %
}
�� 
;
�� 
}
�� 
var
�� 
result
�� 
=
�� 
await
�� 
userManager
�� *
.
��* +
AddToRoleAsync
��+ 9
(
��9 :
user
��: >
,
��> ?
role
��@ D
.
��D E
Name
��E I
)
��I J
;
��J K
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
��  
)
��  !
{
�� 
return
�� 
new
�� !
UserManagerResponse
�� .
{
�� 
Message
�� 
=
�� 
$str
�� -
,
��- .
	IsSuccess
�� 
=
�� 
true
��  $
}
�� 
;
�� 
}
�� 
return
�� 
new
�� !
UserManagerResponse
�� *
{
�� 
Message
�� 
=
�� 
$str
�� 0
,
��0 1
	IsSuccess
�� 
=
�� 
false
�� !
}
�� 
;
�� 
}
�� 	
}
�� 
}�� �A
KD:\CalidadFinal\StaticBackendAnalysisFinal\McNutsFixed\McNutsAPI\Startup.cs
	namespace 	
	McNutsAPI
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
}   	
public"" 
IConfiguration"" 
Configuration"" +
{"", -
get"". 1
;""1 2
}""3 4
public%% 
void%% 
ConfigureServices%% %
(%%% &
IServiceCollection%%& 8
services%%9 A
)%%A B
{&& 	
services'' 
.'' 
AddControllers'' #
(''# $
)''$ %
;''% &
services(( 
.(( 
AddTransient(( !
<((! "
IPeanutService((" 0
,((0 1
PeanutService((2 ?
>((? @
(((@ A
)((A B
;((B C
services)) 
.)) 
AddTransient)) !
<))! "
IClientService))" 0
,))0 1
ClientService))2 ?
>))? @
())@ A
)))A B
;))B C
services** 
.** 
AddTransient** !
<**! "
IPeanutRepository**" 3
,**3 4
PeanutRepository**5 E
>**E F
(**F G
)**G H
;**H I
services++ 
.++ 
	AddScoped++ 
<++ 
IUserService++ +
,+++ ,
UserService++- 8
>++8 9
(++9 :
)++: ;
;++; <
services,, 
.,, 
AddTransient,, !
<,,! "
IFileService,," .
,,,. /
FileService,,0 ;
>,,; <
(,,< =
),,= >
;,,> ?
services.. 
... 
AddAutoMapper.. "
(.." #
typeof..# )
(..) *
Startup..* 1
)..1 2
)..2 3
;..3 4
services11 
.11 
AddDbContext11 !
<11! "
PeanutDbContext11" 1
>111 2
(112 3
options113 :
=>11; =
{22 
options33 
.33 
UseSqlServer33 $
(33$ %
Configuration33% 2
.332 3
GetConnectionString333 F
(33F G
$str33G Z
)33Z [
)33[ \
;33\ ]
}44 
)44 
;44 
services77 
.77 
AddIdentity77  
<77  !
IdentityUser77! -
,77- .
IdentityRole77/ ;
>77; <
(77< =
options77= D
=>77E G
{77H I
options88 
.88 
Password88  
.88  !
RequireDigit88! -
=88. /
true880 4
;884 5
options99 
.99 
Password99  
.99  !
RequireLowercase99! 1
=992 3
true994 8
;998 9
}:: 
):: 
.:: $
AddEntityFrameworkStores:: '
<::' (
PeanutDbContext::( 7
>::7 8
(::8 9
)::9 :
.;; $
AddDefaultTokenProviders;; %
(;;% &
);;& '
;;;' (
services>> 
.>> 
AddAuthentication>> &
(>>& '
auth>>' +
=>>>, .
{?? 
auth@@ 
.@@ %
DefaultAuthenticateScheme@@ .
=@@/ 0
JwtBearerDefaults@@1 B
.@@B C 
AuthenticationScheme@@C W
;@@W X
authAA 
.AA "
DefaultChallengeSchemeAA +
=AA, -
JwtBearerDefaultsAA. ?
.AA? @ 
AuthenticationSchemeAA@ T
;AAT U
}BB 
)BB 
.BB 
AddJwtBearerBB 
(BB 
optionsBB #
=>BB$ &
{CC 
optionsDD 
.DD %
TokenValidationParametersDD 1
=DD2 3
newDD4 7
	MicrosoftDD8 A
.DDA B
IdentityModelDDB O
.DDO P
TokensDDP V
.DDV W%
TokenValidationParametersDDW p
{EE 
ValidateIssuerFF "
=FF# $
trueFF% )
,FF) *
ValidateAudienceGG $
=GG% &
trueGG' +
,GG+ ,
ValidAudienceHH !
=HH" #
ConfigurationHH$ 1
[HH1 2
$strHH2 I
]HHI J
,HHJ K
ValidIssuerII 
=II  !
ConfigurationII" /
[II/ 0
$strII0 E
]IIE F
,IIF G!
RequireExpirationTimeJJ )
=JJ* +
trueJJ, 0
,JJ0 1
IssuerSigningKeyKK $
=KK% &
newKK' * 
SymmetricSecurityKeyKK+ ?
(KK? @
EncodingKK@ H
.KKH I
UTF8KKI M
.KKM N
GetBytesKKN V
(KKV W
ConfigurationKKW d
[KKd e
$strKKe w
]KKw x
)KKx y
)KKy z
,KKz {$
ValidateIssuerSigningKeyLL ,
=LL- .
trueLL/ 3
}MM 
;MM 
}NN 
)NN 
;NN 
servicesRR 
.RR 
AddCorsRR 
(RR 
cRR 
=>RR !
{SS 
cTT 
.TT 
	AddPolicyTT 
(TT 
$strTT )
,TT) *
optionsTT+ 2
=>TT3 5
{TT6 7
optionsTT8 ?
.TT? @
AllowAnyOriginTT@ N
(TTN O
)TTO P
;TTP Q
optionsTTR Y
.TTY Z
AllowAnyMethodTTZ h
(TTh i
)TTi j
;TTj k
optionsTTl s
.TTs t
AllowAnyHeader	TTt �
(
TT� �
)
TT� �
;
TT� �
}
TT� �
)
TT� �
;
TT� �
}UU 
)UU 
;UU 
}VV 	
publicYY 
voidYY 
	ConfigureYY 
(YY 
IApplicationBuilderYY 1
appYY2 5
,YY5 6
IWebHostEnvironmentYY7 J
envYYK N
)YYN O
{ZZ 	
if[[ 
([[ 
env[[ 
.[[ 
IsDevelopment[[ !
([[! "
)[[" #
)[[# $
{\\ 
app]] 
.]] %
UseDeveloperExceptionPage]] -
(]]- .
)]]. /
;]]/ 0
app^^ 
.^^ 
UseCors^^ 
(^^ 
options^^ #
=>^^$ &
{^^' (
options^^) 0
.^^0 1
AllowAnyOrigin^^1 ?
(^^? @
)^^@ A
;^^A B
options^^C J
.^^J K
AllowAnyMethod^^K Y
(^^Y Z
)^^Z [
;^^[ \
options^^] d
.^^d e
AllowAnyHeader^^e s
(^^s t
)^^t u
;^^u v
}^^w x
)^^x y
;^^y z
}__ 
appaa 
.aa 

UseRoutingaa 
(aa 
)aa 
;aa 
appcc 
.cc 
UseAuthenticationcc !
(cc! "
)cc" #
;cc# $
appdd 
.dd 
UseAuthorizationdd  
(dd  !
)dd! "
;dd" #
appff 
.ff 
UseEndpointsff 
(ff 
	endpointsff &
=>ff' )
{gg 
	endpointshh 
.hh 
MapControllershh (
(hh( )
)hh) *
;hh* +
}ii 
)ii 
;ii 
appll 
.ll 
UseStaticFilesll 
(ll 
)ll  
;ll  !
appmm 
.mm 
UseStaticFilesmm 
(mm 
newmm "
StaticFileOptionsmm# 4
(mm4 5
)mm5 6
{nn 
FileProvideroo 
=oo 
newoo " 
PhysicalFileProvideroo# 7
(oo7 8
Pathoo8 <
.oo< =
Combineoo= D
(ooD E
	DirectoryooE N
.ooN O
GetCurrentDirectoryooO b
(oob c
)ooc d
,ood e
$stroof r
)oor s
)oos t
,oot u
RequestPathpp 
=pp 
newpp !

PathStringpp" ,
(pp, -
$strpp- 9
)pp9 :
}qq 
)qq 
;qq 
}tt 	
}uu 
}vv 