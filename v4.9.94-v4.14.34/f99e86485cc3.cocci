//# pattern-7, witnesses: 3
@@
expression list listE0;
@@
- bdev_zone_size(listE0)
+ bdev_zone_sectors(listE0)
//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- blk_queue_zone_size(listE0)
+ blk_queue_zone_sectors(listE0)
//# pattern-8, witnesses: 2
@@
@@
- SECTOR_TO_BLOCK(bdev_zone_size(bdev))
+ SECTOR_TO_BLOCK(bdev_zone_sectors(bdev))
