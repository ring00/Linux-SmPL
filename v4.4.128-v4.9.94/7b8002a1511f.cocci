//# pattern-3, witnesses: 23
@r0@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call = fn,
};
@@
expression E0;
identifier nla;
identifier nlh;
identifier nlsk;
identifier r0.fn;
identifier skb;
@@
- int fn(struct sock * nlsk, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nla)
+ int fn(struct net * net, struct sock * nlsk, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nla)
 {
     <...
- struct net * net = sock_net(E0);
     ...>
 }
//# pattern-5, witnesses: 16
@r1@
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
identifier r1.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * attr)
 { ... }
//# pattern-4, witnesses: 8
@r2@
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
identifier r2.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * attr)
 {
     <...
- sock_net(ctnl)
+ net
     ...>
 }
//# pattern-2, witnesses: 2
@r3@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call_rcu_sched = fn,
};
@@
identifier ctnl;
identifier net;
identifier nfqa;
identifier nlh;
identifier r3.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nfqa)
 {
     <...
- struct net * net = sock_net(ctnl);
     ...>
 }
//# pattern-7, witnesses: 2
@r4@
identifier fn;
expression P0;
@@
netlink_rcv_skb(P0, fn)
@@
expression ME0;
identifier nlh;
identifier skb;
@@
 int nfnetlink_rcv_msg(struct sk_buff * skb, struct nlmsghdr * nlh)
 {
     <...
- ME0(net->nfnl, skb, nlh, cda)
+ ME0(net, net->nfnl, skb, nlh, cda)
     ...>
 }
