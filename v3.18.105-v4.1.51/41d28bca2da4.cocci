//# pattern-1, witnesses: 9
@@
expression E0;
expression E1;
@@
- d_materialise_unique(E0, E1)
+ d_splice_alias(E1, E0)
