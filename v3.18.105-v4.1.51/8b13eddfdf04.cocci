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
 unsigned int redirect_tg4(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- struct nf_conn * ct = ct;
- const struct nf_nat_ipv4_multi_range_compat * mr = par->targinfo;
- struct nf_nat_range newrange = newrange;
- NF_CT_ASSERT(par->hooknum == NF_INET_PRE_ROUTING || par->hooknum == NF_INET_LOCAL_OUT);
- ct = nf_ct_get(skb, &ctinfo);
- ME0 = E1;
- return nf_nat_setup_info(ct, &newrange, NF_NAT_MANIP_DST);
+ return nf_nat_redirect_ipv4(skb, par->targinfo, par->hooknum);
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
 unsigned int redirect_tg4(struct sk_buff * skb, const struct xt_action_param * par)
 {
     <...
- __be32 newdst = newdst;
- struct nf_nat_range newrange = newrange;
- if (par->hooknum == NF_INET_LOCAL_OUT) {
- newdst = htonl(2130706433);
- }
- ME0.ip = newdst;
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression ME0;
@@
- struct nf_nat_range newrange = newrange;
- memset(&ME0, 0, sizeof(unsigned long));
