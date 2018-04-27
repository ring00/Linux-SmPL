//# pattern-12, witnesses: 2
@r0@
identifier i, fn;
@@
struct inet_connection_sock_af_ops i = {
    .bind_conflict = fn,
};
@@
typedef bool;
identifier relax;
identifier sk;
identifier tb;
@@
 int inet6_csk_bind_conflict(const struct sock * sk, const struct inet_bind_bucket * tb, bool relax)
 {
     <...
- ipv6_rcv_saddr_equal(sk, sk2)
+ ipv6_rcv_saddr_equal(sk, sk2, true)
     ...>
 }
