//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct tcp_request_sock_ops i = {
    .cookie_init_seq = fn,
};
@@
typedef __u32;
identifier mssp;
identifier r0.fn;
identifier sk;
identifier skb;
@@
- __u32 fn(struct sock * sk, const struct sk_buff * skb, __u16 * mssp)
+ __u32 fn(const struct sk_buff * skb, __u16 * mssp)
 {
     <...
- NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_SYNCOOKIESSENT);
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct tcp_request_sock_ops i = {
    .cookie_init_seq = fn,
};
@@
typedef __u32;
identifier mssp;
identifier r1.fn;
identifier skb;
@@
 __u32 fn(const struct sk_buff * skb, __u16 * mssp)
 {
     <...
- tcp_synq_overflow(sk);
     ...>
 }
