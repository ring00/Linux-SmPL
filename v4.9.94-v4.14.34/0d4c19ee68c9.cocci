//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- ip6_xmit(sk, skb, E0, E1, np->tclass)
+ ip6_xmit(sk, skb, E0, sk->sk_mark, E1, np->tclass)
