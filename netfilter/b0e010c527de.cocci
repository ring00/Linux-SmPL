//# pattern-5, witnesses: 3
@@
identifier cp;
identifier ipvsh;
identifier pp;
identifier skb;
@@
 int ip_vs_nat_xmit_v6(struct sk_buff * skb, struct ip_vs_conn * cp, struct ip_vs_protocol * pp, struct ip_vs_iphdr * ipvsh)
 { ... }
//# pattern-8, witnesses: 3
@@
expression IL0;
expression S1;
identifier af;
identifier fn;
identifier hooknum;
identifier skb;
@@
 unsigned int fn(unsigned int hooknum, struct sk_buff * skb, int af)
 {
     <...
- IP_VS_DBG_PKT(IL0, af, pp, skb, 0, S1)
+ IP_VS_DBG_PKT(IL0, af, pp, skb, iph.off, S1)
     ...>
 }
//# pattern-11, witnesses: 3
@@
identifier cp;
identifier ipvsh;
identifier pp;
identifier skb;
@@
 int ip_vs_nat_xmit(struct sk_buff * skb, struct ip_vs_conn * cp, struct ip_vs_protocol * pp, struct ip_vs_iphdr * ipvsh)
 { ... }
//# pattern-3, witnesses: 2
@@
@@
- ciph.len += offset;
//# pattern-7, witnesses: 2
@@
identifier fn;
identifier hooknum;
identifier related;
identifier skb;
@@
 int fn(struct sk_buff * skb, int * related, unsigned int hooknum)
 {
     <...
- ip_vs_fill_ip4hdr(cih, &ciph)
+ ip_vs_fill_iph_skb_off(AF_INET, skb, offset, &ciph)
     ...>
 }
//# pattern-10, witnesses: 2
@@
expression S0;
identifier ignored;
identifier iph;
identifier pd;
identifier skb;
identifier svc;
@@
 struct ip_vs_conn * ip_vs_schedule(struct ip_vs_service * svc, struct sk_buff * skb, struct ip_vs_proto_data * pd, int * ignored, struct ip_vs_iphdr * iph)
 {
     <...
- IP_VS_DBG_PKT(12, svc->af, pp, skb, 0, S0)
+ IP_VS_DBG_PKT(12, svc->af, pp, skb, iph->off, S0)
     ...>
 }
