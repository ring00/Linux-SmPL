//# pattern-1, witnesses: 2
@@
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     <...
- skb->nf_bridge->data
+ nf_bridge->neigh_header
     ...>
 }
