/*
 * Calculate the sum of the fuel requred for multiple modules whose
 * mass is given (one per line) in the file input
 */
use FuelCalc;

config const numTasks = here.maxTaskPar;
config const inputFile = "input";

proc readInput(inputFile) {
    // TODO: support HDF5
    // Open an input file with the specified filename in read mode.
    var infile = open(inputFile, iomode.r);
    var reader = infile.reader();

    // TODO: remove hardcoded dims
    var n= 100;
 
    // Declare an array of the specified dimensions.
    var X: [0..n-1] int;

    // Read in the array (row-major order is used for whole-array reads
    // like this).
    reader.read(X);

    // Close the file.
    reader.close();
    infile.close();

    // Return the array.
    return X;    
}

proc main() {
    var masses = readInput(inputFile);
    var fuels, fuelsInclusive: [0..99] int;
    // do fuel calculations in parallel
    forall spaceModule in masses.domain {
        fuels[spaceModule] = fuel(masses[spaceModule]);
        fuelsInclusive[spaceModule] = fuelInclusive(masses[spaceModule]);
    }
    // reduce to get global sum
    writeln("Fuel for modules: ", + reduce fuels);
    writeln("Total fuel: ", + reduce fuelsInclusive);
}