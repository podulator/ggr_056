#!/bin/sh

g++ game.cpp -o gng-x64 \
	-std=gnu++98 \
	-g -O2 \
	-Wall -Wno-format -Wno-implicit -Wno-unused-result -Wno-return-type \
	-Wno-dangling-else -Wno-write-strings -Wno-misleading-indentation -Wno-sequence-point \
	`allegro-config --libs`
