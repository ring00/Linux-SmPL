//# pattern-9, witnesses: 4
@@
identifier dev;
identifier orig_dev;
identifier pt;
identifier skb;
@@
- int lowpan_rcv(struct sk_buff * skb, struct net_device * dev, struct packet_type * pt, struct net_device * orig_dev)
+ int lowpan_rcv(struct sk_buff * skb, struct net_device * dev, struct packet_type * pt, struct net_device * orig_dev)
 {
     <...
- lowpan_give_skb_to_devices(skb, NULL)
+ lowpan_give_skb_to_device(skb, dev)
     ...>
 }
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- struct lowpan_dev_record * entry = entry;
- entry = kzalloc(sizeof(unsigned long), GFP_KERNEL);
- E0;
