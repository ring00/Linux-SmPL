//# pattern-3, witnesses: 2
@@
identifier bdev;
identifier blklen;
identifier blkstart;
typedef block_t;
identifier fn;
identifier sbi;
@@
 int fn(struct f2fs_sb_info * sbi, struct block_device * bdev, block_t blkstart, block_t blklen)
 {
     <...
- sbi->sb
+ bdev
     ...>
 }
