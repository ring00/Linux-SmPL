//# pattern-4, witnesses: 4
@@
@@
- if (unlikely(skb->len < 60)) {
- int pad_len = 60 - skb->len;
- if (skb_pad(skb, pad_len)) {
- }
- __skb_put(skb, pad_len);
- }
+ if (eth_skb_pad(skb)) {
+ }
//# pattern-1, witnesses: 3
@@
@@
- if (unlikely(skb->len < 17)) {
- if (skb_pad(skb, 17 - skb->len)) {
- }
- skb->len = 17;
- skb_set_tail_pointer(skb, 17);
- }
+ if (skb_put_padto(skb, 17)) {
+ }
