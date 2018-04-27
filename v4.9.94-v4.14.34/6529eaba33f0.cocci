//# pattern-4, witnesses: 17
@@
expression E0;
@@
- tcf_destroy_chain(&E0->filter_list)
+ tcf_block_put(E0->block)
//# pattern-3, witnesses: 2
@@
identifier s;
@@
 struct Qdisc_ops s = {
+    .priv_size = sizeof(unsigned long),
 };
