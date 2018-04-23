//# pattern-1, witnesses: 47
@r0@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call = fn,
};
@@
identifier attr;
identifier ctnl;
identifier net;
identifier nlh;
identifier r0.fn;
identifier skb;
@@
- int fn(struct net * net, struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * attr)
+ int fn(struct net * net, struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * attr, struct netlink_ext_ack * extack)
 { ... }
//# pattern-2, witnesses: 12
@r1@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call_batch = fn,
};
@@
identifier extack;
identifier net;
identifier nla;
identifier nlh;
identifier nlsk;
identifier r1.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * nlsk, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nla, struct netlink_ext_ack * extack)
 { ... }
//# pattern-7, witnesses: 3
@r2@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call_rcu_sched = fn,
};
@@
identifier ctnl;
identifier extack;
identifier net;
identifier nfqa;
identifier nlh;
identifier r2.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nfqa, struct netlink_ext_ack * extack)
 { ... }
//# pattern-6, witnesses: 2
@r3@
identifier fn;
expression P0;
@@
netlink_rcv_skb(P0, fn)
@@
expression ME0;
identifier extack;
identifier nlh;
identifier skb;
@@
 int nfnetlink_rcv_msg(struct sk_buff * skb, struct nlmsghdr * nlh, struct netlink_ext_ack * extack)
 {
     <...
- ME0(net, net->nfnl, skb, nlh, cda)
+ ME0(net, net->nfnl, skb, nlh, cda, extack)
     ...>
 }
