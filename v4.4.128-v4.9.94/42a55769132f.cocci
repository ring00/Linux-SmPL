//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call_batch = fn,
};
@@
expression V0;
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
- write_pnet(&V0->pnet, net);
     ...>
 }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct nft_set_ops i = {
    .activate = fn,
};
@@
expression V0;
identifier elem;
identifier r1.fn;
identifier set;
@@
- void fn(const struct nft_set * set, const struct nft_set_elem * elem)
+ void fn(const struct net * net, const struct nft_set * set, const struct nft_set_elem * elem)
 {
     <...
- nft_set_elem_change_active(set, &V0->ext)
+ nft_set_elem_change_active(net, set, &V0->ext)
     ...>
 }
//# pattern-5, witnesses: 2
@r2@
identifier i, fn;
@@
struct nft_set_ops i = {
    .deactivate = fn,
};
@@
expression V0;
identifier elem;
identifier r2.fn;
identifier set;
@@
- void * fn(const struct nft_set * set, const struct nft_set_elem * elem)
+ void * fn(const struct net * net, const struct nft_set * set, const struct nft_set_elem * elem)
 {
     <...
- nft_set_elem_change_active(set, &V0->ext)
+ nft_set_elem_change_active(net, set, &V0->ext)
     ...>
 }
//# pattern-6, witnesses: 2
@@
identifier fn;
identifier net;
identifier skb;
@@
 int fn(struct net * net, struct sk_buff * skb)
 {
     <...
- te->set->ops->activate(te->set, &te->elem)
+ te->set->ops->activate(net, te->set, &te->elem)
     ...>
 }
//# pattern-8, witnesses: 2
@r3@
identifier i, fn;
@@
struct nft_set_ops i = {
    .lookup = fn,
};
@@
typedef bool;
identifier ext;
identifier key;
identifier r3.fn;
identifier set;
@@
- bool fn(const struct nft_set * set, const u32 * key, const struct nft_set_ext ** ext)
+ bool fn(const struct net * net, const struct nft_set * set, const u32 * key, const struct nft_set_ext ** ext)
 {
     <...
- read_pnet(&set->pnet)
+ net
     ...>
 }
