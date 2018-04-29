//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- if (!E0->tstamp.tv64) {
- __net_timestamp(E1);
- }
//# pattern-2, witnesses: 3
@@
@@
- __net_timestamp(skb);
