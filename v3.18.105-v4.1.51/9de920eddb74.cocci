//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
expression E1;
expression ME0;
identifier par;
identifier skb;
@@
 unsigned int redirect_tg6(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- const struct nf_nat_range * range = par->targinfo;
- struct nf_nat_range newrange = newrange;
- struct nf_conn * ct = ct;
- ct = nf_ct_get(skb, &ctinfo);
- if (par->hooknum == NF_INET_LOCAL_OUT) {
- newdst = loopback_addr;
- }
- ME0 = E1;
- return nf_nat_setup_info(ct, &newrange, NF_NAT_MANIP_DST);
+ return nf_nat_redirect_ipv6(skb, par->targinfo, par->hooknum);
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct xt_target i = {
    .target = fn,
};
@@
expression ME0;
identifier par;
identifier skb;
@@
 unsigned int redirect_tg6(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- const struct nf_nat_range * range = par->targinfo;
- struct nf_nat_range newrange = newrange;
- struct in6_addr newdst = newdst;
- struct nf_conn * ct = ct;
- ct = nf_ct_get(skb, &ctinfo);
- if (par->hooknum == NF_INET_LOCAL_OUT) {
- newdst = loopback_addr;
- }
- ME0.in6 = newdst;
- return nf_nat_setup_info(ct, &newrange, NF_NAT_MANIP_DST);
+ return nf_nat_redirect_ipv6(skb, par->targinfo, par->hooknum);
     ...>
 }
