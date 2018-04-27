//# pattern-2, witnesses: 2
@@
expression E0;
identifier tw;
@@
 struct tcp_metrics_block * __tcp_get_metrics_tw(struct inet_timewait_sock * tw)
 {
     <...
- E0 = daddr.addr.a4
+ E0 = ipv4_addr_hash(tw->__tw_common.skc_daddr)
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
typedef bool;
identifier create;
identifier dst;
identifier sk;
@@
 struct tcp_metrics_block * tcp_get_metrics(struct sock * sk, struct dst_entry * dst, bool create)
 {
     <...
- E0 = daddr.addr.a4
+ E0 = ipv4_addr_hash(inet_sk(sk)->sk.__sk_common.skc_daddr)
     ...>
 }
