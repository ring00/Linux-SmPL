//# pattern-1, witnesses: 4
@@
identifier s;
@@
 const struct bpf_func_proto s = {
+    .pkt_access = true,
 };
