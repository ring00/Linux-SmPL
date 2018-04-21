//# pattern-1, witnesses: 3
@@
identifier cookie;
identifier data;
identifier data_type;
identifier file_name;
identifier fn;
identifier group;
identifier inode;
identifier inode_mark;
identifier mask;
typedef u32;
identifier vfsmount_mark;
@@
- int fn(struct fsnotify_group * group, struct inode * inode, struct fsnotify_mark * inode_mark, struct fsnotify_mark * vfsmount_mark, u32 mask, void * data, int data_type, const unsigned char * file_name, u32 cookie)
+ int fn(struct fsnotify_group * group, struct inode * inode, struct fsnotify_mark * inode_mark, struct fsnotify_mark * vfsmount_mark, u32 mask, const void * data, int data_type, const unsigned char * file_name, u32 cookie)
 { ... }
//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct fsnotify_ops i = {
    .handle_event = fn,
};
@@
identifier cookie;
identifier data;
identifier data_type;
identifier dname;
identifier group;
identifier inode_mark;
identifier mask;
identifier r0.fn;
identifier to_tell;
typedef u32;
identifier vfsmount_mark;
@@
 int fn(struct fsnotify_group * group, struct inode * to_tell, struct fsnotify_mark * inode_mark, struct fsnotify_mark * vfsmount_mark, u32 mask, const void * data, int data_type, const unsigned char * dname, u32 cookie)
 { ... }
