//# pattern-2, witnesses: 6
@@
expression E0;
@@
- E0 = dst_discard_sk
+ E0 = dst_discard_out
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct dst_entry i = {
    .output = fn,
};
@@
identifier r0.fn;
identifier sk;
identifier skb;
@@
- int fn(struct sock * sk, struct sk_buff * skb)
+ int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 { ... }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct xfrm_state_afinfo i = {
    .output = fn,
};
@@
identifier net;
identifier r1.fn;
identifier sk;
identifier skb;
@@
 int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- struct net * net = dev_net(skb_dst(skb)->dev);
     ...>
 }
