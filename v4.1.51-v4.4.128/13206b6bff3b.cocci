//# pattern-1, witnesses: 8
@@
@@
- dst_output_okfn
+ dst_output
//# pattern-3, witnesses: 7
@@
identifier fn;
identifier net;
identifier sk;
identifier skb;
@@
 int fn(struct net * net, struct sock * sk, struct sk_buff * skb)
 {
     <...
- dst_output(sk, skb)
+ dst_output(net, sk, skb)
     ...>
 }
//# pattern-2, witnesses: 2
@@
@@
- dst_output(skb->sk, skb)
+ dst_output(&init_net, skb->sk, skb)
//# pattern-5, witnesses: 2
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
 int fn(struct sock * sk, struct sk_buff * skb)
 {
     <...
- dst_output(sk, skb)
+ dst_output(net, sk, skb)
     ...>
 }
