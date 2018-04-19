//# pattern-2, witnesses: 19
@@
@@
- dst_output_sk
+ dst_output
//# pattern-1, witnesses: 4
@@
@@
- dst_output(skb)
+ dst_output(skb->sk, skb)
//# pattern-3, witnesses: 2
@@
@@
- dst_output(skb)
+ dst_output(skb->sk, skb)
