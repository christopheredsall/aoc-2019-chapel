/*
 * Virtual Machine
 */
module VirtualMachine {

config const maxMem = 1024;
config const inputFile = "input";
type memory = [0..maxMem-1] int;

// Instruction Set
param add = 1, 
      multiply = 2,
      halt = 99;
    /*
     * Load a program (comma seperated list of ints) from a file.
     */
    proc load(): memory throws {
      // var file = open(inputFile, iomode.r);
      // var reader = file.reader();
      // var line: string;
      // reader.readline(line);
      // var strings = line.split(',');
      // reader.close();
      var program: memory;
      program[0..144] = [1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,9,19,1,10,19,23,2,9,23,27,1,6,27,31,2,31,9,35,1,5,35,39,1,10,39,43,1,10,43,47,2,13,47,51,1,10,51,55,2,55,10,59,1,9,59,63,2,6,63,67,1,5,67,71,1,71,5,75,1,5,75,79,2,79,13,83,1,83,5,87,2,6,87,91,1,5,91,95,1,95,9,99,1,99,6,103,1,103,13,107,1,107,5,111,2,111,13,115,1,115,6,119,1,6,119,123,2,123,13,127,1,10,127,131,1,131,2,135,1,135,5,0,99,2,14,0,0];
      return program;
    }

    /*
      Run a program in the virtual machine, returns the final state of the memory.
     */
    proc run(program ): memory {
    
      var ram: memory;
      var programCounter, opCode, operand1, operand2, destination: int;
      param step = 4;
      ram[0..program.size-1] = program; // load program
      while (ram[programCounter] != 99) {
        opCode = ram[programCounter];
        operand1 = ram[programCounter + 1];
        operand2 = ram[programCounter + 2];
        destination = ram[programCounter + 3];
        if ( opCode == add ) {
          ram[destination] = ram[operand1] + ram[operand2]; 
        }
        if ( opCode == multiply ) {
          ram[destination] = ram[operand1] * ram[operand2]; 
        }
        //write("PC=",programCounter," ");
        //writeln(ram[0..9]);
        programCounter += step;
      }
      return ram;
    }
}