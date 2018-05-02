//# pattern-2, witnesses: 20
@@
expression E0;
expression E1;
@@
- E0->backing_dev_info = E1;
//# pattern-3, witnesses: 3
@@
expression E0;
identifier bdev;
typedef fmode_t;
identifier fn;
identifier for_part;
identifier mode;
@@
 int fn(struct block_device * bdev, fmode_t mode, int for_part)
 {
     <...
- bdev_inode_switch_bdi(bdev->bd_inode, E0);
     ...>
 }
