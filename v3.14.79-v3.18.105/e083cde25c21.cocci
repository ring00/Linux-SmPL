//# pattern-1, witnesses: 2
@@
identifier dev;
identifier flags;
identifier fn;
typedef gfp_t;
identifier skb;
@@
 struct sk_buff * fn(struct usbnet * dev, struct sk_buff * skb, gfp_t flags)
 {
     <...
- usbnet_set_skb_tx_stats(skb, 1)
+ usbnet_set_skb_tx_stats(skb, 1, 0)
     ...>
 }
