//# pattern-6, witnesses: 3
@r0@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .is_valid_access = fn,
};
@@
typedef bool;
identifier info;
identifier off;
identifier r0.fn;
identifier size;
identifier type;
@@
- bool fn(int off, int size, enum bpf_access_type type, struct bpf_insn_access_aux * info)
+ bool fn(int off, int size, enum bpf_access_type type, struct bpf_insn_access_aux * info)
 { ... }
