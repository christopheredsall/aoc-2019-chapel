
MAKEFLAGS = --no-print-directory

CHPL = chpl

default: day-0 day-1

day-0:
	cd day-0 && $(MAKE)

day-1:
	cd day-1 && $(MAKE)
