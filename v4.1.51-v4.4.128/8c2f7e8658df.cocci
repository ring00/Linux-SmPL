//# pattern-21, witnesses: 5
@@
@@
- &nsblk->dev
+ &nsblk->common.dev
//# pattern-5, witnesses: 4
@@
expression E0;
@@
- E0->dev
+ E0->common.dev
//# pattern-18, witnesses: 4
@@
@@
- dev->driver
+ dev->driver || to_ndns(dev)->claim
//# pattern-26, witnesses: 2
@@
identifier pmem;
@@
 void pmem_free(struct pmem_device * pmem)
 {
     <...
- pmem->pmem_disk;
     ...>
 }
