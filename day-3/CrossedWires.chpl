module CrossedWires {
    
    use String;

    config var size = 200;
    const wireDom = {-size..size, -size..size};
    

    proc find_crossings(wirePaths: string): int {
        var spsDom: sparse subdomain(wireDom);
        var grid: [wireDom] real;
        var wires: [2] string;
        var wire1: string;
        var wire2: string;
        
        wires = wirePaths.split("\n");
         
        return 1;
    }

    /* Return the Manhatten distance from the origin to the 
       final crossing point given a a pair of wirepaths as a
       two line string.
     */
    proc distance(wirePaths: string): int {
        var crossings = find_crossings(wirePaths);

        return 1;
    }
}