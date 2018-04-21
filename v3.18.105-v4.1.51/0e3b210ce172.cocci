//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct vm_operations_struct s = {
+    .pfn_mkwrite = dax_pfn_mkwrite,
 };
