//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
expression EC2;
@@
- nf_tables_chain_lookup(E0, E1[EC2])
+ nf_tables_chain_lookup(E0, E1[EC2], genmask)
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call = fn,
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
- chain = nf_tables_chain_lookup(table, nla[EC0]);
- if (chain->flags & NFT_CHAIN_INACTIVE) {
- return -ENOENT;
- }
+ chain = nf_tables_chain_lookup(table, nla[EC0], genmask);
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier fn;
identifier net;
identifier skb;
@@
 int fn(struct net * net, struct sk_buff * skb)
 {
     <...
- nf_tables_table_disable(trans->ctx.afi, trans->ctx.table)
+ nf_tables_table_disable(net, trans->ctx.afi, trans->ctx.table)
     ...>
 }
