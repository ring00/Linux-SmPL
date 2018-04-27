//# pattern-1, witnesses: 4
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL0;
identifier do_chain;
identifier priv;
identifier r0.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(void * priv, struct sk_buff * skb, const struct nf_hook_state * state, unsigned int (*)(void *, struct sk_buff *, const struct nf_hook_state *, struct nf_conn *) do_chain)
 {
     <...
- nf_xfrm_me_harder(skb, IL0)
+ nf_xfrm_me_harder(state->net, skb, IL0)
     ...>
 }
