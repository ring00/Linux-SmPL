//# pattern-4, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- saddr.family = AF_INET6;
- saddr.addr.in6 = ME0.skc_v6_rcv_saddr;
- daddr.family = AF_INET6;
- daddr.addr.in6 = ME1.skc_v6_daddr;
+ inetpeer_set_addr_v6(&saddr, &ME0.skc_v6_rcv_saddr);
+ inetpeer_set_addr_v6(&daddr, &ME1.skc_v6_daddr);
//# pattern-9, witnesses: 2
@@
identifier tw;
@@
 struct tcp_metrics_block * __tcp_get_metrics_tw(struct inet_timewait_sock * tw)
 {
     <...
- saddr.family = AF_INET;
- saddr.addr.a4 = tw->__tw_common.skc_rcv_saddr;
- daddr.family = AF_INET;
- daddr.addr.a4 = tw->__tw_common.skc_daddr;
+ inetpeer_set_addr_v4(&saddr, tw->__tw_common.skc_rcv_saddr);
+ inetpeer_set_addr_v4(&daddr, tw->__tw_common.skc_daddr);
     ...>
 }
