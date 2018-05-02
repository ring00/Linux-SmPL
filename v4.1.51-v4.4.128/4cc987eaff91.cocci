//# pattern-2, witnesses: 18
@@
expression list listE0;
@@
- spin_unlock(&lun->lun_sep_lock)
+ rcu_read_unlock(listE0)
//# pattern-14, witnesses: 18
@@
expression list listE0;
@@
- spin_lock(&lun->lun_sep_lock)
+ rcu_read_lock(listE0)
//# pattern-15, witnesses: 17
@@
expression E0;
@@
- E0 = lun->lun_se_dev
+ E0 = rcu_dereference(lun->lun_se_dev)
//# pattern-6, witnesses: 3
@@
@@
- lun->lun_se_dev
+ rcu_dereference_raw(lun->lun_se_dev)
//# pattern-12, witnesses: 3
@@
@@
- dev->se_hba
+ dev
