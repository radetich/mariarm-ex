# MariARM64 -> an app wrapper for Super Mario 64 for M-Series Macs!

N.B. This is mostly not my work, I only wrote the .app creator script. The people below, and everyone in between, are the real heroes.
Downstream of [sm64pc/sm64ex](https://github.com/sm64pc/sm64ex), which is itself (far) downstream of [n64decomp/sm64](https://github.com/n64decomp/sm64)

Feel free to report bugs and contribute, but remember, there must be **no upload of any copyrighted asset**. 
Run `./extract_assets.py --clean && make clean` or `make distclean` to remove ROM-originated content.

## How to build

Download the code (or, clone the repo, you savvy dog) and run buildApp.sh. If this will not run, you can run bash buildApp.sh or change the permissions via chmod (chmod +x buildApp.sh).

THIS WILL INSTALL HOMEBREW IF IT'S NOT ALREADY PRESENT!

The script will produce a .app file in the working directory.

#### Save and configuration files can be located at ~/Library/Application Support/mariarm/

### Unique features

**HiDPI Support!**
Added support for HiDPI configurations in macOS OpenGL builds.

Trimmed some Windows files ;)

Update naming conventions to allow concurrent sm64ex builds, and differentiate saves.

