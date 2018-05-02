//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct dma_buf_ops i = {
    .end_cpu_access = fn,
};
@@
identifier direction;
identifier dmabuf;
identifier r0.fn;
@@
- void fn(struct dma_buf * dmabuf, enum dma_data_direction direction)
+ int fn(struct dma_buf * dmabuf, enum dma_data_direction direction)
 {
     ...
+ return 0;
 }
