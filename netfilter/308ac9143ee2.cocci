//# pattern-6, witnesses: 4
@@
@@
- NF_CT_DEFAULT_ZONE
+ &nf_ct_zone_dflt
//# pattern-2, witnesses: 3
@@
identifier s;
@@
- u16 s = {
+ const struct nf_conntrack_zone * s = {
 };
//# pattern-45, witnesses: 3
@@
@@
- nf_conntrack_find_get(net, zone, &tuple)
+ nf_conntrack_find_get(net, &zone, &tuple)
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier hooknum;
identifier skb;
@@
 enum ip_defrag_users fn(unsigned int hooknum, struct sk_buff * skb)
 {
     <...
- u16 zone = NF_CT_DEFAULT_ZONE;
- if (skb->nfct) {
- zone = nf_ct_zone(skb->nfct);
- }
- if (hooknum == NF_INET_PRE_ROUTING) {
- }
+ u16 zone_id = NF_CT_DEFAULT_ZONE_ID;
+ if (skb->nfct) {
+ zone_id = nf_ct_zone(skb->nfct)->id;
+ }
+ if (hooknum == NF_INET_PRE_ROUTING) {
+ }
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression EC0;
identifier fn;
identifier hooknum;
identifier skb;
@@
 enum ip_defrag_users fn(unsigned int hooknum, struct sk_buff * skb)
 {
     <...
- u16 zone = NF_CT_DEFAULT_ZONE;
- if (skb->nfct) {
- zone = nf_ct_zone(skb->nfct);
- }
- if (hooknum == NF_INET_PRE_ROUTING) {
- return EC0 + zone;
- }
+ u16 zone_id = NF_CT_DEFAULT_ZONE_ID;
+ if (skb->nfct) {
+ zone_id = nf_ct_zone(skb->nfct)->id;
+ }
+ if (hooknum == NF_INET_PRE_ROUTING) {
+ return EC0 + zone_id;
+ }
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression EC0;
identifier fn;
identifier hooknum;
identifier skb;
@@
 enum ip_defrag_users fn(unsigned int hooknum, struct sk_buff * skb)
 {
     <...
- u16 zone = NF_CT_DEFAULT_ZONE;
- if (skb->nfct) {
- zone = nf_ct_zone(skb->nfct);
- }
- if (nf_bridge_in_prerouting(skb)) {
- return EC0 + zone;
- }
+ u16 zone_id = NF_CT_DEFAULT_ZONE_ID;
+ if (skb->nfct) {
+ zone_id = nf_ct_zone(skb->nfct)->id;
+ }
+ if (nf_bridge_in_prerouting(skb)) {
+ return EC0 + zone_id;
+ }
     ...>
 }
//# pattern-22, witnesses: 2
@@
expression E0;
identifier a;
identifier b;
identifier fn;
@@
 int fn(const struct nf_conntrack_expect * a, const struct nf_conntrack_expect * b)
 {
     <...
- E0 && nf_ct_zone(a->master) == nf_ct_zone(b->master)
+ E0 && nf_ct_zone_equal(a->master, nf_ct_zone(b->master))
     ...>
 }
//# pattern-23, witnesses: 2
@@
@@
- nf_ct_expect_find_get(net, zone, &tuple)
+ nf_ct_expect_find_get(net, &zone, &tuple)
//# pattern-33, witnesses: 2
@@
expression V0;
@@
- nf_conntrack_find_get(net, zone, &V0)
+ nf_conntrack_find_get(net, &zone, &V0)
//# pattern-35, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier net;
identifier r0.fn;
identifier tuple;
typedef u16;
identifier zone;
@@
- struct nf_conntrack_tuple_hash * fn(struct net * net, u16 zone, const struct nf_conntrack_tuple * tuple)
+ struct nf_conntrack_tuple_hash * fn(struct net * net, const struct nf_conntrack_zone * zone, const struct nf_conntrack_tuple * tuple)
 { ... }
