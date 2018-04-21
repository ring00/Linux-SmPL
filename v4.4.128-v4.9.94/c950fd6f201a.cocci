//# pattern-1, witnesses: 2
@@
expression E1;
identifier s;
@@
 struct pstore_info s = {
+    . = E1 << 0,
 };
