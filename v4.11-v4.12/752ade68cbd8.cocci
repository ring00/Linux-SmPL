//# pattern-3, witnesses: 20
@@
expression list listE0;
@@
- t4_free_mem(listE0)
+ kvfree(listE0)
//# pattern-1, witnesses: 12
@@
expression E0;
@@
- t4_alloc_mem(E0)
+ kvzalloc(E0, GFP_KERNEL)
//# pattern-6, witnesses: 2
@@
expression E1;
expression E4;
expression V0;
expression V2;
expression V3;
@@
- V0 = kmalloc(E1, GFP_KERNEL | __GFP_NOWARN);
- if (!V2) {
- V3 = vmalloc(E4);
- }
+ V0 = kvmalloc(E1, GFP_KERNEL);
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- t3_free_l2t(listE0)
+ kvfree(listE0)
//# pattern-15, witnesses: 2
@@
@@
- cxgb_alloc_mem(size)
+ kvzalloc(size, GFP_KERNEL)
