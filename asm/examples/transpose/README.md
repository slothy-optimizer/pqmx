# Example: Using markers to access non-contiguous buffers

## Summary

This examples implements a 'coarse' buffer transposition, demonstrating how the
[`gen/core/markers`](../../gen/core/markers.py) helper class can be used to access logically contiguous buffers that are coarsely scattered in memory.

Here, by 'coarsely' we mean that the scattering happens at a granularity coarser than the
vector length, so that the underlying load/store primitives are still contiguous load/stores provided by `VLDR` and
`VSTR`, and the main issue are the correct inference of access base registers and offsets. For buffers scattered at a
the lane level, `VLD2x`, `VLD4x`, `VST2x` and `VST4x` need to be used.
