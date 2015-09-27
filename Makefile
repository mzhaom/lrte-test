TOP?=/usr/crosstool/v2/gcc-4.9.2-lrtev2
CLANG=$(TOP)/x86/bin/clang++
GXX=$(TOP)/x86/bin/g++

all: hello-g hello-clang
	readelf -l ./hello-g
	readelf -l ./hello-clang
	./hello-g
	./hello-clang

hello-g: hello.cc
	$(GXX) $< -o $@

hello-clang: hello.cc
	$(CLANG) $< -o $@
