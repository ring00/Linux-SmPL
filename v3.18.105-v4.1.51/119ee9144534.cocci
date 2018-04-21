//# pattern-2, witnesses: 3
@@
identifier sbi;
identifier type;
@@
 int read_normal_summaries(struct f2fs_sb_info * sbi, int type)
 {
     <...
- is_set_ckpt_flags(ckpt, CP_UMOUNT_FLAG)
+ __exist_node_summaries(sbi)
     ...>
 }
