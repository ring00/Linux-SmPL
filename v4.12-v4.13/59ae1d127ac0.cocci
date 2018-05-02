//# pattern-1, witnesses: 38
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- memcpy(skb_put(E0, E1), E2, E3)
+ skb_put_data(E0, E2, E3)
