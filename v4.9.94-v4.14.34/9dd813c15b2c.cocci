//# pattern-2, witnesses: 4
@@
@@
- &m->mnt_fsnotify_marks
+ m->mnt_fsnotify_marks
//# pattern-6, witnesses: 4
@@
@@
- &inode->i_fsnotify_marks
+ inode->i_fsnotify_marks
//# pattern-10, witnesses: 2
@@
expression ME0;
@@
- INIT_HLIST_HEAD(&ME0);
