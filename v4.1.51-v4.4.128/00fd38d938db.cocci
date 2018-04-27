//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier backlog;
identifier r0.fn;
identifier sk;
@@
 void fn(struct sock * sk, int backlog)
 {
     <...
- sk->__sk_common.skc_state = E0;
+ sk_state_store(sk, E0);
     ...>
 }
