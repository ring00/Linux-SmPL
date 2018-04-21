//# pattern-9, witnesses: 3
@@
@@
- unlikely(sbi->por_doing)
+ unlikely(is_sbi_flag_set(sbi, SBI_POR_DOING))
//# pattern-2, witnesses: 2
@@
@@
- sbi->s_dirty
+ is_sbi_flag_set(sbi, SBI_IS_DIRTY)
//# pattern-3, witnesses: 2
@@
identifier fn;
identifier sbi;
@@
 int fn(struct f2fs_sb_info * sbi)
 {
     <...
- sbi->por_doing = true;
- sbi->por_doing = false;
+ set_sbi_flag(sbi, SBI_POR_DOING);
+ clear_sbi_flag(sbi, SBI_POR_DOING);
     ...>
 }
