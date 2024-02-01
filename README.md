# MariARM64 -> an app wrapper for Super Mario 64 for M-Series Macs!

N.B. This is mostly not my work, I only wrote the .app (and .desktop, for our Asahi friends) creator script. The people below, and everyone in between, are the real heroes.
Downstream of [sm64pc/sm64ex](https://github.com/sm64pc/sm64ex), which is itself (far) downstream of [n64decomp/sm64](https://github.com/n64decomp/sm64)

Feel free to report bugs and contribute, but remember, there must be **no upload of any copyrighted asset**. 
Run `./extract_assets.py --clean && make clean` or `make distclean` to remove ROM-originated content.

## How to build (Valid copy of SM64 backup [ROM] file required)

### This will install homebrew on macOS if it's not present. If you don't want homebrew, I don't care. Install the deps and build it urself snobby.

macOS: Simply run buildApp.sh, from the terminal. If this will not run, you can run bash buildApp.sh or change the permissions via chmod (chmod +x buildApp.sh). The script will produce a .app file in the working directory. You can then drag this app to /Applications/, ~/Applications/, or wherever you'd like. If the app wont launch, check Settings -> Privacy & Security for allowing unverified apps.

Fedora Asahi Linux: Script coming soon! But, using `make OSX_BUILD=0` will produce a binary with scaling fixed for HiDPI MacBooks. Will probably work on basically anything U-Boot can load, if it has a mips compiler.

The installer is currently set to look for a rip of the US rom, placed in the directory and named baserom.us.z64. This can be easily changed by lightly modifying the scripts.

#### Save and configuration files can be located at ~/Library/Application Support/mariarm/ on macOS or ~/.local/share/mariarm/ on Linux

### Unique features

**HiDPI Support!**
Added support for HiDPI configurations in macOS and Linux OpenGL builds.

Trimmed some Windows files ;)

Update naming conventions to allow concurrent sm64ex builds, and differentiate saves.

