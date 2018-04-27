//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct inet_connection_sock_af_ops i = {
    .syn_recv_sock = fn,
};
@@
identifier dst;
identifier own_req;
identifier r0.fn;
identifier req;
identifier req_unhash;
identifier sk;
identifier skb;
@@
 struct sock * fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst, struct request_sock * req_unhash, bool * own_req)
 {
     <...
- if (tcp_sk(sk)->rx_opt.user_mss && tcp_sk(sk)->rx_opt.user_mss < newtp->advmss) {
- newtp->advmss = tcp_sk(sk)->rx_opt.user_mss;
- }
     ...>
 }
//# pattern-5, witnesses: 2
@r1@
identifier i, fn;
@@
struct inet_connection_sock_af_ops i = {
    .syn_recv_sock = fn,
};
@@
expression E0;
identifier dst;
identifier own_req;
identifier r1.fn;
identifier req;
identifier req_unhash;
identifier sk;
identifier skb;
@@
 struct sock * fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * req, struct dst_entry * dst, struct request_sock * req_unhash, bool * own_req)
 {
     <...
- E0 = dst_metric_advmss(dst)
+ E0 = tcp_mss_clamp(tcp_sk(sk), dst_metric_advmss(dst))
     ...>
 }
