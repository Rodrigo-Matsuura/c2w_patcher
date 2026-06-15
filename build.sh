#!/bin/sh
OS="$(uname -s)"
CFLAGS="-O3 -Wall -Wextra"

if [ "$OS" = "Darwin" ]; then
    echo "Building for macOS..."
    gcc main.c rijndael.c sha1.c $CFLAGS -o c2w_patcher
    strip c2w_patcher
else
    echo "Building for Linux/Unix..."
    gcc main.c rijndael.c sha1.c $CFLAGS -s -o c2w_patcher
fi

echo "Build complete!"
