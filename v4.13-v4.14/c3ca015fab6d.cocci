//# pattern-1, witnesses: 2
@@
expression E0;
@@
- dax_flush(dax_dev, pgoff, E0, size)
+ dax_flush(dax_dev, E0, size)
//# pattern-2, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct target_type s = {
-    .dax_flush = F1,
 };
//# pattern-5, witnesses: 2
@@
expression F1;
identifier s;
@@
 const struct dax_operations s = {
-    .flush = F1,
 };
