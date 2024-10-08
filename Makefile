# Makefile for SDL2#
# Written by Ethan "flibitijibibo" Lee

# Source Lists
SRC = \
	src/SDL2.cs

# Targets

debug: clean-debug
	mkdir -p bin/Debug
	cp app.config bin/Debug/SDL2-CS.dll.config
	mcs /unsafe -debug -out:bin/Debug/SDL2-CS.dll -target:library $(SRC)

clean-debug:
	rm -rf bin/Debug

release: clean-release
	mkdir -p bin/Release
	cp app.config bin/Release/SDL2-CS.dll.config
	mcs /unsafe -optimize -out:bin/Release/SDL2-CS.dll -target:library $(SRC)

clean-release:
	rm -rf bin/Release

clean: clean-debug clean-release
	rm -rf bin

all: debug release
