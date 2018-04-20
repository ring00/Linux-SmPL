//# pattern-5, witnesses: 4
@@
@@
- mapping_gfp_constraint(mapping, GFP_KERNEL)
+ readahead_gfp_mask(mapping)
//# pattern-4, witnesses: 2
@@
@@
- GFP_KERNEL
+ readahead_gfp_mask(mapping)
