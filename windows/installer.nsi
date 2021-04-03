!include LogicLib.nsh

# we start by defining variables
!define APPNAME "wvr"
!define COMPANYNAME "gurke.club"

!define EXECUTABLE_NAME "wvr.exe"
!define LAUNCHER_NAME "wvr-launcher.exe"
!define ICON_NAME "icon.ico"

!define VERSIONMAJOR 0
!define VERSIONMINOR 0
!define VERSIONPATCH 1

#RequestExecutionLevel user

# create a directory where we will put our assets (eg: image, executable, uninstaller, dependencies...)
InstallDir "$PROGRAMFILES\${APPNAME}\" 

# Define the installer name
Name "Wvr installer"
outFile "wvr-setup.exe"



Function .onInit
	# the plugins dir is automatically deleted when the installer exits
	InitPluginsDir
	File /oname=$PLUGINSDIR\splash.bmp splash.bmp

	splash::show 500 $PLUGINSDIR\splash
	
	IfFileExists "$INSTDIR\*.*" already_installed not_installed
	
	already_installed:
	${If} ${Cmd} `MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Remove wvr?" IDYES`
		Call uninstall
		Abort
	${EndIf}
	
	goto install_test_end
		
	not_installed:
	${If} ${Cmd} `MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Install wvr?" IDNO`
		Abort
	${EndIf}
	
	install_test_end:
		

	Pop $0
FunctionEnd

Function uninstall
	# Remove bin folder from path
	EnVar::SetHKCU
	EnVar::DeleteValue "PATH" "$INSTDIR\bin"
	
	${If} ${Cmd} `MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Remove gstreamer?" IDYES`
		# Remove libsfrom path
		EnVar::SetHKCU
		EnVar::DeleteValue "PATH" "%GSTREAMER_1_0_ROOT_MINGW_X86_64%\bin"
		EnVar::DeleteValue "PATH" "%GSTREAMER_1_0_ROOT_MINGW_X86_64%\lib"
		
		# Install gstreamer
		ExecWait '"msiexec" /passive /x "$INSTDIR\redist\gstreamer-1.0-mingw-x86_64-1.18.2.msi"'
		
	${EndIf}
	
	# Remove shortcuts
	Delete "$SMPROGRAMS\${COMPANYNAME}\${APPNAME}.lnk"
	Delete "$DESKTOP\${APPNAME}.lnk"
	
	# Remove install folder
	RMDir /r $INSTDIR
	
  RMDir /r "$LocalAppdata\gurke\wvr"
	
FunctionEnd

section "install"
	setOutPath "$INSTDIR"
	
    # Copy the executable and dlls in the installation directory
    file /r "bin"

    # Copy the libs path in the installation directory
    file /r "lib"
		
    # Copy the gtk resources path in the installation directory
    file /r "share"
		
		
	
sectionEnd

section "install-demo"
  SetOutPath "$LocalAppdata\gurke\wvr\data\"
    # Copy the demo animation
    file /r "wvr-data\libs"
	
    # Copy the demo animation
    file /r "wvr-data\projects"
		
	
sectionEnd

section "redist"
	setOutPath $INSTDIR\redist

	# Copy the gstreamer installer in the install dir
	File "redist\gstreamer-1.0-mingw-x86_64-1.18.2.msi"

	${If} ${Cmd} `MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Install gstreamer? (required)" IDYES`
		# Install gstreamer
		ExecWait '"msiexec" /passive INSTALLDIR="$INSTDIR\gstreamer" /i "$INSTDIR\redist\gstreamer-1.0-mingw-x86_64-1.18.2.msi"'
	${EndIf}

	# Add gstreamer libs to path
	EnVar::SetHKCU
	EnVar::AddValueEx "PATH" "%GSTREAMER_1_0_ROOT_MINGW_X86_64%\bin"
	EnVar::AddValueEx "PATH" "%GSTREAMER_1_0_ROOT_MINGW_X86_64%\lib"
	
sectionEnd


section "postInstall"

	${If} ${Cmd} `MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Create a menu shortcut?" IDYES`
		# Create a start menu shortcut
		createShortCut "$SMPROGRAMS\${COMPANYNAME}\${APPNAME}.lnk" "$INSTDIR\bin\${LAUNCHER_NAME}" "" "$INSTDIR\bin\${ICON_NAME}" 
	${EndIf}
	
	${If} ${Cmd} `MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Create a desktop shortcut?" IDYES`
		# Create a desktop shortcut
		createShortCut "$DESKTOP\${APPNAME}.lnk" "$INSTDIR\bin\${LAUNCHER_NAME}" "" "$INSTDIR\bin\${ICON_NAME}"
	${EndIf}
	
	${If} ${Cmd} `MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Add executable to path?" IDYES`
		# Add wvr executable to path
		EnVar::SetHKCU
		EnVar::AddValueEx "PATH" "$INSTDIR\bin"
	${EndIf}
	
sectionEnd
