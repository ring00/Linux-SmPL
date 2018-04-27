//# pattern-4, witnesses: 13
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
@@
- keyring_alloc(E0, E1, E2, E3, E4, E5, E6)
+ keyring_alloc(E0, E1, E2, E3, E4, E5, NULL, E6)
//# pattern-3, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
@@
- key_alloc(E0, E1, E2, E3, E4, E5, E6)
+ key_alloc(E0, E1, E2, E3, E4, E5, E6, NULL)
