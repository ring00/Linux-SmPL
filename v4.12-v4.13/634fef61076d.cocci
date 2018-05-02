//# pattern-1, witnesses: 23
@@
expression E0;
expression E1;
@@
- *skb_put(E0, 1) = E1;
+ skb_put_u8(E0, E1);
//# pattern-2, witnesses: 3
@@
expression E3;
expression IL1;
expression V0;
expression V2;
@@
- *skb_put(V0, 1) = IL1;
- *skb_put(V2, 1) = E3;
+ skb_put_u8(V0, IL1);
+ skb_put_u8(V2, E3);
