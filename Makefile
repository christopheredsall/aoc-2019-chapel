
MAKEFLAGS = --no-print-directory

CHPL = chpl

default: day-0 day-1

day-0: FORCE
	cd day-0 && $(MAKE)

day-1: FORCE
	cd day-1 && $(MAKE)

FORCE:
