//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- atomic_dec_mb(listE0)
+ percpu_ref_put(listE0)
//# pattern-3, witnesses: 2
@@
expression V0;
expression V1;
@@
- atomic_inc_mb(&V0->lun_active);
- atomic_dec_mb(&V1->lun_active);
+ if (!percpu_ref_tryget_live(&V0->lun_ref)) {
+ }
+ percpu_ref_put(&V1->lun_ref);
