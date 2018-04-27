//# pattern-3, witnesses: 9
@@
@@
- CONNTRACK_LOCKS
+ CONNTRACK_LOCKS
//# pattern-1, witnesses: 7
@@
expression list listE0;
@@
- spin_lock(listE0)
+ nf_conntrack_lock(listE0)
