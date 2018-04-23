//# pattern-1, witnesses: 6
@r0@
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
identifier r0.fn;
identifier skb;
@@
 int fn(struct net * net, struct sock * nlsk, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nla)
 {
     <...
- nf_tables_table_lookup(afi, nla[EC0])
+ nf_tables_table_lookup(afi, nla[EC0], genmask)
     ...>
 }
//# pattern-14, witnesses: 4
@@
expression E0;
expression E1;
@@
- nft_ctx_init_from_elemattr(&ctx, net, E0, E1, nla)
+ nft_ctx_init_from_elemattr(&ctx, net, E0, E1, nla, genmask)
//# pattern-9, witnesses: 2
@@
identifier fn;
identifier net;
identifier nla;
identifier nlh;
identifier nlsk;
identifier skb;
@@
 int fn(struct net * net, struct sock * nlsk, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * nla)
 {
     <...
- nft_ctx_init_from_setattr(&ctx, net, skb, nlh, nla)
+ nft_ctx_init_from_setattr(&ctx, net, skb, nlh, nla, genmask)
     ...>
 }
