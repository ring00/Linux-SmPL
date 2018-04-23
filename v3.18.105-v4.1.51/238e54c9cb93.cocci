//# pattern-14, witnesses: 7
@r0@
identifier i, fn;
@@
struct nf_hook_ops i = {
    .hook = fn,
};
@@
identifier in;
identifier okfn;
identifier ops;
identifier out;
identifier r0.fn;
identifier skb;
@@
- unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct net_device * in, const struct net_device * out, int (*)(struct sk_buff *) okfn)
+ unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 { ... }
//# pattern-2, witnesses: 4
@r1@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
expression F0;
expression ME1;
identifier ops;
identifier r1.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- F0(skb, ops->hooknum, in, out, ME1)
+ F0(skb, ops->hooknum, state->in, state->out, ME1)
     ...>
 }
//# pattern-8, witnesses: 4
@r2@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
identifier ops;
identifier r2.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 { ... }
//# pattern-9, witnesses: 4
@r3@
identifier i, fn;
@@
struct nf_hook_ops i = {
    .hook = fn,
};
@@
expression F0;
identifier ops;
identifier r3.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- F0(ops, skb, in, out, iptable_nat_do_chain)
+ F0(ops, skb, state->in, state->out, iptable_nat_do_chain)
     ...>
 }
