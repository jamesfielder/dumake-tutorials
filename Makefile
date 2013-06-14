#
#	Makefile to compile markdown sourced websites
#
#	Compiles *.markdown -> *.html and automatically deletes old before compiling
#

CPP_FILES = $(wildcard *.md)
OBJ_FILES = $(patsubst %.md,%.html,$(CPP_FILES))


%.html: %.md
	pandoc -o $@ $<

all: $(OBJ_FILES) 

clean:
	rm *.html

