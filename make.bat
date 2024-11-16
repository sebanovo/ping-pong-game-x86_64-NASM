@echo off

mkdir build

nasm -f win64 -o src/main.o src/main.asm

gcc -std=c11 -Wall -I./include -L./lib -o build/game src/main.o lib/libraylib.a -lopengl32 -lgdi32 -lkernel32 -luser32 -lshell32 -lwinmm


cd build

game

cd ..