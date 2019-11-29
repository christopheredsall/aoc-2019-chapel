
MAKEFLAGS = --no-print-directory

CHPL = chpl

default: day-0

all: $(TARGETS)

clean: FORCE
	cd day-0 && $(MAKE) clean

day-0: FORCE
	cd day-0 && $(MAKE)

FORCE:
