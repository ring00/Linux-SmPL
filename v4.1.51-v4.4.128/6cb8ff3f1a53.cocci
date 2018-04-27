//# pattern-1, witnesses: 7
@@
expression E0;
expression ME1;
@@
- ip6t_do_table(skb, E0, state, ME1)
+ ip6t_do_table(skb, state, ME1)
//# pattern-2, witnesses: 7
@@
expression E0;
expression ME1;
@@
- ipt_do_table(skb, E0, state, ME1)
+ ipt_do_table(skb, state, ME1)
//# pattern-3, witnesses: 7
@r0@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
identifier ops;
identifier r0.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- ops->hooknum
+ state->hook
     ...>
 }
