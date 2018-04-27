//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct nf_hook_ops i = {
    .hook = fn,
};
@@
identifier priv;
identifier r0.fn;
identifier skb;
identifier state;
@@
 unsigned int fn(void * priv, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- br_validate_ipv4(skb)
+ br_validate_ipv4(state->net, skb)
     ...>
 }
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier priv;
identifier skb;
identifier state;
@@
 unsigned int fn(void * priv, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- br_validate_ipv6(skb)
+ br_validate_ipv6(state->net, skb)
     ...>
 }
