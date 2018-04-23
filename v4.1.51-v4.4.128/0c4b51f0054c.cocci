//# pattern-1, witnesses: 15
@r0@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
identifier r0.fn;
identifier sk;
identifier skb;
@@
- int fn(struct sock * sk, struct sk_buff * skb)
+ int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 { ... }
//# pattern-2, witnesses: 10
@r1@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
expression E0;
identifier net;
identifier r1.fn;
identifier sk;
identifier skb;
@@
 int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- struct net * net = dev_net(E0);
     ...>
 }
//# pattern-5, witnesses: 2
@r2@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
identifier net;
identifier r2.fn;
identifier sk;
identifier skb;
@@
 int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 { ... }
//# pattern-7, witnesses: 2
@r3@
identifier fn;
expression P0, P1, P2, P3;
@@
NF_HOOK184(P0, P1, P2, P3)
@@
identifier net;
identifier sk;
identifier skb;
@@
 int br_nf_dev_queue_xmit(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- br_dev_queue_push_xmit(sk, skb)
+ br_dev_queue_push_xmit(net, sk, skb)
     ...>
 }
