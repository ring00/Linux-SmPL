//# pattern-2, witnesses: 2
@@
expression E1;
expression V0;
expression V2;
@@
- V0 = bpf_prog_get(E1);
- if (V2->type != BPF_PROG_TYPE_SOCKET_FILTER) {
- }
+ V0 = bpf_prog_get_type(E1, BPF_PROG_TYPE_SOCKET_FILTER);
//# pattern-7, witnesses: 2
@@
expression E0;
identifier sk;
typedef u32;
identifier ufd;
@@
 struct bpf_prog * __get_bpf(u32 ufd, struct sock * sk)
 {
     <...
- struct bpf_prog * prog = prog;
- prog = bpf_prog_get(ufd);
- if (E0) {
- }
     ...>
 }
