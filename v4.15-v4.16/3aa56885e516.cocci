//# pattern-1, witnesses: 5
@@
expression E0;
expression E1;
expression E3;
expression ME2;
@@
- bitmap_from_u32array(E0, E1, ME2, E3)
+ bitmap_from_arr32(E0, ME2, E1)
