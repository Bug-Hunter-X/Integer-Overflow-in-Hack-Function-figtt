# Integer Overflow Bug in Hack

This repository demonstrates an integer overflow bug in a simple Hack program. The functions `foo`, `bar`, and `baz` perform basic arithmetic operations. However, when a sufficiently large integer is passed to `baz`, an integer overflow can occur, resulting in an incorrect return value.

The `bug.hack` file contains the buggy code, and `bugSolution.hack` provides a solution that handles potential overflow situations.  The solution involves adding error handling or checking for values before computations, ensuring the program operates within safe integer limits.