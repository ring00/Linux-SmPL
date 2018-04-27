//# pattern-3, witnesses: 24
@@
expression E0;
expression E1;
identifier PV2;
@@
- FWINV(E0, E1)
+ NF_INVF(PV2, E1, E0)
//# pattern-1, witnesses: 10
@@
expression E0;
expression E1;
@@
- FWINV(E0, E1)
+ NF_INVF(info, E1, E0)
//# pattern-6, witnesses: 10
@@
expression E1;
expression E3;
expression IL0;
expression IL2;
@@
- info->bitmask & IL0 && FWINV(E1, IL2)
+ E3 && NF_INVF(info, IL2, E1)
//# pattern-7, witnesses: 8
@@
expression E0;
expression E1;
identifier e;
identifier in;
identifier out;
identifier skb;
@@
 int ebt_basic_match(const struct ebt_entry * e, const struct sk_buff * skb, const struct net_device * in, const struct net_device * out)
 {
     <...
- FWINV2(E0, E1)
+ NF_INVF(e, E1, E0)
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression IL3;
expression ME0;
expression ME1;
expression ME2;
typedef bool;
identifier fragoff;
identifier hotdrop;
identifier indev;
identifier ip6info;
identifier outdev;
identifier protoff;
identifier skb;
@@
 bool ip6_packet_match(const struct sk_buff * skb, const char * indev, const char * outdev, const struct ip6t_ip6 * ip6info, unsigned int * protoff, int * fragoff, bool * hotdrop)
 {
     <...
- FWINV(ipv6_masked_addr_cmp(&ME0, &ME1, &ME2), IL3)
+ NF_INVF(ip6info, IL3, ipv6_masked_addr_cmp(&ME0, &ME1, &ME2))
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression IL2;
expression ME0;
expression V1;
identifier arphdr;
identifier arpinfo;
identifier dev;
identifier indev;
identifier outdev;
@@
 int arp_packet_match(const struct arphdr * arphdr, struct net_device * dev, const char * indev, const char * outdev, const struct arpt_arp * arpinfo)
 {
     <...
- FWINV(arp_devaddr_compare(&ME0, V1, dev->addr_len), IL2)
+ NF_INVF(arpinfo, IL2, arp_devaddr_compare(&ME0, V1, dev->addr_len))
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression IL3;
expression ME0;
expression ME1;
expression ME2;
typedef bool;
identifier indev;
identifier ip;
identifier ipinfo;
identifier isfrag;
identifier outdev;
@@
 bool ip_packet_match(const struct iphdr * ip, const char * indev, const char * outdev, const struct ipt_ip * ipinfo, int isfrag)
 {
     <...
- FWINV(ME0 & ME1.s_addr != ME2.s_addr, IL3)
+ NF_INVF(ipinfo, IL3, ME0 & ME1.s_addr != ME2.s_addr)
     ...>
 }
