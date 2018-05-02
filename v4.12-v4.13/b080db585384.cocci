//# pattern-2, witnesses: 15
@@
expression E1;
expression E2;
expression E4;
expression V0;
expression V3;
@@
- V0 = skb_put(E1, E2);
- memset(V3, 0, E4);
+ V0 = skb_put_zero(E1, E2);
//# pattern-1, witnesses: 8
@@
expression E0;
expression E1;
expression E2;
@@
- memset(skb_put(E0, E1), 0, E2)
+ skb_put_zero(E0, E1)
