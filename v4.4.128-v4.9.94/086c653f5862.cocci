//# pattern-1, witnesses: 6
@r0@
identifier i, fn;
@@
struct proto i = {
    .hash = fn,
};
@@
identifier r0.fn;
identifier sk;
@@
- void fn(struct sock * sk)
+ int fn(struct sock * sk)
 {
     ...
+ return 0;
 }
//# pattern-6, witnesses: 2
@@
@@
- sk->__sk_common.skc_prot->hash(sk);
+ err = sk->__sk_common.skc_prot->hash(sk);
+ if (err) {
+ sk_common_release(sk);
+ }
