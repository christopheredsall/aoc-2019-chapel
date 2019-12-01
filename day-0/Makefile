CONTAINER := docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp chapel/chapel
CHPL = $(CONTAINER) chpl

ifneq (, $(shell which chpl))
CHPL := chpl
endif

TARGETS = \
	hello \

default: all 

all: $(TARGETS)

clean:
	rm -f $(TARGETS) 

hello: hello.chpl
	+$(CHPL) -o $@ $<
