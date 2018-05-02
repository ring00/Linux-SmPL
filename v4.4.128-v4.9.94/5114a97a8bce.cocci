//# pattern-3, witnesses: 7
@@
expression ME0;
@@
- set_bit(AS_EIO, &ME0->flags)
+ mapping_set_error(ME0, -EIO)
