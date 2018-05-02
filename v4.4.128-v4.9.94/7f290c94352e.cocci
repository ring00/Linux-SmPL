//# pattern-3, witnesses: 3
@@
expression E0;
@@
- iptunnel_pull_header(skb, E0, tpi->proto)
+ iptunnel_pull_header(skb, E0, tpi->proto, false)
//# pattern-1, witnesses: 2
@@
identifier PV0;
identifier PV1;
@@
- skb_scrub_packet(skb, !net_eq(PV0->net, dev_net(PV1->dev)));
