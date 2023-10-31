#!/bin/bash
rm bggp4.o bggp4 4
as -o bggp4.o 4.as
ld -e _4 -o bggp4 bggp4.o
strip -s bggp4
dd if=./bggp4 of=bggp5 bs=1 count=243
mv ./bggp5 ./bggp4
chmod +x ./bggp4
