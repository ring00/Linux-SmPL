//# pattern-1, witnesses: 2
@@
expression E0;
@@
- atomic_sub(E0, &wi->umr.dma_info[i].page->_count)
+ page_ref_sub(wi->umr.dma_info[i].page, E0)
//# pattern-4, witnesses: 2
@@
expression V0;
@@
- atomic_inc(&V0->data->_count)
+ page_ref_inc(V0->data)
