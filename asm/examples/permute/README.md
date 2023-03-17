# Example: Using markers for random access to a large buffer

## Summary

This example implements a random permutation of a large buffer, demonstrating how the
[`gen/core/markers`](../../gen/core/markers.py) helper class can be used to provide random access to a large buffer.

## Details

The underlying problem is that the immediate offset for vector loads and stores is limited to the range -127, ...,
+127, and that random access for arrays with more than 255 elements thus requires the computation of intermediate
address 'markers' so that every array entry is reachable from one of those 'markers' by a shift less than 128 in
absolute value.

Doing this covering by hand is tedious and error prone, and the ReadWriteMarkers class takes care of it.

## Note

Often, this problem can be avoided by gradually shifting the marker as memory is being read or written. For
example, a linear access for an implementation of memcpy() would use the post-increment variants of `VLDR`/`VSTR` to avoid
any intermediate markers or complicated offset calculations, regardless of the size of the buffer. The markers are only
needed if random access is required, or if modifying the base register for the buffer isn't desired.
