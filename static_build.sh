#!/bin/sh

cd $1

./configure LDFLAGS="-static" --disable-shared
make LDFLAGS="-static" LINKFORSHARED=" " -j$(nproc)
