# This makefile is only used to build unit tests for the pure C++
# code in this library - the main build uses setup.py.

# For an optimized, stripped build, use:
#
#   $ make OPTIMIZE=-O3 SYMBOLS=""
#
# For a C++14 build, use:
#
#   $ make COMPILER=g++-5 STDLIB=c++14
#
# Optional command line arguments:
# see http://stackoverflow.com/a/24264930/43839
#

OPTIMIZE ?= -O2
STDLIB ?= c++11
SYMBOLS ?= -g

#
# Compilation variables.
#
CODE_GENERATION = $(OPTIMIZE) $(SYMBOLS) -std=$(STDLIB) -pthread
DEPENDENCIES = -MMD -MP -MF
INCLUDES = -Isrc/cpp
LIBRARIES = -lm -lstdc++
WARNINGS = -Wall -Wextra -Wno-strict-aliasing -Wpedantic

DEFINES = -DDEBUG -DCATCH_CONFIG_COLOUR_NONE

CXXFLAGS_BASE +=     \
  $(CODE_GENERATION) \
  $(DEFINES)         \
  $(INCLUDES)        \
  $(LIBRARIES)       \
  $(WARNINGS)        \
  $(DEPENDENCIES)

CXXFLAGS = $(CXXFLAGS_BASE) $(DEPENDENCIES)
CXXFLAGS_TEST = $(CXXFLAGS_BASE)

BINARIES = build/harmonic_primes
OBJ = build/obj
DIRECTORIES = build $(OBJ) build/.deps

#
# Build rules
#

.PHONY: all binaries
.SUFFIXES:
.SECONDARY:

all: binaries

pre-build:
	mkdir -p $(DIRECTORIES)

binaries: pre-build
	@$(MAKE) --no-print-directory $(BINARIES)

build/%: %.cpp
	$(CXX) -o $@ $< $(CXXFLAGS) build/.deps/$*.d

clean:
	rm -Rf $(DIRECTORIES)

-include build/.deps/*.d
