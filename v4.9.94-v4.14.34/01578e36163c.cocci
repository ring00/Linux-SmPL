//# pattern-1, witnesses: 2
@@
expression E0;
statement S1;
@@
- if (E0 && !current->personality & ADDR_NO_RANDOMIZE) { S1 }
+ if (current->flags & PF_RANDOMIZE) { S1 }
