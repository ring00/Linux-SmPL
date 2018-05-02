//# pattern-2, witnesses: 7
@@
expression E1;
expression E2;
expression E3;
expression V0;
@@
- V0 = skb_put_data(E1, E2, E3);
//# pattern-1, witnesses: 6
@@
expression E3;
expression E4;
type T0;
expression V1;
expression V2;
@@
- T0  = V1;
- V2 = skb_put_data(skb, E3, E4);
//# pattern-6, witnesses: 4
@@
expression V0;
@@
- memcpy(skb_put(skb, sizeof(unsigned long)), &V0, sizeof(unsigned long))
+ skb_put_data(skb, &V0, sizeof(unsigned long))
