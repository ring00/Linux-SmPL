//# pattern-1, witnesses: 2
@@
statement S0;
identifier dev;
identifier fn;
identifier info;
typedef netdev_tx_t;
identifier skb;
@@
 netdev_tx_t fn(struct sk_buff * skb, struct net_device * dev, struct ip_tunnel_info * info)
 {
     <...
- if (key->tun_flags & TUNNEL_GENEVE_OPT) { S0 }
+ if (info->options_len) { S0 }
     ...>
 }
