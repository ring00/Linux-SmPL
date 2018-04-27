//# pattern-8, witnesses: 3
@r0@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .is_valid_access = fn,
};
@@
typedef bool;
identifier ctx_field_size;
identifier off;
identifier r0.fn;
identifier reg_type;
identifier size;
identifier type;
@@
- bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type, int * ctx_field_size)
+ bool fn(int off, int size, enum bpf_access_type type, struct bpf_insn_access_aux * info)
 { ... }
//# pattern-5, witnesses: 2
@r1@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .is_valid_access = fn,
};
@@
typedef bool;
identifier ctx_field_size;
identifier off;
identifier r1.fn;
identifier reg_type;
identifier size;
identifier type;
@@
- bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type, int * ctx_field_size)
+ bool fn(int off, int size, enum bpf_access_type type, struct bpf_insn_access_aux * info)
 {
     <...
- __is_valid_access(off, size, type, ctx_field_size)
+ __is_valid_access(off, size, type, info)
     ...>
 }
//# pattern-6, witnesses: 2
@r2@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .is_valid_access = fn,
};
@@
typedef bool;
identifier info;
identifier off;
identifier r2.fn;
identifier size;
identifier type;
@@
 bool fn(int off, int size, enum bpf_access_type type, struct bpf_insn_access_aux * info)
 { ... }
