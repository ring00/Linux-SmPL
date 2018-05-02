//# pattern-9, witnesses: 6
@@
expression E0;
@@
- E0->dir
+ E0->dma_dir
//# pattern-5, witnesses: 2
@@
@@
- int write = !V4L2_TYPE_IS_OUTPUT(q->type);
+ enum dma_data_direction dma_dir = ;
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
identifier b;
identifier fn;
identifier vb;
@@
 int fn(struct vb2_buffer * vb, const struct v4l2_buffer * b)
 {
     <...
- call_ptr_memop(E0, , E1, E2, planes[plane].length)
+ call_ptr_memop(E0, , E1, E2, planes[plane].length)
     ...>
 }
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct vb2_mem_ops i = {
    .get_userptr = fn,
};
@@
identifier alloc_ctx;
identifier r0.fn;
identifier size;
identifier vaddr;
identifier write;
@@
- void * fn(void * alloc_ctx, unsigned long vaddr, unsigned long size, int write)
+ void * fn(void * alloc_ctx, unsigned long vaddr, unsigned long size, enum dma_data_direction dma_dir)
 {
     <...
- buf->write = write
+ buf->dma_dir = dma_dir
     ...>
 }
//# pattern-16, witnesses: 2
@@
statement S0;
@@
- if (buf->write) { S0 }
+ if (buf->dma_dir == DMA_FROM_DEVICE) { S0 }
