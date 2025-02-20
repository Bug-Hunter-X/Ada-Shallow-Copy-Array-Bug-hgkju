# Ada Shallow Copy Array Bug

This example demonstrates a common pitfall in Ada: the default array assignment performs a *shallow copy*.  This means that both arrays point to the same memory location. Modifying one array will affect the other.

The `bug.ada` file contains the code that exhibits this issue. The solution, in `bugSolution.ada`, shows how to correctly create a deep copy to avoid such errors.

## How to Reproduce

1. Compile and run `bug.ada`.
2. Observe that modifying `A` also changes `B`, even though we expected `B` to remain unaffected. 

## Solution

The `bugSolution.ada` file provides a corrected version using an explicit loop to copy array elements.