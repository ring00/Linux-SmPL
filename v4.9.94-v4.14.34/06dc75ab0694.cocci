//# pattern-1, witnesses: 2
@@
identifier fn;
identifier skb;
@@
 void fn(struct sk_buff * skb)
 {
     <...
- if (likely(skb->head)) {
- }
     ...>
 }
