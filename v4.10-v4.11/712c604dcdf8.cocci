//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct dma_map_ops i = {
    . = fn,
};
@@
expression E0;
identifier attrs;
identifier dev;
identifier dma_addr;
identifier flag;
typedef gfp_t;
identifier r0.fn;
identifier size;
@@
 void * fn(struct device * dev, size_t size, dma_addr_t * dma_addr, gfp_t flag, unsigned long attrs)
 {
     <...
- dma_alloc_from_contiguous(dev, E0, get_order(size))
+ dma_alloc_from_contiguous(dev, E0, get_order(size), flag)
     ...>
 }
