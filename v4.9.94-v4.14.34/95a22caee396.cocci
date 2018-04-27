//# pattern-9, witnesses: 2
@r0@
identifier i, fn;
@@
struct request_sock_ops i = {
    .send_ack = fn,
};
@@
identifier r0.fn;
identifier req;
identifier sk;
identifier skb;
@@
 void fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * req)
 {
     <...
- tcp_time_stamp
+ tcp_time_stamp + tcp_rsk(req)->ts_off
     ...>
 }
