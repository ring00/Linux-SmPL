//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0 = blk_get_backing_dev_info(device->bdev)
+ E0 = device->bdev->bd_bdi
