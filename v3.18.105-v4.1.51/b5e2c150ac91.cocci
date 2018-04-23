//# pattern-1, witnesses: 3
@@
identifier s;
@@
 const struct rhashtable_params s = {
+    .automatic_shrinking = true,
 };
