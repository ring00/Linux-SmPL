//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
identifier daddr;
identifier dest;
identifier do_xfrm;
identifier ipvsh;
identifier ret_saddr;
identifier rt_mode;
identifier skb;
identifier skb_af;
@@
 int __ip_vs_get_out_rt_v6(int skb_af, struct sk_buff * skb, struct ip_vs_dest * dest, struct in6_addr * daddr, struct in6_addr * ret_saddr, struct ip_vs_iphdr * ipvsh, int do_xfrm, int rt_mode)
 {
     <...
- __ip_vs_route_output_v6(net, E0, E1, do_xfrm)
+ __ip_vs_route_output_v6(net, E0, E1, do_xfrm, rt_mode)
     ...>
 }
