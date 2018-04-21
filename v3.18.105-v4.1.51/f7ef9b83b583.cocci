//# pattern-2, witnesses: 3
@@
expression E0;
identifier cpc;
identifier sbi;
@@
 void do_checkpoint(struct f2fs_sb_info * sbi, struct cp_control * cpc)
 {
     <...
- memcpy(kaddr, E0, 1 << sbi->log_blocksize)
+ memcpy(kaddr, E0, F2FS_BLKSIZE)
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression ME0;
identifier range;
identifier sbi;
@@
 int f2fs_trim_fs(struct f2fs_sb_info * sbi, struct fstrim_range * range)
 {
     <...
- ME0 >> sbi->log_blocksize
+ F2FS_BYTES_TO_BLK(ME0)
     ...>
 }
