ò
]C:\Users\csingare\Desktop\Dot6\src\TemplateApp.Application\Interfaces\IMyAppExampleService.cs
	namespace 	
TemplateApp
 
. 
Application !
.! "

Interfaces" ,
{ 
public 

	interface  
IMyAppExampleService )
{ 
Task 
< 
string 
> 
ShowAppSettingsUse '
(' (
)( )
;) *
} 
} ì	
ZC:\Users\csingare\Desktop\Dot6\src\TemplateApp.Application\Services\MyAppExampleService.cs
	namespace 	
TemplateApp
 
. 
Application !
.! "
Services" *
{ 
public 

class 
MyAppExampleService $
:% & 
IMyAppExampleService' ;
{ 
private 
readonly 
AppSettings $
_appSettings% 1
;1 2
public

 
MyAppExampleService

 "
(

" #
AppSettings

# .
appSettings

/ :
)

: ;
{ 	
_appSettings 
= 
appSettings &
;& '
} 	
public 
Task 
< 
string 
> 
ShowAppSettingsUse .
(. /
)/ 0
{ 	
var 
urlFromAppSettings "
=# $
_appSettings% 1
.1 2
	EndPoints2 ;
.; <
	UrlWebApi< E
;E F
return 
Task 
. 

FromResult "
(" #
urlFromAppSettings# 5
)5 6
;6 7
} 	
} 
} 