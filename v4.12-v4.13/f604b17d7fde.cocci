//# pattern-5, witnesses: 3
@@
expression ME0;
@@
- ME0.sb
+ p_cid->sb_igu_id
//# pattern-1, witnesses: 2
@@
@@
- p_params->sb
+ p_params->p_sb->igu_sb_id
//# pattern-3, witnesses: 2
@@
@@
- (p_cid->abs.sb)
+ (p_cid->sb_igu_id)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 = p_cid->abs.sb_idx
+ E0 = p_cid->sb_idx
//# pattern-6, witnesses: 2
@@
expression V0;
@@
- V0.sb = fp->sb_info->igu_sb_id
+ V0.p_sb = fp->sb_info
//# pattern-7, witnesses: 2
@@
@@
- params.sb = req->hw_sb;
+ struct qed_sb_info sb_dummy = sb_dummy;
+ memset(&sb_dummy, 0, sizeof(unsigned long));
+ sb_dummy.igu_sb_id = req->hw_sb;
+ params.p_sb = &sb_dummy;
//# pattern-8, witnesses: 2
@@
expression E0;
@@
- E0 = p_cid->rel.sb_idx
+ E0 = p_cid->sb_idx
