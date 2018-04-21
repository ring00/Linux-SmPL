//# pattern-1, witnesses: 11
@@
expression E0;
expression E1;
@@
- bioset_create(E0, E1)
+ bioset_create(E0, E1, BIOSET_NEED_BVECS)
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- bioset_create(E0, 0)
+ bioset_create(E0, 0, 0)
