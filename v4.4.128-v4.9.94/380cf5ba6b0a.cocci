//# pattern-1, witnesses: 3
@@
@@
- bprm->file->f_path.mnt->mnt_flags & MNT_NOSUID
+ !mnt_may_suid(bprm->file->f_path.mnt)
