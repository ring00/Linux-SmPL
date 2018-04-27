//# pattern-1, witnesses: 5
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
