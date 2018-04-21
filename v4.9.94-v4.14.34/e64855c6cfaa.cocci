//# pattern-2, witnesses: 10
@@
@@
- unmap_underlying_metadata(bh->b_bdev, bh->b_blocknr)
+ clean_bdev_bh_alias(bh)
