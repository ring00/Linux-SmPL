//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct vb2_mem_ops i = {
    .alloc = fn,
};
@@
identifier alloc_ctx;
identifier dma_dir;
identifier gfp_flags;
typedef gfp_t;
identifier r0.fn;
identifier size;
@@
- void * fn(void * alloc_ctx, unsigned long size, enum dma_data_direction dma_dir, gfp_t gfp_flags)
+ void * fn(void * alloc_ctx, const struct dma_attrs * attrs, unsigned long size, enum dma_data_direction dma_dir, gfp_t gfp_flags)
 { ... }
