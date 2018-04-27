//# pattern-1, witnesses: 2
@@
identifier fn;
identifier func_id;
@@
- const struct bpf_func_proto * fn(enum bpf_func_id func_id)
+ const struct bpf_func_proto * fn(enum bpf_func_id func_id)
 { ... }
