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

RequestExecutionLevel user

# create a directory where we will put our assets (eg: image, executable, uninstaller, dependencies...)
# InstallDir "$PROGRAMFILES\${APPNAME}\" 
InstallDir "$LocalAppdata\gurke\wvr"

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
	${EndIf}
	Abort
	
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
	EnVar::DeleteValue "PATH" "$INSTDIR\gstreamer\1.0\mingw_x86_64\bin"
	EnVar::DeleteValue "PATH" "$INSTDIR\gstreamer\1.0\mingw_x86_64\lib"
	EnVar::DeleteValue "GSTREAMER_1_0_ROOT_MINGW_X86_64"
	
	# Remove shortcuts
	Delete "$SMPROGRAMS\${COMPANYNAME}\${APPNAME}.lnk"
	Delete "$DESKTOP\${APPNAME}.lnk"
	
	# Remove install folder
	RMDir /r $INSTDIR
	
  
	MessageBox MB_OK "Wvr uninstalled!"
	
FunctionEnd

section "install"
	setOutPath "$INSTDIR"
	
    # Copy the executable and dlls in the installation directory
    file /r "bin"

    # Copy the lib path in the installation directory
    file /r "lib"
	
    # Copy the libexec path in the installation directory
    file /r "libexec"
		
    # Copy the share path in the installation directory
    file /r "share"
		
		
	
sectionEnd

section "install-data"
  SetOutPath "$LocalAppdata\gurke\wvr\data\"
    # Copy the preinstalled libs animation
    file /r "data\libs"
	
    # Copy the preinstalled filters 
    file /r "data\filters"
	
    # Copy the preinstalled projects 
    file /r "data\projects"
		
	
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
	
	EnVar::SetHKCU
	EnVar::AddValueEx "PATH" "$INSTDIR\bin"
	
sectionEnd
