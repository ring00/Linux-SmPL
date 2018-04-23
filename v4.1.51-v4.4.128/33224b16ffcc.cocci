//# pattern-1, witnesses: 8
@@
expression E0;
expression E1;
@@
- ip_local_out(E0, E1)
+ ip_local_out(net, E0, E1)
//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
@@
- ip_local_out(E0, E1)
+ ip_local_out(net, E0, E1)
//# pattern-2, witnesses: 3
@@
identifier PV0;
identifier PV1;
@@
- ip6_local_out(PV0->sk, PV1)
+ ip6_local_out(net, PV0->sk, PV1)
//# pattern-5, witnesses: 2
@@
@@
- ip_local_out(skb->sk, skb)
+ ip_local_out(dev_net(skb_dst(skb)->dev), skb->sk, skb)
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier sk;
identifier skb;
@@
- int fn(struct sock * sk, struct sk_buff * skb)
+ int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- struct net * net = dev_net(skb_dst(skb)->dev);
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression E0;
expression E1;
@@
- ip6_local_out(E0->sk, E1)
+ ip6_local_out(net, E0->sk, E1)
