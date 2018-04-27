//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct tcp_congestion_ops i = {
    .get_info = fn,
};
@@
identifier ext;
identifier r0.fn;
identifier sk;
identifier skb;
typedef u32;
@@
- void fn(struct sock * sk, u32 ext, struct sk_buff * skb)
+ int fn(struct sock * sk, u32 ext, struct sk_buff * skb)
 {
     ...
+ return 0;
 }
//# pattern-3, witnesses: 4
@r1@
identifier i, fn;
@@
struct tcp_congestion_ops i = {
    .get_info = fn,
};
@@
expression EC0;
identifier ext;
identifier r1.fn;
identifier sk;
identifier skb;
typedef u32;
@@
 int fn(struct sock * sk, u32 ext, struct sk_buff * skb)
 {
     ...
+ return nla_put(skb, EC0, sizeof(unsigned long), &info);
 }
