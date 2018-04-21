//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct nfs_rpc_ops i = {
    .setattr = fn,
};
@@
identifier dentry;
identifier fattr;
identifier r0.fn;
identifier sattr;
@@
 int fn(struct dentry * dentry, struct nfs_fattr * fattr, struct iattr * sattr)
 {
     <...
- nfs_setattr_update_inode(inode, sattr)
+ nfs_setattr_update_inode(inode, sattr, fattr)
     ...>
 }
