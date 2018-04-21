//# pattern-1, witnesses: 5
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
- int fn(struct fsnotify_group * group, struct inode * to_tell, struct fsnotify_mark * inode_mark, struct fsnotify_mark * vfsmount_mark, u32 mask, const void * data, int data_type, const unsigned char * dname, u32 cookie)
+ int fn(struct fsnotify_group * group, struct inode * to_tell, struct fsnotify_mark * inode_mark, struct fsnotify_mark * vfsmount_mark, u32 mask, const void * data, int data_type, const unsigned char * dname, u32 cookie, struct fsnotify_iter_info * iter_info)
 { ... }
