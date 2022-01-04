@ECHO OFF
TITLE DEBLOATER
ECHO Debloater for XIOMI MIUI 
ECHO ====================================
ECHO Detecting attached devices
ECHO ====================================
adb devices
ECHO ====================================
ECHO Starting ...... (Ignore Errors as they are not installed already.)
FOR /F "tokens=* delims=" %%x in (MIUI_Debloat.txt) DO (
	ECHO REMOVING %%x
	adb shell pm uninstall -k --user 0 %%x
)
ECHO Done !!
PAUSE
