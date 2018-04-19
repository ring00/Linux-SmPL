//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct nf_afinfo i = {
    .reroute = fn,
};
@@
identifier entry;
identifier r0.fn;
identifier skb;
@@
- int fn(struct sk_buff * skb, const struct nf_queue_entry * entry)
+ int fn(struct net * net, struct sk_buff * skb, const struct nf_queue_entry * entry)
 { ... }
