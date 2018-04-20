//# pattern-2, witnesses: 3
@@
expression list listE0;
@@
- debugfs_positive(listE0)
+ simple_positive(listE0)
//# pattern-4, witnesses: 2
@@
statement S2;
expression V0;
expression V1;
@@
- if (!d_unhashed(V0) && d_really_is_positive(V1)) { S2 }
+ if (simple_positive(V1)) { S2 }
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- tracefs_positive(listE0)
+ simple_positive(listE0)
