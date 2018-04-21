//# pattern-7, witnesses: 6
@@
@@
- mark->flags
+ mark->connector->flags
//# pattern-20, witnesses: 4
@@
@@
- FSNOTIFY_MARK_FLAG_INODE
+ FSNOTIFY_OBJ_TYPE_INODE
//# pattern-5, witnesses: 3
@@
identifier PV0;
@@
- PV0->inode
+ PV0->connector
//# pattern-22, witnesses: 3
@@
@@
- FSNOTIFY_MARK_FLAG_VFSMOUNT
+ FSNOTIFY_OBJ_TYPE_VFSMOUNT
