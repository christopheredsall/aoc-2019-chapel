use VirtualMachine;

proc patch(program, noun, verb): memory {
    program[1] = noun;
    program[2] = verb;
    return program;
}

proc main() {
    const sentinal = 19690720;
    // what's the point in having a parallel language if you can't brute force the solution!
    const opCodeRange = 0..99;
    const searchSpace: domain(2) = {opCodeRange, opCodeRange};
    coforall (noun, verb) in searchSpace {
        var program = load();
        program = patch(program, noun, verb);
        var state: memory  = run(program);
        if (state[0] == sentinal) {
            writeln(100 * noun + verb);
            // break; // ?
        }
    }
}
