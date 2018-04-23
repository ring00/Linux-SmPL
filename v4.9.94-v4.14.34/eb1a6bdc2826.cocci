//# pattern-3, witnesses: 15
@@
expression E0;
@@
- E0 = 
+ E0 = -ENOENT
//# pattern-1, witnesses: 9
@@
statement S0;
@@
- if (!IS_ERR_OR_NULL(t)) { S0 }
+ if (t) { S0 }
//# pattern-2, witnesses: 6
@@
statement S0;
@@
- if (IS_ERR_OR_NULL(t)) { S0 }
+ if (!t) { S0 }
