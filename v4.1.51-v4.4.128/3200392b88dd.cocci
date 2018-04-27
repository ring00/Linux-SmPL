//# pattern-1, witnesses: 13
@@
expression E0;
@@
- ax25_sk(E0)
+ sk_to_ax25(E0)
//# pattern-2, witnesses: 2
@@
@@
- sk->sk_protinfo
+ ax25_sk(sk)->cb
