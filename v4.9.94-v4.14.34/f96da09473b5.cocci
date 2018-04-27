//# pattern-21, witnesses: 3
@@
expression list listE0;
@@
- __is_valid_access(listE0)
+ bpf_skb_is_valid_access(listE0)
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .convert_ctx_access = fn,
};
@@
identifier insn_buf;
identifier prog;
identifier r0.fn;
identifier si;
identifier type;
typedef u32;
@@
- u32 fn(enum bpf_access_type type, const struct bpf_insn * si, struct bpf_insn * insn_buf, struct bpf_prog * prog)
+ u32 fn(enum bpf_access_type type, const struct bpf_insn * si, struct bpf_insn * insn_buf, struct bpf_prog * prog, u32 * target_size)
 { ... }
//# pattern-15, witnesses: 2
@@
@@
- BPF_LDX_MEM()
+ BPF_LDX_MEM()
//# pattern-16, witnesses: 2
@r1@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .convert_ctx_access = fn,
};
@@
identifier insn_buf;
identifier prog;
identifier r1.fn;
identifier si;
identifier target_size;
identifier type;
typedef u32;
@@
 u32 fn(enum bpf_access_type type, const struct bpf_insn * si, struct bpf_insn * insn_buf, struct bpf_prog * prog, u32 * target_size)
 { ... }
