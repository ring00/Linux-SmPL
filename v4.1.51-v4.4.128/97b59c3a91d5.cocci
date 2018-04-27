//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct nf_hook_ops i = {
    .hook = fn,
};
@@
expression ME0;
identifier ops;
identifier r0.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- ebt_do_table(ops->hooknum, skb, state->in, state->out, ME0)
+ ebt_do_table(skb, state, ME0)
     ...>
 }
