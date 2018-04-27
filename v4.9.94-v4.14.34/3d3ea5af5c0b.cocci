//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- rtnl_fill_ifinfo(E0, dev, RTM_NEWLINK, NETLINK_CB(E1).portid, E2->nlmsg_seq, 0, E3, ext_filter_mask)
+ rtnl_fill_ifinfo(E0, dev, RTM_NEWLINK, NETLINK_CB(E1).portid, E2->nlmsg_seq, 0, E3, ext_filter_mask, 0)
