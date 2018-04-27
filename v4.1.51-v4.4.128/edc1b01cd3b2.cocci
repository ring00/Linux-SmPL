//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- spin_unlock(listE0)
+ spin_unlock_bh(listE0)
