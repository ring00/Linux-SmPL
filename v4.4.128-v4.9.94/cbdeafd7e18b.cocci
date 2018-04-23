//# pattern-1, witnesses: 12
@@
expression EC0;
expression ME1;
identifier container_type;
identifier fn;
identifier kstats;
identifier skb;
@@
 int fn(struct sk_buff * skb, int container_type, struct ip_vs_kstats * kstats)
 {
     <...
- nla_put_u64(skb, EC0, ME1)
+ nla_put_u64_64bit(skb, EC0, ME1, IPVS_STATS_ATTR_PAD)
     ...>
 }
