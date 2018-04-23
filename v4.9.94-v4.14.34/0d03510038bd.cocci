//# pattern-3, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct nf_conntrack_l3proto s = {
-    .nlattr_tuple_size = F1,
+    .nla_size = (sizeof(unsigned long) + 4 - 1 & ~4 - 1) + sizeof(unsigned long) + 4 - 1 & ~4 - 1 + (sizeof(unsigned long) + 4 - 1 & ~4 - 1) + sizeof(unsigned long) + 4 - 1 & ~4 - 1,
 };
