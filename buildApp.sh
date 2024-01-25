#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Brew not detected, attempting install..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Brew is installed!"
fi
brew update
echo "Installing dependencies..."
brew install coreutils make pkg-config tehzz/n64-dev/mips64-elf-binutils glew glfw mingw-w64
rm -rf MariARM64.app
mkdir -p MariARM64.app/Contents/MacOS/
gmake clean
echo "Building from EN_US rom..."
gmake VERSION=us
chmod 755 build/us_pc/sm64.us.f3dex2e
mv build/us_pc/sm64.us.f3dex2e build/us_pc/MariARM64
mv build/us_pc/* MariARM64.app/Contents/MacOS/
mkdir MariARM64.app/Contents/Resources
cp ma.icns MariARM64.app/Contents/Resources/
cp Info.plist MariARM64.app/Contents/
chmod 755 MariARM64.app

