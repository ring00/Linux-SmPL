//# pattern-12, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef __u16;
identifier sk;
identifier tx_flags;
@@
- void __sock_tx_timestamp(const struct sock * sk, __u8 * tx_flags)
+ void __sock_tx_timestamp(__u16 tsflags, __u8 * tx_flags)
 {
     <...
- sk->sk_tsflags & E0
+ tsflags & E0
     ...>
 }
//# pattern-4, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
expression E7;
expression F0;
@@
- ip6_append_data(sk, F0, E1, E2, E3, hlimit, E4, E5, &fl6, dst, E6, E7)
+ ip6_append_data(sk, F0, E1, E2, E3, hlimit, E4, E5, &fl6, dst, E6, E7, &sockc_unused)
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
identifier fn;
identifier len;
identifier msg;
identifier sk;
@@
 int fn(struct sock * sk, struct msghdr * msg, size_t len)
 {
     <...
- ip6_append_data(sk, E0, E1, E2, E3, hlimit, tclass, opt, &fl6, dst, E4, dontfrag)
+ ip6_append_data(sk, E0, E1, E2, E3, hlimit, tclass, opt, &fl6, dst, E4, dontfrag, &sockc)
     ...>
 }
//# pattern-16, witnesses: 2
@@
identifier fn;
identifier len;
identifier msg;
identifier sk;
@@
 int fn(struct sock * sk, struct msghdr * msg, size_t len)
 {
     <...
- sockc.tsflags = 0
+ sockc.tsflags = sk->sk_tsflags
     ...>
 }
