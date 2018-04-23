//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->ops.hook(E1->ops.priv, skb, state)
+ nf_hook_entry_hookfn(E0, skb, state)
