//# pattern-1, witnesses: 2
@@
expression E1;
expression E2;
identifier PV0;
@@
- swiotlb_tbl_map_single(PV0, start_dma_addr, E1, E2, dir)
+ swiotlb_tbl_map_single(PV0, start_dma_addr, E1, E2, dir, attrs)
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- unmap_single(hwdev, E0, E1, dir)
+ unmap_single(hwdev, E0, E1, dir, attrs)
