//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .get_func_proto = fn,
};
@@
identifier func_id;
identifier r0.fn;
@@
- const struct bpf_func_proto * fn(enum bpf_func_id func_id)
+ const struct bpf_func_proto * fn(enum bpf_func_id func_id)
 { ... }
