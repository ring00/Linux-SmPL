//# pattern-6, witnesses: 20
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
//# pattern-20, witnesses: 5
@r1@
identifier i, fn;
@@
struct inode_operations i = {
    .getattr = fn,
};
@@
identifier path;
identifier query_flags;
identifier r1.fn;
identifier request_mask;
identifier stat;
typedef u32;
@@
 int fn(const struct path * path, struct kstat * stat, u32 request_mask, unsigned int query_flags)
 {
     <...
- d_inode(dentry)
+ d_inode(path->dentry)
     ...>
 }
//# pattern-27, witnesses: 4
@@
expression E1;
expression V0;
@@
- vfs_getattr(&V0, E1)
+ vfs_getattr(&V0, E1, STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT)
//# pattern-26, witnesses: 3
@r2@
identifier i, fn;
@@
struct inode_operations i = {
    .getattr = fn,
};
@@
expression E0;
expression E1;
identifier flags;
identifier path;
identifier r2.fn;
identifier request_mask;
identifier stat;
typedef u32;
@@
 int fn(const struct path * path, struct kstat * stat, u32 request_mask, unsigned int flags)
 {
     <...
- vfs_getattr(E0, E1)
+ vfs_getattr(E0, E1, request_mask, flags)
     ...>
 }
//# pattern-5, witnesses: 2
@r3@
identifier i, fn;
@@
struct inode_operations i = {
    .getattr = fn,
};
@@
identifier path;
identifier query_flags;
identifier r3.fn;
identifier request_mask;
identifier stat;
typedef u32;
@@
 int fn(const struct path * path, struct kstat * stat, u32 request_mask, unsigned int query_flags)
 {
     <...
- dentry->d_sb
+ path->dentry->d_sb
     ...>
 }
//# pattern-32, witnesses: 2
@@
@@
- vfs_getattr(&path, &stat)
+ vfs_getattr(&path, &stat, STATX_TYPE, AT_STATX_SYNC_AS_STAT)
//# pattern-37, witnesses: 2
@r4@
identifier i, fn;
@@
struct inode_operations i = {
    .getattr = fn,
};
@@
identifier path;
identifier query_flags;
identifier request_mask;
identifier stat;
typedef u32;
@@
 int nfs_getattr(const struct path * path, struct kstat * stat, u32 request_mask, unsigned int query_flags)
 {
     <...
- mnt->mnt_flags
+ path->mnt->mnt_flags
     ...>
 }
