//# pattern-5, witnesses: 5
@@
expression E0;
identifier alloc_ctxs;
identifier fn;
identifier nbuffers;
identifier nplanes;
identifier sizes;
identifier vq;
@@
 int fn(struct vb2_queue * vq, unsigned int * nbuffers, unsigned int * nplanes, unsigned int * sizes, void ** alloc_ctxs)
 {
     <...
- alloc_ctxs[0] = E0->alloc_ctx;
     ...>
 }
//# pattern-2, witnesses: 4
@@
@@
- vb2_dma_contig_cleanup_ctx(common->alloc_ctx);
//# pattern-1, witnesses: 3
@@
expression E0;
@@
- if (IS_ERR(E0->alloc_ctx)) {
- }
//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->alloc_ctx = vb2_dma_contig_init_ctx(E1)
+ q->dev = E1
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
@@
- if (E0) {
- vb2_dma_contig_cleanup_ctx(E1->alloc_ctx);
- }
