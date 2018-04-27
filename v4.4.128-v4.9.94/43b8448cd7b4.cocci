//# pattern-1, witnesses: 3
@@
identifier fn;
identifier nhoff;
identifier skb;
identifier uoff;
@@
 int fn(struct sk_buff * skb, int nhoff, struct udp_offload * uoff)
 {
     <...
- udp_tunnel_gro_complete(skb, nhoff);
     ...>
 }
