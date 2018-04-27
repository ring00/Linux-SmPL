//# pattern-2, witnesses: 2
@@
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     <...
- __sk_receive_skb(sk, skb, 1, dh->dccph_doff * 4)
+ __sk_receive_skb(sk, skb, 1, dh->dccph_doff * 4, refcounted)
     ...>
 }
