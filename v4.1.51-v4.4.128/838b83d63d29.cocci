//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
expression E3;
expression E4;
expression E5;
expression IL2;
@@
- dev_hard_header(E0, E1, IL2, &E3, E4, E5)
+ wpan_dev_hard_header(E0, E1, &E3, E4, E5)
