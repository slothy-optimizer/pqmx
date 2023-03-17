# Vectorized Comba / Column-wise multiplication

## Idea

This directory contains code generation scripts for vectorized Comba / column-wise multiplication. The basic idea is simple: Compute partial sums of column-wise subproducts through the multiply-add-accumulate instruction of MVE, after 8 coefficients a time of each input have been loaded into vector registers.

## Results / Reflections

This approach has significant problems:

1. Only for columns whose index is a multiple of 8 do we actually compute and accumulate 8 subproducts in a single instruction. In all other colums, the use of only partially filled vectors is unavoidable, giving less than the optimal 8x performance speedup.

2. Continuing the first point: For columns whose length is not a multiple of 8, we need a means to ignore excess entries in the vectors at the boundary of the column. This could be done by filling the excess entries with 0, or by predicating the vector instruction -- both introduces non-negligible overhead.

3. One input operand needs to be reverse. While, on the ISA level, a reverse load is an example of a gather load, such loads tend to be significantly slower than consecutive loads, and should be avoided if possible. This can be largely mitigated by reversing the input in memory initially, but that too has a cost.

### Performance numbers

To be added

## Summary

This approach has been abandoned, and instead the current development focus lies on the SIMD approach described in [`codegen/examples/poly-simd`](../poly-simd).