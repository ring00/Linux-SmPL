//# pattern-3, witnesses: 18
@@
expression E1;
expression E2;
expression E4;
expression V0;
expression V3;
@@
- V0 = __skb_put(E1, E2);
- memset(V3, 0, E4);
+ V0 = __skb_put_zero(E1, E2);
//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- *__skb_put(E0, E1) = E2;
+ __skb_put_u8(E0, E2);
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- memcpy(__skb_put(skb, E0), E1, E2)
+ __skb_put_data(skb, E1, E2)
