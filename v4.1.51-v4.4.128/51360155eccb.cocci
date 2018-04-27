//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- __wake_up_locked_key(E0, E1, E2)
+ __wake_up_locked_key(E0, E1, 1, E2)
