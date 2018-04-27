//# pattern-9, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier net;
identifier skb;
typedef u32;
identifier user;
@@
- struct sk_buff * nf_ct_frag6_gather(struct net * net, struct sk_buff * skb, u32 user)
+ int nf_ct_frag6_gather(struct net * net, struct sk_buff * skb, u32 user)
 {
     <...
- return skb;
+ return -ENOMEM;
     ...>
 }
//# pattern-10, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier net;
identifier skb;
typedef u32;
identifier user;
@@
 int nf_ct_frag6_gather(struct net * net, struct sk_buff * skb, u32 user)
 {
     <...
- return skb;
+ return -EINVAL;
     ...>
 }
