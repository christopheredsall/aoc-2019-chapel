
MAKEFLAGS = --no-print-directory

CHPL = chpl

default: day-0 day-1 day-2

day-0: FORCE
	cd day-0 && $(MAKE)

day-1: FORCE
	cd day-1 && $(MAKE)

day-2: FORCE
	cd day-2 && $(MAKE)

FORCE:
