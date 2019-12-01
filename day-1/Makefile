CONTAINER := docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp chapel/chapel
CHPL = $(CONTAINER) chpl

ifneq (, $(shell which chpl))
CHPL := chpl
endif

TARGETS = \
	fuel \
	test_fuel \

default: all 

all: $(TARGETS)

clean:
	rm -f $(TARGETS) 

fuel: fuel.chpl FuelCalc.chpl
	+$(CHPL) -o $@ $<

test_fuel: test_fuel.chpl FuelCalc.chpl
	+$(CHPL) -o $@ $<
	./$@