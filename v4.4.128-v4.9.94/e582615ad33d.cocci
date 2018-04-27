//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_protocol i = {
    .handler = fn,
};
@@
expression IL0;
identifier skb;
@@
 int gre_rcv(struct sk_buff * skb)
 {
     <...
- gre_parse_header(skb, &tpi, &csum_err, htons(IL0))
+ gre_parse_header(skb, &tpi, &csum_err, htons(IL0), 0)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef __be16;
identifier csum_err;
identifier proto;
identifier skb;
identifier tpi;
@@
- int gre_parse_header(struct sk_buff * skb, struct tnl_ptk_info * tpi, bool * csum_err, __be16 proto)
+ int gre_parse_header(struct sk_buff * skb, struct tnl_ptk_info * tpi, bool * csum_err, __be16 proto, int nhs)
 {
     <...
- E0 = skb_transport_header(skb)
+ E0 = skb->data + nhs
     ...>
 }
//# pattern-4, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
typedef __be16;
identifier csum_err;
identifier nhs;
identifier proto;
identifier skb;
identifier tpi;
@@
 int gre_parse_header(struct sk_buff * skb, struct tnl_ptk_info * tpi, bool * csum_err, __be16 proto, int nhs)
 {
     <...
- pskb_may_pull(skb, E0)
+ pskb_may_pull(skb, nhs + E0)
     ...>
 }
