//# pattern-3, witnesses: 2
@@
identifier PV0;
@@
- udp_tunnel_xmit_skb(PV0->sock, rt, skb, src, dst, tos, ttl, df, src_port, dst_port, xnet)
+ udp_tunnel_xmit_skb(rt, skb, src, dst, tos, ttl, df, src_port, dst_port, xnet, PV0->sock->sk->sk_no_check_tx)
