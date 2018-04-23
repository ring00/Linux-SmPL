//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_set_ops i = {
    .remove = fn,
};
@@
identifier elem;
identifier r0.fn;
identifier set;
@@
- void fn(const struct nft_set * set, const struct nft_set_elem * elem)
+ void fn(const struct net * net, const struct nft_set * set, const struct nft_set_elem * elem)
 { ... }
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier net;
identifier skb;
@@
 int fn(struct net * net, struct sk_buff * skb)
 {
     <...
- te->set->ops->remove(te->set, &te->elem)
+ te->set->ops->remove(net, te->set, &te->elem)
     ...>
 }
