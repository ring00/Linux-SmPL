//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct tcp_sock_af_ops i = {
    .md5_lookup = fn,
};
@@
identifier addr_sk;
identifier r0.fn;
identifier sk;
@@
- struct tcp_md5sig_key * fn(struct sock * sk, const struct sock * addr_sk)
+ struct tcp_md5sig_key * fn(const struct sock * sk, const struct sock * addr_sk)
 { ... }
