//# pattern-6, witnesses: 3
@@
@@
- GFP_KERNEL
+ GFP_KERNEL & mapping_gfp_mask(mapping)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- do_mpage_readpage(bio, page, E0, &last_block_in_bio, &map_bh, &first_logical_block, get_block)
+ do_mpage_readpage(bio, page, E0, &last_block_in_bio, &map_bh, &first_logical_block, get_block, gfp)
