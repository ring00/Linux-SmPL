//# pattern-2, witnesses: 2
@@
expression S2;
expression V0;
expression V1;
@@
- tap_create_cdev(&V0, &V1, S2)
+ tap_create_cdev(&V0, &V1, S2, THIS_MODULE)
