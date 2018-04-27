//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct inet_connection_sock_af_ops i = {
    .bind_conflict = fn,
};
@@
expression E0;
typedef bool;
identifier r0.fn;
identifier relax;
identifier sk;
identifier tb;
@@
 int fn(const struct sock * sk, const struct inet_bind_bucket * tb, bool relax)
 {
     <...
- !reuseport || !sk2->__sk_common.skc_reuseport || E0
+ !reuseport || !sk2->__sk_common.skc_reuseport || rcu_access_pointer(sk->sk_reuseport_cb) || E0
     ...>
 }
