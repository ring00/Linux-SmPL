//# pattern-1, witnesses: 10
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
//# pattern-5, witnesses: 4
@@
expression E0;
@@
- dst_output(E0, skb)
+ dst_output(net, E0, skb)
//# pattern-2, witnesses: 2
@@
@@
- dst_output(skb->sk, skb)
+ dst_output(&init_net, skb->sk, skb)
