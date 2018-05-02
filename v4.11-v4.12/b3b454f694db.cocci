//# pattern-7, witnesses: 4
@@
expression E0;
@@
- E0->dev
+ E0->poison_lock
//# pattern-8, witnesses: 2
@@
expression list listE0;
@@
- nvdimm_bus_lock(listE0)
+ spin_lock(listE0)
//# pattern-9, witnesses: 2
@@
expression list listE0;
@@
- nvdimm_bus_unlock(listE0)
+ spin_unlock(listE0)
