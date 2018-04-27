//# pattern-3, witnesses: 3
@@
expression E2;
expression EC1;
expression ME0;
identifier env;
@@
 int do_check(struct bpf_verifier_env * env)
 {
     <...
- check_mem_access(env, ME0, insn->off, BPF_SIZE(insn->code), EC1, E2)
+ check_mem_access(env, insn_idx, ME0, insn->off, BPF_SIZE(insn->code), EC1, E2)
     ...>
 }
//# pattern-8, witnesses: 3
@r0@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .is_valid_access = fn,
};
@@
typedef bool;
identifier off;
identifier r0.fn;
identifier reg_type;
identifier size;
identifier type;
@@
- bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type)
+ bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type, int * ctx_field_size)
 { ... }
//# pattern-14, witnesses: 2
@r1@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .is_valid_access = fn,
};
@@
typedef bool;
identifier off;
identifier r1.fn;
identifier reg_type;
identifier size;
identifier type;
@@
- bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type)
+ bool fn(int off, int size, enum bpf_access_type type, enum bpf_reg_type * reg_type, int * ctx_field_size)
 {
     <...
- __is_valid_access(off, size)
+ __is_valid_access(off, size, type, ctx_field_size)
     ...>
 }
