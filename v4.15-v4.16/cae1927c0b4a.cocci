//# pattern-5, witnesses: 2
@@
expression E0;
identifier prog;
@@
 int bpf_prog_offload_translate(struct bpf_prog * prog)
 {
     <...
- struct bpf_dev_offload * offload = prog->aux->offload;
- E0;
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier s;
@@
- const struct bpf_ext_analyzer_ops s = {
+ const struct bpf_prog_offload_ops s = {
 };
