//# pattern-1, witnesses: 4
@@
expression list listE0;
@@
- vrf_master_ifindex_rcu(listE0)
+ l3mdev_master_ifindex_rcu(listE0)
//# pattern-2, witnesses: 4
@@
expression list listE0;
@@
- vrf_master_ifindex(listE0)
+ l3mdev_master_ifindex(listE0)
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct xfrm_policy_afinfo i = {
    .decode_session = fn,
};
@@
expression E0;
identifier fl;
identifier r0.fn;
identifier reverse;
identifier skb;
@@
 void fn(struct sk_buff * skb, struct flowi * fl, int reverse)
 {
     <...
- E0 = 
+ E0 = l3mdev_fib_oif(skb_dst(skb)->dev)
     ...>
 }
