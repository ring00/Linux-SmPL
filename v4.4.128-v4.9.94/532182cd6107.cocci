//# pattern-1, witnesses: 8
@@
expression E0;
@@
- __kfree_skb(E0)
+ tcp_drop(sk, E0)
