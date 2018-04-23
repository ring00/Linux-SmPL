//# pattern-2, witnesses: 16
@r0@
identifier i, fn;
@@
struct nf_hook_ops i = {
    .hook = fn,
};
@@
identifier ops;
identifier r0.fn;
identifier skb;
identifier state;
@@
- unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
+ unsigned int fn(void * priv, struct sk_buff * skb, const struct nf_hook_state * state)
 { ... }
//# pattern-1, witnesses: 5
@r1@
identifier fn;
expression P0;
@@
xt_hook_link(P0, fn)
@@
identifier priv;
identifier r1.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(void * priv, struct sk_buff * skb, const struct nf_hook_state * state)
 { ... }
