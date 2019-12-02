use UnitTest;
use VirtualMachine;

proc test_vm(test: borrowed Test) throws {
  test.assertTrue(run([1,0,0,0,99])[0..4] == [2,0,0,0,99]); // (1 + 1 = 2).
  test.assertTrue(run([2,3,0,3,99])[0..4] == [2,3,0,6,99]); // (3 * 2 = 6).
  test.assertTrue(run([2,4,4,5,99,0])[0..5] == [2,4,4,5,99,9801]); // (99 * 99 = 9801).
  test.assertTrue(run([1,1,1,4,99,5,6,0,99])[0..8] == [30,1,1,4,2,5,6,0,99]);
}

UnitTest.main();
