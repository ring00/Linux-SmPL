//# pattern-1, witnesses: 28
@@
expression list listE0;
@@
- nla_put_be32(listE0)
+ nla_put_in_addr(listE0)
//# pattern-2, witnesses: 13
@@
expression E0;
expression E1;
expression ME2;
@@
- nla_put(skb, E0, E1, &ME2)
+ nla_put_in6_addr(skb, E0, &ME2)
//# pattern-3, witnesses: 2
@@
expression EC0;
expression ME1;
identifier msg;
identifier tm;
@@
 int tcp_metrics_fill_info(struct sk_buff * msg, struct tcp_metrics_block * tm)
 {
     <...
- nla_put(msg, EC0, 16, ME1.addr.a6)
+ nla_put_in6_addr(msg, EC0, &ME1.addr.in6)
     ...>
 }
