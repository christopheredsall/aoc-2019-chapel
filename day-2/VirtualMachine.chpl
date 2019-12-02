/*
 * Virtual Machine
 */

module VirtualMachine {

config const maxMem = 1024;
type memory = [0..maxMem-1] int;

    /*
      Calculte the fuel requred for a given mass
     */
    proc run(program ): memory {
    
      var ram: memory;
      return ram;
    }
}
