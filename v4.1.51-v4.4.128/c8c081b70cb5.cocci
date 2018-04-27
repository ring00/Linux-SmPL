//# pattern-1, witnesses: 2
@@
expression F1;
expression F2;
expression F3;
identifier s;
@@
 const struct seq_operations s = {
-    .start = F1,
-    .stop = F2,
-    .next = F3,
+    .start = cache_seq_start,
+    .stop = cache_seq_stop,
+    .next = cache_seq_next,
 };
