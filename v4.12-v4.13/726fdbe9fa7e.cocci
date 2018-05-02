//# pattern-1, witnesses: 3
@@
@@
- p_hwfn->hw_info.p_igu_info->free_blks
+ p_hwfn->hw_info.p_igu_info->usage.free_cnt_iov
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->igu_sb_cnt
+ E0->usage.cnt
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- E0.sb_cnt
+ E0.cnt
