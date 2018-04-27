//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier do_chain;
identifier in;
identifier ops;
identifier out;
identifier r0.fn;
identifier skb;
@@
- unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct net_device * in, const struct net_device * out, unsigned int (*)(const struct nf_hook_ops *, struct sk_buff *, const struct net_device *, const struct net_device *, struct nf_conn *) do_chain)
+ unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state, unsigned int (*)(const struct nf_hook_ops *, struct sk_buff *, const struct nf_hook_state *, struct nf_conn *) do_chain)
 {
     <...
- nf_nat_ipv6_fn(ops, skb, in, out, do_chain)
+ nf_nat_ipv6_fn(ops, skb, state, do_chain)
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression F0;
identifier fn;
identifier ops;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- nf_nat_ipv6_in(ops, skb, state->in, state->out, F0)
+ nf_nat_ipv6_in(ops, skb, state, F0)
     ...>
 }
//# pattern-5, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier do_chain;
identifier ops;
identifier skb;
identifier state;
@@
 unsigned int nf_nat_ipv6_fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state, unsigned int (*)(const struct nf_hook_ops *, struct sk_buff *, const struct nf_hook_state *, struct nf_conn *) do_chain)
 {
     <...
- nf_nat_oif_changed(ops->hooknum, ctinfo, nat, out)
+ nf_nat_oif_changed(ops->hooknum, ctinfo, nat, state->out)
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression F0;
identifier fn;
identifier ops;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- nf_nat_ipv6_fn(ops, skb, state->in, state->out, F0)
+ nf_nat_ipv6_fn(ops, skb, state, F0)
     ...>
 }
