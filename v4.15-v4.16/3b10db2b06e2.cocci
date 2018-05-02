//# pattern-1, witnesses: 4
@@
expression E0;
@@
- memset(E0, 0, sizeof(unsigned long))
+ clear_siginfo(E0)
