#
#	Makefile to compile markdown sourced websites
#
#	Compiles *.markdown -> *.html and automatically deletes old before compiling
#

SRCS = $(wildcard *.markdown)
HTML = $(patsubst %.markdown,%.html,$(SRCS))

%.html: %.markdown
	pandoc -o $@ $<

all: $(OBJ_FILES) 

clean:
	rm *.html

