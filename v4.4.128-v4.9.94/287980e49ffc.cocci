//# pattern-1, witnesses: 2
@@
expression E1;
statement S0;
@@
- if (IS_ERR_VALUE(ret)) { S0 }
+ if (ret < E1) { S0 }
//# pattern-2, witnesses: 2
@@
expression E1;
statement S0;
@@
- if (IS_ERR_VALUE(ret)) { S0 }
+ if (ret < E1) { S0 }
//# pattern-3, witnesses: 2
@@
expression E0;
expression E2;
statement S1;
@@
- if (IS_ERR_VALUE(E0)) { S1 }
+ if (E0 < E2) { S1 }
//# pattern-4, witnesses: 2
@@
expression E0;
expression E2;
statement S1;
@@
- if (IS_ERR_VALUE(E0)) { S1 }
+ if (E0 < E2) { S1 }
//# pattern-5, witnesses: 2
@@
expression E2;
statement S1;
expression V0;
@@
- if (IS_ERR_VALUE(V0)) { S1 }
+ if (V0 < E2) { S1 }
//# pattern-6, witnesses: 2
@@
expression E2;
statement S1;
expression V0;
@@
- if (IS_ERR_VALUE(V0)) { S1 }
+ if (V0 < E2) { S1 }
//# pattern-7, witnesses: 2
@@
expression E1;
statement S0;
@@
- if (IS_ERR_VALUE(ret)) { S0 }
+ if (ret < E1) { S0 }
