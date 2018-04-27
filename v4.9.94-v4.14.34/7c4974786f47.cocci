//# pattern-2, witnesses: 2
@@
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     <...
- do_xdp_generic(skb)
+ do_xdp_generic(rcu_dereference(skb->dev->xdp_prog), skb)
     ...>
 }
