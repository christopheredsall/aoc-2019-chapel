use UnitTest;
use FuelCalc;

proc test_fuel(test: borrowed Test) throws {
  test.assertTrue(fuel(12) == 2);
  test.assertTrue(fuel(14) == 2);
  test.assertTrue(fuel(1969) == 654);
  test.assertTrue(fuel(100756) == 33583);
}

proc test_fuleInclusive(test: borrowed Test) throws {
  test.assertTrue(fuelInclusive(14) == 2);
  test.assertTrue(fuelInclusive(1969) == 966);
  test.assertTrue(fuelInclusive(100756) == 50346);
}

UnitTest.main();