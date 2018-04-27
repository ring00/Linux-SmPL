//# pattern-2, witnesses: 2
@@
@@
- ip_send_unicast_reply(net, skb, ip_hdr(skb)->saddr, ip_hdr(skb)->daddr, &arg, arg.iov[0].iov_len)
+ ip_send_unicast_reply(*this_cpu_ptr, skb, ip_hdr(skb)->saddr, ip_hdr(skb)->daddr, &arg, arg.iov[0].iov_len)
