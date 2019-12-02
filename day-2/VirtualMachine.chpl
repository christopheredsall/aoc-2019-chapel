/*
 * Virtual Machine
 */

module VirtualMachine {

config const maxMem = 1024;
type memory = [0..maxMem-1] int;

// Instruction Set
param add = 1, 
      multiply = 2,
      halt = 99;

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