//# pattern-1, witnesses: 3
@@
expression E0;
@@
- dst_mtu(E0->dst)
+ WORD_TRUNC(dst_mtu(E0->dst))
