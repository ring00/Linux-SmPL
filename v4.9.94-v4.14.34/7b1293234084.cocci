//# pattern-4, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression IL4;
@@
- fsnotify_add_mark_locked(E0, E1, E2, E3, IL4)
+ fsnotify_add_mark_locked(E0, E2, E3, IL4)
//# pattern-2, witnesses: 3
@@
expression E0;
expression E2;
expression V1;
@@
- fsnotify_add_mark(E0, V1, inode, NULL, E2)
+ fsnotify_add_mark(E0, inode, NULL, E2)
//# pattern-3, witnesses: 2
@@
expression E0;
expression F1;
@@
- fsnotify_init_mark(E0, F1)
+ fsnotify_init_mark(E0, group, F1)
