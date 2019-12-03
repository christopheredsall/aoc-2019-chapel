CONTAINER := docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp chapel/chapel
CHPL = $(CONTAINER) chpl

ifneq (, $(shell which chpl))
CHPL := chpl
endif

TARGETS = \
	test_crossings \

default: all 

all: $(TARGETS)

clean:
	rm -f $(TARGETS) 

crossings: crossings.chpl 
	+$(CHPL) -o $@ $<

test_crossings: test_crossings.chpl
	+$(CHPL) -o $@ $<
	./$@
