//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- if (!E0->tstamp.tv64) {
- __net_timestamp(E1);
- }
//# pattern-3, witnesses: 3
@@
@@
- __net_timestamp(skb);
+ can_skb_prv(skb)->skbcnt = 0;
