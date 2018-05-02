//# pattern-1, witnesses: 3
@@
@@
- if (skb->csum_bad) {
- }
//# pattern-2, witnesses: 2
@@
expression E1;
identifier PV0;
statement S2;
@@
- if (PV0->csum_bad || E1) { S2 }
+ if (E1) { S2 }
