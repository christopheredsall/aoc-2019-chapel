CHPL = docker run --rm -v $(PWD):/usr/src/myapp -w /usr/src/myapp chapel/chapel chpl

TARGETS = \
	hello \

default: all 

all: $(TARGETS)

clean:
	rm -f $(TARGETS) 

hello: hello.chpl
	+$(CHPL) -o $@ $<
