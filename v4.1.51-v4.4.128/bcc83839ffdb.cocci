//# pattern-1, witnesses: 3
@@
expression E0;
@@
- __skb_set_sw_hash(skb, E0, &keys)
+ __skb_set_sw_hash(skb, E0, flow_keys_have_l4(&keys))
