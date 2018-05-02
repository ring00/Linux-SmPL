//# pattern-7, witnesses: 10
@@
expression E0;
@@
- &E0->dma_attrs
+ E0->dma_attrs
//# pattern-15, witnesses: 5
@@
expression E0;
@@
- NULL
+ E0
//# pattern-4, witnesses: 4
@r0@
identifier i, fn;
@@
struct dma_map_ops i = {
    .free = fn,
};
@@
identifier attrs;
identifier dev;
typedef dma_addr_t;
identifier dma_handle;
identifier r0.fn;
identifier size;
identifier vaddr;
@@
- void fn(struct device * dev, size_t size, void * vaddr, dma_addr_t dma_handle, struct dma_attrs * attrs)
+ void fn(struct device * dev, size_t size, void * vaddr, dma_addr_t dma_handle, unsigned long attrs)
 { ... }
//# pattern-16, witnesses: 4
@r1@
identifier i, fn;
@@
struct dma_map_ops i = {
    .alloc = fn,
};
@@
identifier attrs;
identifier dev;
identifier dma_handle;
identifier flag;
typedef gfp_t;
identifier r1.fn;
identifier size;
@@
- void * fn(struct device * dev, size_t size, dma_addr_t * dma_handle, gfp_t flag, struct dma_attrs * attrs)
+ void * fn(struct device * dev, size_t size, dma_addr_t * dma_handle, gfp_t flag, unsigned long attrs)
 { ... }
//# pattern-2, witnesses: 3
@r2@
identifier i, fn;
@@
struct dma_map_ops i = {
    .map_sg = fn,
};
@@
identifier attrs;
identifier dir;
identifier hwdev;
identifier nents;
identifier r2.fn;
identifier sg;
@@
- int fn(struct device * hwdev, struct scatterlist * sg, int nents, enum dma_data_direction dir, struct dma_attrs * attrs)
+ int fn(struct device * hwdev, struct scatterlist * sg, int nents, enum dma_data_direction dir, unsigned long attrs)
 { ... }
//# pattern-13, witnesses: 3
@r3@
identifier i, fn;
@@
struct dma_map_ops i = {
    .map_page = fn,
};
@@
identifier attrs;
identifier dev;
identifier dir;
typedef dma_addr_t;
identifier offset;
identifier page;
identifier r3.fn;
identifier size;
@@
- dma_addr_t fn(struct device * dev, struct page * page, unsigned long offset, size_t size, enum dma_data_direction dir, struct dma_attrs * attrs)
+ dma_addr_t fn(struct device * dev, struct page * page, unsigned long offset, size_t size, enum dma_data_direction dir, unsigned long attrs)
 { ... }
//# pattern-3, witnesses: 2
@r4@
identifier i, fn;
@@
struct dma_map_ops i = {
    .unmap_page = fn,
};
@@
identifier attrs;
identifier dev;
identifier dir;
identifier dma_addr;
typedef dma_addr_t;
identifier r4.fn;
identifier size;
@@
- void fn(struct device * dev, dma_addr_t dma_addr, size_t size, enum dma_data_direction dir, struct dma_attrs * attrs)
+ void fn(struct device * dev, dma_addr_t dma_addr, size_t size, enum dma_data_direction dir, unsigned long attrs)
 { ... }
//# pattern-20, witnesses: 2
@@
expression E0;
expression E1;
@@
- dma_set_attr(DMA_ATTR_NO_KERNEL_MAPPING, &E0->dma_attrs);
+ E1->dma_attrs |= DMA_ATTR_NO_KERNEL_MAPPING;
//# pattern-21, witnesses: 2
@r5@
identifier i, fn;
@@
struct dma_map_ops i = {
    .unmap_sg = fn,
};
@@
identifier attrs;
identifier dev;
identifier dir;
identifier nelems;
identifier r5.fn;
identifier sglist;
@@
- void fn(struct device * dev, struct scatterlist * sglist, int nelems, enum dma_data_direction dir, struct dma_attrs * attrs)
+ void fn(struct device * dev, struct scatterlist * sglist, int nelems, enum dma_data_direction dir, unsigned long attrs)
 { ... }
