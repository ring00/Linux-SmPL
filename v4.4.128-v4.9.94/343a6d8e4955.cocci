//# pattern-1, witnesses: 6
@@
expression EC0;
expression ME1;
identifier dev;
identifier skb;
identifier vfinfo;
identifier vfs_num;
@@
 int rtnl_fill_vfinfo(struct sk_buff * skb, struct net_device * dev, int vfs_num, struct nlattr * vfinfo)
 {
     <...
- nla_put_u64(skb, EC0, ME1)
+ nla_put_u64_64bit(skb, EC0, ME1, IFLA_VF_STATS_PAD)
     ...>
 }
//# pattern-2, witnesses: 6
@@
expression list listE0;
@@
- nla_total_size(listE0)
+ nla_total_size_64bit(listE0)
