//# pattern-4, witnesses: 3
@@
@@
- true
+ 0
//# pattern-2, witnesses: 2
@@
@@
- false
+ BLKDEV_ZERO_NOUNMAP
//# pattern-3, witnesses: 2
@@
expression E0;
typedef bool;
identifier device;
identifier discard;
identifier nr_sectors;
typedef sector_t;
identifier start;
@@
 int drbd_issue_discard_or_zero_out(struct drbd_device * device, sector_t start, unsigned int nr_sectors, bool discard)
 {
     <...
- blkdev_issue_zeroout(bdev, start, E0, GFP_NOIO, 0)
+ blkdev_issue_zeroout(bdev, start, E0, GFP_NOIO, BLKDEV_ZERO_NOUNMAP)
     ...>
 }
