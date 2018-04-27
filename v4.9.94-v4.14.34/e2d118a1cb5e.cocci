//# pattern-9, witnesses: 7
@@
expression E0;
expression E3;
expression E4;
expression E5;
expression E6;
expression E7;
expression E8;
expression E9;
expression ME1;
expression ME2;
@@
- flowi4_init_output(E0, ME1, ME2, E3, RT_SCOPE_UNIVERSE, E4, E5, E6, E7, E8, E9)
+ flowi4_init_output(E0, ME1, ME2, E3, RT_SCOPE_UNIVERSE, E4, E5, E6, E7, E8, E9, sk->sk_uid)
//# pattern-2, witnesses: 3
@@
typedef __be32;
identifier code;
identifier fn;
identifier info;
identifier offset;
identifier opt;
identifier skb;
identifier type;
typedef u8;
@@
 void fn(struct sk_buff * skb, struct inet6_skb_parm * opt, u8 type, u8 code, int offset, __be32 info)
 {
     <...
- ip6_redirect(skb, net, skb->dev->ifindex, 0)
+ ip6_redirect(skb, net, skb->dev->ifindex, 0, sock_net_uid(net, NULL))
     ...>
 }
//# pattern-3, witnesses: 3
@@
typedef __be32;
identifier code;
identifier fn;
identifier info;
identifier offset;
identifier opt;
identifier skb;
identifier type;
typedef u8;
@@
 void fn(struct sk_buff * skb, struct inet6_skb_parm * opt, u8 type, u8 code, int offset, __be32 info)
 {
     <...
- ip6_update_pmtu(skb, net, info, 0, 0)
+ ip6_update_pmtu(skb, net, info, 0, 0, sock_net_uid(net, NULL))
     ...>
 }
//# pattern-7, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- __build_flow_key(E0, sk, iph, E1, E2, E3, E4, 0)
+ __build_flow_key(sock_net(sk), E0, sk, iph, E1, E2, E3, E4, 0)
//# pattern-1, witnesses: 2
@@
@@
- sock_net(sk)
+ sk
//# pattern-14, witnesses: 2
@@
@@
- __build_flow_key(&fl4, NULL, iph, oif, RT_TOS(iph->tos), protocol, mark, flow_flags)
+ __build_flow_key(net, &fl4, NULL, iph, oif, RT_TOS(iph->tos), protocol, mark, flow_flags)
