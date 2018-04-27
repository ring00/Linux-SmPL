//# pattern-4, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
identifier net;
identifier r0.fn;
identifier sk;
identifier skb;
@@
 int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- sysctl_ip_early_demux && !skb_dst(skb)
+ net->ipv4.sysctl_ip_early_demux && !skb_dst(skb)
     ...>
 }
