//# pattern-2, witnesses: 5
@@
expression E0;
@@
- dma_cap_set(DMA_SG, E0);
//# pattern-1, witnesses: 4
@@
expression E0;
expression F1;
@@
- E0->device_prep_dma_sg = F1;
//# pattern-6, witnesses: 2
@@
expression E0;
statement S1;
@@
- if (E0) { S1 }
+ if (E0) { S1 }
//# pattern-10, witnesses: 2
@@
@@
- if (thread->type == DMA_MEMCPY) {
- }
+ if (thread->type == DMA_MEMCPY) {
+ }
