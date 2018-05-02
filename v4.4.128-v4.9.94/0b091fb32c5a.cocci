//# pattern-14, witnesses: 3
@@
expression ME0;
@@
- if (!ME0) {
- ret = -ENOMEM;
- }
//# pattern-3, witnesses: 2
@@
expression ME0;
identifier dd;
identifier rcd;
@@
 void hfi1_free_ctxtdata(struct hfi1_devdata * dd, struct hfi1_ctxtdata * rcd)
 {
     <...
- vfree(ME0);
     ...>
 }
//# pattern-19, witnesses: 2
@@
expression ME0;
@@
- ME0 = vzalloc(uctxt->expected_count * sizeof(unsigned long));
