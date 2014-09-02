
# This is how the git Makefile detects the OS:
# http://git.kernel.org/cgit/git/git.git/tree/Makefile?id=c965c029330b1f81cc107c5d829e7fd79c61d8ea#n175
uname_S := $(shell sh -c 'uname -s 2>/dev/null || echo not')

ifeq ($(uname_S),Darwin)
	OS = osx
endif

ifeq ($(uname_S),Linux)
	OS = ubuntu-x86_64
endif

