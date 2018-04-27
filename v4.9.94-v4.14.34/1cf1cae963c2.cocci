//# pattern-1, witnesses: 4
@@
identifier s;
@@
 const struct bpf_verifier_ops s = {
+    .test_run = bpf_prog_test_run_skb,
 };
