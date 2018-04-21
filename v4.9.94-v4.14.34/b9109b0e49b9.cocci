//# pattern-1, witnesses: 7
@@
expression E0;
@@
- f2fs_submit_merged_bio(sbi, E0, WRITE)
+ f2fs_submit_merged_write(sbi, E0)
//# pattern-2, witnesses: 7
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- f2fs_submit_merged_bio_cond(E0, E1, E2, E3, E4, WRITE)
+ f2fs_submit_merged_write_cond(E0, E1, E2, E3, E4)
//# pattern-3, witnesses: 4
@@
expression list listE0;
@@
- f2fs_flush_merged_bios(listE0)
+ f2fs_flush_merged_writes(listE0)
//# pattern-7, witnesses: 3
@@
expression list listE0;
@@
- f2fs_submit_page_mbio(listE0)
+ f2fs_submit_page_write(listE0)
