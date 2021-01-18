# wvr-setup
This repository hosts the scripts and resources used for building the wvr installer for windows.

The latest build is available at the [release page](https://github.com/gurkeclub/wvr-setup/releases).

## Howto
This installer is based on NSIS 3.06.1 and is built with the [nsis build script](installer.nsi)

### Required files
Building the installer requires the following files to be placed in the root of the repo:

#### "wvr.exe"
A build of the latest wvr binary

#### "redist/gstreamer-1.0-mingw-x86_64-1.18.2.msi" 
The 1.18.2 gstreamer libraries installer

### Building the installer
In order to build the installer, the [nsis build script](installer.nsi) must be compiled with NSIS.

### Output file
Once the build script has been compiled, the _wvr-setup.exe_ should be available in the root of the repository.
