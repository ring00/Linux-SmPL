//# pattern-5, witnesses: 2
@@
expression ME1;
expression ME2;
expression V0;
identifier fn;
identifier info;
identifier skb;
typedef u32;
@@
 void fn(struct sk_buff * skb, u32 info)
 {
     <...
- __inet_lookup_established(net, &V0, iph->daddr, ME1, iph->saddr, ntohs(ME2), inet_iif(skb))
+ __inet_lookup_established(net, &V0, iph->daddr, ME1, iph->saddr, ntohs(ME2), inet_iif(skb), 0)
     ...>
 }
