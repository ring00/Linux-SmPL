//# pattern-1, witnesses: 16
@@
expression EC0;
expression ME1;
@@
- nla_put_u64(skb, EC0, atomic_long_read(&ME1))
+ nla_put_u64_64bit(skb, EC0, atomic_long_read(&ME1), L2TP_ATTR_STATS_PAD)
