//# pattern-3, witnesses: 8
@@
expression E1;
expression EC0;
identifier parms;
identifier skb;
@@
 int neightbl_fill_parms(struct sk_buff * skb, struct neigh_parms * parms)
 {
     <...
- nla_put_msecs(skb, EC0, E1)
+ nla_put_msecs(skb, EC0, E1, NDTPA_PAD)
     ...>
 }
//# pattern-1, witnesses: 2
@@
expression EC0;
expression ME1;
identifier msg;
identifier tm;
@@
 int tcp_metrics_fill_info(struct sk_buff * msg, struct tcp_metrics_block * tm)
 {
     <...
- nla_put_msecs(msg, EC0, jiffies - ME1)
+ nla_put_msecs(msg, EC0, jiffies - ME1, TCP_METRICS_ATTR_PAD)
     ...>
 }
