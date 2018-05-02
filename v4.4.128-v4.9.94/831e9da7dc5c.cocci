//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- dma_buf_end_cpu_access(E0, E1, E2, E3)
+ dma_buf_end_cpu_access(E0, E3)
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct dma_buf_ops i = {
    .end_cpu_access = fn,
};
@@
identifier buffer;
identifier dir;
identifier len;
identifier r0.fn;
identifier start;
@@
- void fn(struct dma_buf * buffer, size_t start, size_t len, enum dma_data_direction dir)
+ void fn(struct dma_buf * buffer, enum dma_data_direction dir)
 { ... }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct dma_buf_ops i = {
    .begin_cpu_access = fn,
};
@@
identifier buffer;
identifier dir;
identifier len;
identifier r1.fn;
identifier start;
@@
- int fn(struct dma_buf * buffer, size_t start, size_t len, enum dma_data_direction dir)
+ int fn(struct dma_buf * buffer, enum dma_data_direction dir)
 { ... }
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- dma_buf_begin_cpu_access(E0, E1, E2, E3)
+ dma_buf_begin_cpu_access(E0, E3)
