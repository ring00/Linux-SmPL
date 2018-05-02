//# pattern-1, witnesses: 3
@@
expression E1;
expression EC2;
expression EC3;
expression F0;
expression V4;
@@
- efivar_init(F0, E1, EC2, EC3, &V4)
+ efivar_init(F0, E1, EC3, &V4)
