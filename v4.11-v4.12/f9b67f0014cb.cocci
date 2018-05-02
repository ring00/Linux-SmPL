//# pattern-1, witnesses: 11
@@
identifier s;
@@
 struct dma_buf_ops s = {
 };
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0->kmap
+ E0->map
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0->kunmap
+ E0->unmap
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0->kmap_atomic
+ E0->map_atomic
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->kunmap_atomic
+ E0->unmap_atomic
