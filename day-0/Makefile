CHPL = chpl

CHPL_FLAGS = --fast

TARGETS = \
	hello \

default: all 

all: $(TARGETS)

clean:
	rm -f $(TARGETS) 

hello: hello.chpl
	+$(CHPL) -o $@ $(CHPL_FLAGS) $<
