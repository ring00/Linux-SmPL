//# pattern-2, witnesses: 3
@@
@@
- fsnotify_recalc_inode_mask(inode)
+ fsnotify_recalc_mask(inode->i_fsnotify_marks)
//# pattern-1, witnesses: 2
@@
typedef __u32;
identifier flags;
identifier fn;
identifier group;
identifier mask;
identifier mnt;
@@
 int fn(struct fsnotify_group * group, struct vfsmount * mnt, __u32 mask, unsigned int flags)
 {
     <...
- fsnotify_recalc_vfsmount_mask(mnt)
+ fsnotify_recalc_mask(real_mount(mnt)->mnt_fsnotify_marks)
     ...>
 }
