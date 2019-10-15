#!/bin/sh

#mipsel-linux-g++ game.cpp -o gng \
#	-std=gnu++98 \
#	-I/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/include/allegro \
#	-g -O2 -mips32 \
#	-Wno-write-strings \
#	`/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/bin/allegro-config --libs`

mipsel-linux-g++ game.cpp -o gng \
	-std=gnu++98 \
	-g -O2 -mips32 \
	-Wno-write-strings \
	`allegro-config --libs`
