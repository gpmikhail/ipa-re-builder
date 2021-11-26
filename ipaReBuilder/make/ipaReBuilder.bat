@echo off
    for /R %%f in (*.ipa) do (
    set version=%%~nf
)
echo %version%



mkdir "..\make\out"
mkdir "..\make\temp"



C:\"Program Files"\WinRAR\WinRAR.exe x -ibck "..\make\"*.ipa *.* "..\make\temp\"

xcopy "..\make\temp\Payload\PokmonGO.app\Info.plist" /Y C:\Users\gpmik\Desktop\ipaReBuilder\make\Info.plist*

..\make\replace\plutil\plutil.exe -convert xml1 Info.plist

call ..\make\replace\replacePogo.bat

del ..\make\Info.plist

..\make\replace\plutil\plutil.exe -convert binary1 ..\make\Info_Blue.plist


xcopy ..\make\Icon\Pogo\Blue.car ..\make\temp\Payload\PokmonGO.app\Assets.car /Y
xcopy ..\make\Info_Blue.plist ..\make\temp\Payload\PokmonGO.app\Info.plist* /Y
C:\"Program Files"\WinRAR\WinRAR.exe a -afzip -ep1 "..\make\out\%version%_Blue.ipa" "..\make\temp\Payload"
del ..\make\Info_Blue.plist


