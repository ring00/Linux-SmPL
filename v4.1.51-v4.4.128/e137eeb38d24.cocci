//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- sk_attach_filter(&tun->fprog, tfile->socket.sk)
+ __sk_attach_filter(&tun->fprog, tfile->socket.sk, lockdep_rtnl_is_held(listE0))
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression V0;
identifier fprog;
identifier sk;
@@
- int sk_attach_filter(struct sock_fprog * fprog, struct sock * sk)
+ int sk_attach_filter(struct sock_fprog * fprog, struct sock * sk)
 {
     <...
- struct bpf_prog * prog = prog;
- int err = err;
- prog = bpf_prog_alloc(bpf_fsize, 0);
- err = bpf_prog_store_orig_filter(prog, fprog);
- V0 = ;
     ...>
 }
//# pattern-11, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression IL1;
identifier fprog;
identifier sk;
@@
 int sk_attach_filter(struct sock_fprog * fprog, struct sock * sk)
 {
     <...
- if (E0) {
- return -IL1;
- }
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- struct bpf_prog * prog = prog;
- prog = bpf_prog_alloc(bpf_fsize, 0);
