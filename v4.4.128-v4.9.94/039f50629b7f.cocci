//# pattern-1, witnesses: 2
@@
@@
- int err = err;
- err = iptunnel_xmit(NULL, rt, skb, fl4.saddr, fl4.daddr, protocol, tos, ttl, df, !net_eq(tunnel->net, dev_net(dev)));
- iptunnel_xmit_stats(err, &dev->stats, dev->tstats);
+ iptunnel_xmit(NULL, rt, skb, fl4.saddr, fl4.daddr, protocol, tos, ttl, df, !net_eq(tunnel->net, dev_net(dev)));
//# pattern-7, witnesses: 2
@@
expression E3;
expression E4;
expression E5;
expression E7;
expression E8;
expression E9;
expression ME0;
expression ME1;
expression ME2;
expression ME6;
@@
- err = udp_tunnel_xmit_skb(rt, ME0->sk, skb, ME1, ME2, E3, ttl, E4, E5, ME6, E7, E8);
- E9;
+ udp_tunnel_xmit_skb(rt, ME0->sk, skb, ME1, ME2, E3, ttl, E4, E5, ME6, E7, E8);
