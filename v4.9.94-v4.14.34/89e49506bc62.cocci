//# pattern-2, witnesses: 8
@@
identifier dev;
identifier fn;
identifier orig_dev;
identifier pt;
identifier skb;
@@
- struct sk_buff * fn(struct sk_buff * skb, struct net_device * dev, struct packet_type * pt, struct net_device * orig_dev)
+ struct sk_buff * fn(struct sk_buff * skb, struct net_device * dev, struct packet_type * pt)
 { ... }
