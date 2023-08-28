ó	
dC:\Users\csingare\Desktop\Dot6\src\TemplateApp.ConsoleApp\Configuration\DependencyInjectionConfig.cs
	namespace 	
TemplateApp
 
. 

ConsoleApp  
.  !
Configuration! .
{ 
public 

static 
class %
DependencyInjectionConfig 1
{		 
public

 
static

 
IServiceCollection

 (
RegisterServices

) 9
(

9 :
this

: >
IServiceCollection

? Q
services

R Z
)

Z [
{ 	
services 
. 
AddHostedService %
<% &
ConsoleService& 4
>4 5
(5 6
)6 7
;7 8
services 
. 
AddSingleton !
<! "
AppSettings" -
,- .
AppSettings/ :
>: ;
(; <
)< =
;= >
services 
. 
AddTransient !
<! " 
IMyAppExampleService" 6
,6 7
MyAppExampleService8 K
>K L
(L M
)M N
;N O
return 
services 
; 
} 	
} 
} µ
KC:\Users\csingare\Desktop\Dot6\src\TemplateApp.ConsoleApp\ConsoleService.cs
	namespace 	
TemplateApp
 
. 

ConsoleApp  
{ 
public 

class 
ConsoleService 
:  !
IHostedService" 0
{ 
private 
readonly $
IHostApplicationLifetime 1
_appLifeTime2 >
;> ?
private		 
readonly		  
IMyAppExampleService		 -
_myAppService		. ;
;		; <
public 
ConsoleService 
( $
IHostApplicationLifetime 6
appLifeTime7 B
,B C 
IMyAppExampleServiceD X
myAppServiceY e
)e f
{ 	
_appLifeTime 
= 
appLifeTime &
;& '
_myAppService 
= 
myAppService (
;( )
} 	
public 
Task 

StartAsync 
( 
CancellationToken 0
cancellationToken1 B
)B C
{ 	
_appLifeTime 
. 
ApplicationStarted +
.+ ,
Register, 4
(4 5
(5 6
)6 7
=>8 :
{ 
Task 
. 
Run 
( 
async 
(  
)  !
=>" $
{ 
try 
{ 
await 
_myAppService +
.+ ,
ShowAppSettingsUse, >
(> ?
)? @
;@ A
} 
catch 
( 
	Exception $
ex% '
)' (
{ 
Console 
.  
	WriteLine  )
() *
ex* ,
., -
ToString- 5
(5 6
)6 7
)7 8
;8 9
} 
finally 
{   
_appLifeTime!! $
.!!$ %
StopApplication!!% 4
(!!4 5
)!!5 6
;!!6 7
}"" 
}## 
)## 
;## 
}$$ 
)$$ 
;$$ 
return&& 
Task&& 
.&& 
CompletedTask&& %
;&&% &
}'' 	
public)) 
Task)) 
	StopAsync)) 
()) 
CancellationToken)) /
cancellationToken))0 A
)))A B
{** 	
return++ 
Task++ 
.++ 
CompletedTask++ %
;++% &
},, 	
}-- 
}.. 
DC:\Users\csingare\Desktop\Dot6\src\TemplateApp.ConsoleApp\Program.cs
static 
class 
Program 
{ 
public 

static 
IConfigurationRoot $
Configuration% 2
{3 4
get5 8
;8 9
private: A
setB E
;E F
}G H
static		 

async		 
Task		 
Main		 
(		 
string		 !
[		! "
]		" #
args		$ (
)		( )
{

 
using 
IHost 
host 
= 
CreateHostBuilder ,
(, -
args- 1
)1 2
.2 3
Build3 8
(8 9
)9 :
;: ;
await 
host 
. 
RunAsync 
( 
) 
; 
} 
static 

IHostBuilder 
CreateHostBuilder )
() *
string* 0
[0 1
]1 2
args3 7
)7 8
=>9 ;
Host 

.
  
CreateDefaultBuilder 
(  
args  $
)$ %
. %
ConfigureAppConfiguration !
(! "
(" #
hostingContext# 1
,1 2
configuration3 @
)@ A
=>B D
{ 
configuration 
. 
Sources  
.  !
Clear! &
(& '
)' (
;( )
configuration 
. 
AddJsonFile #
(# $
$str$ 6
,6 7
optional8 @
:@ A
falseB G
,G H
reloadOnChangeI W
:W X
trueY ]
)] ^
;^ _
IConfigurationRoot 
configurationRoot /
=0 1
configuration2 ?
.? @
Build@ E
(E F
)F G
;G H
Configuration 
= 
configurationRoot ,
;, -
} 
) 	
.	 

ConfigureServices
 
( 
( 
services %
)% &
=>' )
{ 
services 
. 
RegisterServices $
($ %
)% &
;& '
} 
) 	
;	 

}   