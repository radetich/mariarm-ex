#!/bin/bash

brew update
brew install coreutils make pkg-config tehzz/n64-dev/mips64-elf-binutils glew glfw mingw-w64
rm -rf Mariarm.app
mkdir -p Mariarm.app/Contents/MacOS/
gmake clean
gmake VERSION=us
chmod -R 755 build/us_pc/*
mv build/us_pc/sm64.us.f3dex2e build/us_pc/sm64excore
mv build/us_pc/* Mariarm.app/Contents/MacOS/
mkdir Mariarm.app/Contents/Resources
cp ma.icns Mariarm.app/Contents/Resources/
cp Info.plist Mariarm.app/Contents/
chmod 755 Mariarm.app

