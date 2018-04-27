//# pattern-1, witnesses: 38
@@
expression E0;
@@
- E0->trans_start = jiffies;
+ netif_trans_update(E0);
