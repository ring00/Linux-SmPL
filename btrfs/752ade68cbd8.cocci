//# pattern-10, witnesses: 20
@@
expression list listE0;
@@
- t4_free_mem(listE0)
+ kvfree(listE0)
//# pattern-3, witnesses: 12
@@
expression E0;
@@
- t4_alloc_mem(E0)
+ kvzalloc(E0, GFP_KERNEL)
//# pattern-12, witnesses: 3
@@
expression list listE0;
@@
- fq_codel_free(listE0)
+ kvfree(listE0)
//# pattern-19, witnesses: 3
@@
expression list listE0;
@@
- hhf_free(listE0)
+ kvfree(listE0)
//# pattern-20, witnesses: 3
@@
expression E1;
expression E2;
expression E4;
expression V0;
expression V3;
@@
- V0 = kmalloc(E1, GFP_KERNEL | __GFP_NOWARN);
- if (E2) {
- V3 = vmalloc(E4);
- }
+ V0 = kvmalloc(E1, GFP_KERNEL);
//# pattern-22, witnesses: 3
@@
expression E0;
expression E2;
expression ME1;
@@
- if (E0) {
- ME1 = vmalloc(E2);
- }
//# pattern-33, witnesses: 3
@@
expression BO0;
expression E1;
@@
- hhf_zalloc(BO0)
+ kvzalloc(1024 BO0 E1, GFP_KERNEL)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- kmalloc(E0, GFP_KERNEL | __GFP_NOWARN)
+ kvmalloc(E0, GFP_KERNEL)
//# pattern-21, witnesses: 2
@@
expression list listE0;
@@
- t3_free_l2t(listE0)
+ kvfree(listE0)
//# pattern-31, witnesses: 2
@@
expression E1;
expression V0;
expression V2;
expression V3;
@@
- V0 = kzalloc(size, GFP_KERNEL | E1);
- if (!V2) {
- V3 = vzalloc(size);
- }
+ V0 = kvzalloc(size, GFP_KERNEL);
//# pattern-42, witnesses: 2
@@
@@
- cxgb_alloc_mem(size)
+ kvzalloc(size, GFP_KERNEL)
