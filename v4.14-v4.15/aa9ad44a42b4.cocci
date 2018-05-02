//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- nvdimm_bus_add_poison(listE0)
+ nvdimm_bus_add_badrange(listE0)
//# pattern-3, witnesses: 2
@@
@@
- &nvdimm_bus->poison_lock
+ &nvdimm_bus->badrange.lock
