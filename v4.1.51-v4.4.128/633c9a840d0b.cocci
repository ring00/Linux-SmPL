//# pattern-2, witnesses: 9
@r0@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call_batch = fn,
};
@@
expression E0;
expression E1;
expression E2;
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
- nft_ctx_init(&ctx, skb, nlh, E0, E1, E2, nla)
+ nft_ctx_init(&ctx, net, skb, nlh, E0, E1, E2, nla)
     ...>
 }
//# pattern-1, witnesses: 8
@r1@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call_batch = fn,
};
@@
identifier net;
identifier nla;
identifier nlh;
identifier nlsk;
identifier r1.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * nlsk, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nla)
 {
     <...
- struct net * net = sock_net(skb->sk);
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
@@
- nft_ctx_init_from_elemattr(&ctx, E0, E1, nla, false)
+ nft_ctx_init_from_elemattr(&ctx, net, E0, E1, nla, false)
//# pattern-14, witnesses: 2
@r2@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call_batch = fn,
};
@@
expression EC0;
identifier net;
identifier nla;
identifier nlh;
identifier nlsk;
identifier r2.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * nlsk, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nla)
 {
     <...
- nft_ctx_init_from_elemattr(&ctx, skb, nlh, nla, EC0)
+ nft_ctx_init_from_elemattr(&ctx, net, skb, nlh, nla, EC0)
     ...>
 }
