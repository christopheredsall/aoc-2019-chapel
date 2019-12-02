use VirtualMachine;

proc patch(program): memory {
    program[1] = 12;
    program[2] = 2;
    return program;
}

proc main() {
    var program = load();
    program = patch(program);
    var state: memory  = run(program);
    writeln(state[0]);
}
