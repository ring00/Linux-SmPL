//# pattern-10, witnesses: 2
@r0@
identifier i, fn;
@@
struct bpf_verifier_ops i = {
    .convert_ctx_access = fn,
};
@@
identifier ctx_off;
identifier dst_reg;
identifier insn_buf;
identifier prog;
identifier src_reg;
identifier type;
typedef u32;
@@
- u32 pe_prog_convert_ctx_access(enum bpf_access_type type, int dst_reg, int src_reg, int ctx_off, struct bpf_insn * insn_buf, struct bpf_prog * prog)
+ u32 pe_prog_convert_ctx_access(enum bpf_access_type type, const struct bpf_insn * si, struct bpf_insn * insn_buf, struct bpf_prog * prog)
 {
     <...
- BPF_LDX_MEM(BPF_FIELD_SIZEOF, dst_reg, src_reg, offsetof)
+ BPF_LDX_MEM(BPF_FIELD_SIZEOF, si->dst_reg, si->src_reg, offsetof)
     ...>
 }
