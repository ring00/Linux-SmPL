//# pattern-1, witnesses: 3
@@
expression E0;
@@
- nla_reserve(skb, INET_DIAG_INFO, E0)
+ nla_reserve_64bit(skb, INET_DIAG_INFO, E0, INET_DIAG_PAD)
