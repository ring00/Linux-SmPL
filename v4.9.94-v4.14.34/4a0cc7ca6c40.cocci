//# pattern-1, witnesses: 119
@@
expression E0;
@@
- btrfs_ino(E0)
+ btrfs_ino(BTRFS_I(E0))
//# pattern-6, witnesses: 6
@@
@@
- &entry->vfs_inode
+ BTRFS_I(&entry->vfs_inode)
//# pattern-5, witnesses: 4
@@
@@
- &entry->vfs_inode
+ entry
//# pattern-2, witnesses: 2
@@
identifier fn;
identifier inode;
@@
 struct btrfs_delayed_node * fn(struct inode * inode)
 {
     <...
- btrfs_ino(inode)
+ btrfs_ino(btrfs_inode)
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0->inode
+ BTRFS_I(E0->inode)
