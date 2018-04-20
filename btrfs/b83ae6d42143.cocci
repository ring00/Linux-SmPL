//# pattern-1, witnesses: 26
@@
expression E0;
expression E1;
@@
- E0->backing_dev_info = E1;
//# pattern-4, witnesses: 3
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
//# pattern-5, witnesses: 2
@@
expression E0;
expression ME2;
expression V1;
@@
- if (E0) {
- V1->i_data.backing_dev_info = ME2;
- }
//# pattern-8, witnesses: 2
@@
expression ME0;
identifier inode;
identifier shadow;
@@
 int nilfs_mdt_setup_shadow_map(struct inode * inode, struct nilfs_shadow_map * shadow)
 {
     <...
- struct backing_dev_info * bdi = inode->i_sb->s_bdi;
- nilfs_mapping_init(&ME0, inode, bdi);
+ nilfs_mapping_init(&ME0, inode);
     ...>
 }
