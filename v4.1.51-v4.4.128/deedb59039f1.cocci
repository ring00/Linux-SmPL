//# pattern-2, witnesses: 6
@@
expression E0;
@@
- hash_conntrack(net, zone, E0)
+ hash_conntrack(net, E0)
//# pattern-6, witnesses: 5
@@
expression E0;
expression EC2;
expression V1;
@@
- ctnetlink_parse_tuple(E0, &V1, EC2, u3)
+ ctnetlink_parse_tuple(E0, &V1, EC2, u3, NULL)
//# pattern-1, witnesses: 4
@@
expression list listE0;
@@
- nf_ct_zone_equal(listE0)
+ nf_ct_zone_equal_any(listE0)
//# pattern-35, witnesses: 3
@@
expression E0;
@@
- nf_ct_zone_equal(E0, zone)
+ nf_ct_zone_equal(E0, zone, NF_CT_DIRECTION(h))
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call = fn,
};
@@
expression EC1;
expression V0;
identifier cda;
identifier ctnl;
identifier nlh;
identifier skb;
@@
 int ctnetlink_new_conntrack(struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * cda)
 {
     <...
- ctnetlink_parse_tuple(cda, &V0, EC1, u3)
+ ctnetlink_parse_tuple(cda, &V0, EC1, u3, &zone)
     ...>
 }
//# pattern-9, witnesses: 2
@@
@@
- if (zone->id != NF_CT_DEFAULT_ZONE_ID && nla_put_be16(skb, CTA_ZONE, htons(zone->id))) {
- }
+ if (ctnetlink_dump_zone_id(skb, CTA_TUPLE_ZONE, zone, NF_CT_ZONE_DIR_ORIG) < 0) {
+ }
+ if (ctnetlink_dump_zone_id(skb, CTA_TUPLE_ZONE, zone, NF_CT_ZONE_DIR_REPL) < 0) {
+ }
+ if (ctnetlink_dump_zone_id(skb, CTA_ZONE, zone, NF_CT_DEFAULT_ZONE_DIR) < 0) {
+ }
//# pattern-11, witnesses: 2
@@
expression E0;
expression E1;
@@
- hash_by_src(net, E0, E1)
+ hash_by_src(net, E1)
//# pattern-12, witnesses: 2
@@
expression E0;
@@
- hash_conntrack_raw(E0, zone)
+ hash_conntrack_raw(E0)
//# pattern-14, witnesses: 2
@r1@
identifier i, fn;
@@
struct nfnl_callback i = {
    .call = fn,
};
@@
identifier cda;
identifier ctnl;
identifier nlh;
identifier r1.fn;
identifier skb;
@@
 int fn(struct sock * ctnl, struct sk_buff * skb, const struct nlmsghdr * nlh, const struct nlattr *const * cda)
 {
     <...
- if (cda[CTA_TUPLE_ORIG]) {
- err = ctnetlink_parse_tuple(cda, &tuple, CTA_TUPLE_ORIG, u3);
- }
+ if (cda[CTA_TUPLE_ORIG]) {
+ err = ctnetlink_parse_tuple(cda, &tuple, CTA_TUPLE_ORIG, u3, &zone);
+ }
     ...>
 }
