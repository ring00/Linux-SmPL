//# pattern-6, witnesses: 5
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .getattr = fn,
};
@@
identifier dentry;
identifier mnt;
identifier r0.fn;
identifier stat;
typedef u32;
@@
- int fn(struct vfsmount * mnt, struct dentry * dentry, struct kstat * stat)
+ int fn(const struct path * path, struct kstat * stat, u32 request_mask, unsigned int flags)
 {
     <...
- d_inode(dentry)
+ d_inode(path->dentry)
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- vfs_getattr(&path, &stat)
+ vfs_getattr(&path, &stat, STATX_TYPE, AT_STATX_SYNC_AS_STAT)
