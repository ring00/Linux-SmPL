//# pattern-1, witnesses: 3
@@
expression E0;
@@
- ip6_make_flowlabel(net, skb, fl6->flowlabel, E0)
+ ip6_make_flowlabel(net, skb, fl6->flowlabel, E0, fl6)
