//# pattern-1, witnesses: 6
@@
expression E0;
expression V1;
@@
- ip_vs_fill_iph_skb(E0, skb, &V1)
+ ip_vs_fill_iph_skb(E0, skb, false, &V1)
//# pattern-3, witnesses: 3
@@
expression E1;
expression IL0;
@@
- ip_vs_fill_iph_skb_off(IL0, skb, E1, &ciph)
+ ip_vs_fill_iph_skb_icmp(IL0, skb, E1, true, &ciph)
//# pattern-4, witnesses: 2
@@
identifier s;
@@
 struct ip_vs_iphdr s = {
 };
