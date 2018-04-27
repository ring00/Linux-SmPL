//# pattern-3, witnesses: 2
@@
@@
- ip_send_unicast_reply(net, skb, &TCP_SKB_CB(skb)->header.h4.opt, ip_hdr(skb)->saddr, ip_hdr(skb)->daddr, &arg, arg.iov[0].iov_len)
+ ip_send_unicast_reply(*this_cpu_ptr, skb, &TCP_SKB_CB(skb)->header.h4.opt, ip_hdr(skb)->saddr, ip_hdr(skb)->daddr, &arg, arg.iov[0].iov_len)
