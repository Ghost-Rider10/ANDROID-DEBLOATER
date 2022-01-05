@ECHO OFF
TITLE DEBLOATER

ECHO Debloater for ANDROID
ECHO ====================================
ECHO Detecting attached devices
ECHO ====================================
adb devices
ECHO ====================================
ECHO Starting ...... (Ignore Errors as they are not installed already.)
FOR /F "tokens=* delims=" %%x in (%2) DO (
	ECHO REMOVING %%x
	%1\adb shell pm uninstall -k --user 0 %%x
)
ECHO Done !!
PAUSE