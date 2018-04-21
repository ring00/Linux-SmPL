//# pattern-1, witnesses: 5
@@
expression E0;
@@
- E0->f_path.mnt->mnt_flags & MNT_NOEXEC
+ path_noexec(&E0->f_path)
