//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct request_sock_ops i = {
    .send_reset = fn,
};
@@
identifier r0.fn;
identifier sk;
identifier skb;
@@
- void fn(struct sock * sk, struct sk_buff * skb)
+ void fn(const struct sock * sk, struct sk_buff * skb)
 { ... }
//# pattern-2, witnesses: 3
@r1@
identifier i, fn;
@@
struct request_sock_ops i = {
    .send_ack = fn,
};
@@
identifier r1.fn;
identifier rsk;
identifier sk;
identifier skb;
@@
- void fn(struct sock * sk, struct sk_buff * skb, struct request_sock * rsk)
+ void fn(const struct sock * sk, struct sk_buff * skb, struct request_sock * rsk)
 { ... }
