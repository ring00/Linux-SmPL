//# pattern-10, witnesses: 3
@@
@@
- sock_put(sk);
//# pattern-1, witnesses: 2
@@
@@
- struct hlist_nulls_node * node = node;
//# pattern-11, witnesses: 2
@@
expression ME0;
identifier name;
identifier table;
@@
 void udp_table_init(struct udp_table * table, const char * name)
 {
     <...
- INIT_HLIST_NULLS_HEAD(&ME0[i].head)
+ INIT_HLIST_HEAD(&ME0[i].head)
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- &hslot->lock;
//# pattern-16, witnesses: 2
@@
expression F0;
@@
- return F0(net, saddr, sport, daddr, dport, dif, &udp_table, NULL);
+ struct sock * sk = sk;
+ sk = F0(net, saddr, sport, daddr, dport, dif, &udp_table, NULL);
+ if (sk && !atomic_inc_not_zero(&sk->__sk_common.skc_refcnt)) {
+ sk = NULL;
+ }
+ return sk;
//# pattern-19, witnesses: 2
@@
@@
- &hslot->lock;
//# pattern-27, witnesses: 2
@@
expression list listE0;
@@
- hlist_nulls_empty(listE0)
+ hlist_empty(listE0)
//# pattern-28, witnesses: 2
@@
@@
- struct hlist_nulls_node * node = node;
