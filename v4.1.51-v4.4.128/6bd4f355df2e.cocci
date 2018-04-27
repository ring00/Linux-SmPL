//# pattern-1, witnesses: 5
@@
expression list listE0;
@@
- __ip6_dst_store(listE0)
+ ip6_dst_store(listE0)
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- spin_lock_init(&E0->sk_dst_lock);
