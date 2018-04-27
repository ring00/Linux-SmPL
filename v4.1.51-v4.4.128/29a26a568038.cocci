//# pattern-3, witnesses: 12
@@
expression E1;
expression E2;
expression E3;
expression F4;
expression IL0;
@@
- NF_HOOK(NFPROTO_DECNET, IL0, E1, skb, E2, E3, F4)
+ NF_HOOK(NFPROTO_DECNET, IL0, &init_net, E1, skb, E2, E3, F4)
//# pattern-2, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression F5;
identifier fn;
identifier ops;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- NF_HOOK(E0, E1, E2, skb, E3, E4, F5)
+ NF_HOOK(E0, E1, state->net, E2, skb, E3, E4, F5)
     ...>
 }
//# pattern-1, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression EC0;
expression F5;
@@
- NF_HOOK(NFPROTO_IPV4, EC0, E1, E2, E3, E4, F5)
+ NF_HOOK(NFPROTO_IPV4, EC0, net, E1, E2, E3, E4, F5)
//# pattern-7, witnesses: 3
@@
expression E1;
expression E2;
expression E3;
expression EC0;
expression F4;
@@
- NF_HOOK(EC0, E1, NULL, skb, E2, E3, F4)
+ NF_HOOK(EC0, E1, dev_net(skb->dev), NULL, skb, E2, E3, F4)
//# pattern-8, witnesses: 2
@r0@
identifier fn;
expression P0, P1, P2, P3;
@@
NF_HOOK160(P0, P1, P2, P3)
@@
expression F0;
identifier sk;
identifier skb;
@@
 int br_nf_pre_routing_finish(struct sock * sk, struct sk_buff * skb)
 {
     <...
- NF_HOOK_THRESH(NFPROTO_BRIDGE, NF_BR_PRE_ROUTING, sk, skb, skb->dev, NULL, F0, 1)
+ NF_HOOK_THRESH(NFPROTO_BRIDGE, NF_BR_PRE_ROUTING, net, sk, skb, skb->dev, NULL, F0, 1)
     ...>
 }
//# pattern-15, witnesses: 2
@@
expression E1;
expression F2;
expression IL0;
@@
- NF_HOOK(NFPROTO_BRIDGE, IL0, NULL, skb, indev, E1, F2)
+ NF_HOOK(NFPROTO_BRIDGE, IL0, dev_net(indev), NULL, skb, indev, E1, F2)
//# pattern-16, witnesses: 2
@@
expression F1;
expression IL0;
@@
- NF_HOOK(NFPROTO_BRIDGE, IL0, NULL, skb, skb->dev, NULL, F1)
+ NF_HOOK(NFPROTO_BRIDGE, IL0, dev_net(skb->dev), NULL, skb, skb->dev, NULL, F1)
