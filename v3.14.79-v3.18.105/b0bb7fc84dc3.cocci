//# pattern-1, witnesses: 5
@@
expression E0;
@@
- memset(E0, 0, sizeof(unsigned long))
+ memzero_explicit(E0, sizeof(unsigned long))
