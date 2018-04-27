//# pattern-1, witnesses: 3
@r0@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
expression F0;
identifier net;
identifier r0.fn;
identifier sk;
identifier skb;
@@
 int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- NF_HOOK_THRESH(NFPROTO_BRIDGE, NF_BR_PRE_ROUTING, net, sk, skb, skb->dev, NULL, F0, 1)
+ br_nf_hook_thresh(NF_BR_PRE_ROUTING, net, sk, skb, skb->dev, NULL, F0)
     ...>
 }
