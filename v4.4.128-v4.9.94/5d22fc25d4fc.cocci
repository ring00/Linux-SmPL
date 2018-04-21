//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (IS_ERR_VALUE(error)) { S0 }
+ if (error) { S0 }
//# pattern-3, witnesses: 2
@@
statement S0;
@@
- if (BAD_ADDR(error)) { S0 }
+ if (error) { S0 }
