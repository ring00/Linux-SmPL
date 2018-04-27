//# pattern-7, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- ib_map_mr_sg(E0, E1->sg, E2, E3)
+ ib_map_mr_sg(E0, E1->sg, E2, 0, E3)
//# pattern-14, witnesses: 2
@r0@
identifier fn;
expression P1;
@@
llvm.expect.i64(fn, P1)
@@
expression E0;
identifier mr;
identifier set_page;
identifier sg_nents;
identifier sgl;
@@
- int ib_sg_to_pages(struct ib_mr * mr, struct scatterlist * sgl, int sg_nents, int (*)(struct ib_mr *, u64) set_page)
+ int ib_sg_to_pages(struct ib_mr * mr, struct scatterlist * sgl, int sg_nents, unsigned int sg_offset, int (*)(struct ib_mr *, u64) set_page)
 {
     <...
- sg_dma_address(E0)
+ sg_dma_address(E0) + sg_offset
     ...>
 }
