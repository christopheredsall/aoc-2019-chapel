CONTAINER := docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp chapel/chapel
CHPL = $(CONTAINER) chpl

ifneq (, $(shell which chpl))
CHPL := chpl
endif

TARGETS = \
	vm \
	test_vm \
	brute_force \

default: all 

all: $(TARGETS)

clean:
	rm -f $(TARGETS) 

vm: vm.chpl VirtualMachine.chpl
	+$(CHPL) -o $@ $<

brute_force: brute_force.chpl VirtualMachine.chpl
	+$(CHPL) -o $@ $<

test_vm: test_vm.chpl VirtualMachine.chpl
	+$(CHPL) -o $@ $<
	./$@
