#!/bin/bash
rm bggp4.o bggp4
as -o bggp4.o 4.as
ld -e _4 -o bggp4 bggp4.o
strip -s bggp4
