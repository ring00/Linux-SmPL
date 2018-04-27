//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct proto i = {
    .backlog_rcv = fn,
};
@@
identifier r0.fn;
identifier sk;
identifier skb;
@@
 int fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- tcp_rcv_established(sk, skb, tcp_hdr(skb), skb->len)
+ tcp_rcv_established(sk, skb, tcp_hdr(skb))
     ...>
 }
