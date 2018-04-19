//# pattern-4, witnesses: 3
@@
@@
- ip_route_me_harder(skb, RTN_UNSPEC)
+ ip_route_me_harder(state->net, skb, RTN_UNSPEC)
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- ip_route_me_harder(E0, RTN_UNSPEC)
+ ip_route_me_harder(net, E0, RTN_UNSPEC)
