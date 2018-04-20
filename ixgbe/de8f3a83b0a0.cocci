//# pattern-2, witnesses: 3
@@
@@
- type == PTR_TO_PACKET
+ type_is_pkt_pointer(type)
//# pattern-9, witnesses: 2
@@
expression V0;
@@
- find_good_pkt_pointers(V0, dst_reg)
+ find_good_pkt_pointers(V0, dst_reg, PTR_TO_PACKET)
//# pattern-21, witnesses: 2
@@
statement S0;
identifier env;
identifier insn;
identifier off_reg;
identifier ptr_reg;
@@
 int adjust_ptr_min_max_vals(struct bpf_verifier_env * env, struct bpf_insn * insn, const struct bpf_reg_state * ptr_reg, const struct bpf_reg_state * off_reg)
 {
     <...
- if (ptr_reg->type == PTR_TO_PACKET) { S0 }
+ if (reg_is_pkt_pointer(ptr_reg)) { S0 }
     ...>
 }
//# pattern-22, witnesses: 2
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
