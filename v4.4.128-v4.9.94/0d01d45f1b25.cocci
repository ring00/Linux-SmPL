//# pattern-3, witnesses: 2
@@
identifier oldprog;
identifier prog;
identifier tp;
@@
 void cls_bpf_offload(struct tcf_proto * tp, struct cls_bpf_prog * prog, struct cls_bpf_prog * oldprog)
 {
     <...
- tc_should_offload(dev, tp, 0)
+ tc_should_offload(dev, tp, prog->gen_flags)
     ...>
 }
