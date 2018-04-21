//# pattern-1, witnesses: 7
@@
expression E0;
@@
- fsnotify_find_inode_mark(E0, inode)
+ fsnotify_find_mark(&inode->i_fsnotify_marks, E0)
//# pattern-2, witnesses: 2
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
- fsnotify_find_vfsmount_mark(group, mnt)
+ fsnotify_find_mark(&real_mount(mnt)->mnt_fsnotify_marks, group)
     ...>
 }
