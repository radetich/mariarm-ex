#!/bin/bash

brew update
brew install coreutils make pkg-config tehzz/n64-dev/mips64-elf-binutils glew glfw mingw-w64

gmake

#mv build/jp_pc Mariarm
#mv build/eu_pc Mariarm
mv build/us_pc Mariarm
mv Mariarm/sm64.us.f3dex2e Mariarm/Mariarm
mv Mariarm Mariarm.app