//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct genl_ops i = {
    .doit = fn,
};
@@
identifier info;
identifier r0.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct genl_info * info)
 {
     <...
- net = skb_sknet(skb);
     ...>
 }
//# pattern-2, witnesses: 3
@@
@@
- ipvs = net_ipvs(net);
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct genl_ops i = {
    .dumpit = fn,
};
@@
identifier cb;
identifier r1.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct netlink_callback * cb)
 {
     <...
- skb_sknet(skb)
+ sock_net(skb->sk)
     ...>
 }
