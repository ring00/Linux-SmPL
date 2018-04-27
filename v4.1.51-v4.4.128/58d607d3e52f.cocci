//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct inet_connection_sock_af_ops i = {
    .syn_recv_sock = fn,
};
@@
identifier dst;
identifier r0.fn;
identifier req;
identifier sk;
identifier skb;
@@
 struct sock * fn(struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst)
 {
     <...
- sk_set_txhash(newsk);
+ newsk->sk_txhash = tcp_rsk(req)->txhash;
     ...>
 }
