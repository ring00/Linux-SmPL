//# pattern-3, witnesses: 12
@@
expression list listE0;
@@
- dma_alloc_writecombine(listE0)
+ dma_alloc_wc(listE0)
//# pattern-2, witnesses: 11
@@
expression list listE0;
@@
- dma_free_writecombine(listE0)
+ dma_free_wc(listE0)
//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- dma_mmap_writecombine(listE0)
+ dma_mmap_wc(listE0)
