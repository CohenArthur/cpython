#!/bin/sh

cd $1

if [ ! -f "Makefile" ]; then
    ./configure LDFLAGS="-static" --disable-shared
    make LDFLAGS="-static" LINKFORSHARED=" " -j$(nproc)
    cp python static_python
fi
