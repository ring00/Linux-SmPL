//# pattern-7, witnesses: 7
@@
@@
- rt->rt6i_lwtstate
+ rt->dst.lwtstate
//# pattern-3, witnesses: 5
@@
@@
- skb_tunnel_info(skb, AF_INET)
+ skb_tunnel_info(skb)
//# pattern-8, witnesses: 5
@@
expression V0;
@@
- V0->rt_lwtstate = NULL;
//# pattern-1, witnesses: 4
@@
@@
- rth->rt_lwtstate
+ rth->dst.lwtstate
//# pattern-5, witnesses: 2
@@
@@
- struct rt6_info * rt6 = NULL;
- rt6 = dst;
- update_ipv6_locator(skb, ila_params_lwtunnel(rt6->rt6i_lwtstate));
+ update_ipv6_locator(skb, ila_params_lwtunnel(dst->lwtstate));
//# pattern-10, witnesses: 2
@@
expression ME0;
@@
- lwtstate_put(ME0);
//# pattern-15, witnesses: 2
@@
expression E0;
@@
- E0->rt_lwtstate
+ E0->dst.lwtstate
