//# pattern-5, witnesses: 19
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression F4;
@@
- NF_HOOK(E0, E1, skb, E2, E3, F4)
+ NF_HOOK(E0, E1, NULL, skb, E2, E3, F4)
//# pattern-8, witnesses: 11
@r0@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
identifier r0.fn;
identifier skb;
@@
- int fn(struct sk_buff * skb)
+ int fn(struct sock * sk, struct sk_buff * skb)
 { ... }
//# pattern-2, witnesses: 4
@r1@
identifier fn;
expression P0, P1, P2, P3;
@@
NF_HOOK33(P0, P1, P2, P3)
@@
expression E1;
expression E2;
expression F3;
expression IL0;
identifier r1.fn;
identifier sk;
identifier skb;
@@
 int fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- NF_HOOK_THRESH(NFPROTO_BRIDGE, IL0, skb, E1, E2, F3, 1)
+ NF_HOOK_THRESH(NFPROTO_BRIDGE, IL0, sk, skb, E1, E2, F3, 1)
     ...>
 }
//# pattern-4, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression F4;
identifier fn;
identifier ops;
identifier skb;
identifier state;
@@
 unsigned int fn(const struct nf_hook_ops * ops, struct sk_buff * skb, const struct nf_hook_state * state)
 {
     <...
- NF_HOOK(E0, E1, skb, E2, E3, F4)
+ NF_HOOK(E0, E1, state->sk, skb, E2, E3, F4)
     ...>
 }
//# pattern-10, witnesses: 3
@r2@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
identifier r2.fn;
identifier sk;
identifier skb;
@@
 int fn(struct sock * sk, struct sk_buff * skb)
 { ... }
//# pattern-6, witnesses: 2
@r3@
identifier fn;
expression P0, P1, P2, P3;
@@
(varies)(P0, P1, P2, P3)
@@
identifier r3.fn;
identifier sk;
identifier skb;
@@
 int fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- dst_output(skb)
+ dst_output_sk(sk, skb)
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
expression EC0;
expression F4;
identifier fn;
identifier sk;
identifier skb;
@@
 int fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- NF_HOOK(EC0, E1, E2, NULL, E3, F4)
+ NF_HOOK(EC0, E1, sk, E2, NULL, E3, F4)
     ...>
 }
//# pattern-15, witnesses: 2
@@
expression EC0;
expression IL1;
@@
- NF_HOOK(EC0, IL1, skb, NULL, skb->dev, dev_queue_xmit)
+ NF_HOOK(EC0, IL1, NULL, skb, NULL, skb->dev, dev_queue_xmit_sk)
//# pattern-20, witnesses: 2
@r4@
identifier fn;
expression P0, P1, P2, P3;
@@
NF_HOOK33(P0, P1, P2, P3)
@@
identifier sk;
identifier skb;
@@
 int br_nf_dev_queue_xmit(struct sock * sk, struct sk_buff * skb)
 {
     <...
- br_dev_queue_push_xmit(skb)
+ br_dev_queue_push_xmit(sk, skb)
     ...>
 }
//# pattern-22, witnesses: 2
@r5@
identifier i, fn;
@@
struct dst_ops i = {
    .local_out = fn,
};
@@
expression E0;
identifier skb;
@@
- int __ip_local_out(struct sk_buff * skb)
+ int __ip_local_out(struct sk_buff * skb)
 {
     <...
- struct iphdr * iph = ip_hdr(skb);
- E0;
     ...>
 }
