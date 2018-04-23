//# pattern-3, witnesses: 4
@@
identifier s;
@@
 struct nf_conntrack_l4proto s = {
+    .allow_clash = true,
 };
