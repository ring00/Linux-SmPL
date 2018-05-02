//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct dst_ops i = {
    .local_out = fn,
};
@@
identifier r0.fn;
identifier sk;
identifier skb;
@@
- int fn(struct sock * sk, struct sk_buff * skb)
+ int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- struct net * net = dev_net(skb_dst(skb)->dev);
     ...>
 }
