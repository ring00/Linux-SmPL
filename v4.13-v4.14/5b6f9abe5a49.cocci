//# pattern-1, witnesses: 3
@@
@@
- enum dma_data_direction dma_dir = ;
//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (buf->dma_dir == DMA_FROM_DEVICE) { S0 }
+ if (buf->dma_dir == DMA_FROM_DEVICE || buf->dma_dir == DMA_BIDIRECTIONAL) { S0 }
//# pattern-5, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
identifier fn;
identifier pb;
identifier vb;
@@
 int fn(struct vb2_buffer * vb, const void * pb)
 {
     <...
- call_ptr_memop(E0, , E1, E2, planes[plane].length)
+ call_ptr_memop(E0, , E1, E2, planes[plane].length)
     ...>
 }
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct vb2_mem_ops i = {
    .get_userptr = fn,
};
@@
identifier dev;
identifier dma_dir;
identifier r0.fn;
identifier size;
identifier vaddr;
@@
 void * fn(struct device * dev, unsigned long vaddr, unsigned long size, enum dma_data_direction dma_dir)
 {
     <...
- dma_dir == DMA_FROM_DEVICE
+ dma_dir == DMA_FROM_DEVICE || dma_dir == DMA_BIDIRECTIONAL
     ...>
 }
