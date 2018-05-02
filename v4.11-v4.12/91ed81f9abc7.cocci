//# pattern-2, witnesses: 2
@@
identifier fn;
identifier gtp;
identifier skb;
@@
 int fn(struct gtp_dev * gtp, struct sk_buff * skb)
 {
     <...
- gtp_rx(pctx, skb, hdrlen)
+ gtp_rx(pctx, skb, hdrlen, gtp->role)
     ...>
 }
