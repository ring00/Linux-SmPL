//# pattern-1, witnesses: 18
@@
expression E0;
@@
- memset(E0, 0, ETH_ALEN)
+ eth_zero_addr(E0)
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- memset(E0, 255, ETH_ALEN)
+ eth_broadcast_addr(E0)
