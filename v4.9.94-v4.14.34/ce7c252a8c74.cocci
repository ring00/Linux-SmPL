//# pattern-3, witnesses: 22
@@
expression E0;
@@
- E0->transport_lock
+ E0->recv_lock
//# pattern-6, witnesses: 12
@@
expression list listE0;
@@
- spin_unlock_bh(listE0)
+ spin_unlock(listE0)
//# pattern-7, witnesses: 10
@@
expression list listE0;
@@
- spin_lock_bh(listE0)
+ spin_lock(listE0)
