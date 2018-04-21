//# pattern-2, witnesses: 3
@@
identifier dir;
identifier fn;
identifier inode;
identifier name;
@@
- int fn(struct inode * inode, struct inode * dir, struct qstr * name)
+ int fn(struct inode * inode, struct inode * dir, const struct qstr * name)
 { ... }
//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct nfs_rpc_ops i = {
    .lookup = fn,
};
@@
identifier dir;
identifier fattr;
identifier fhandle;
identifier label;
identifier name;
identifier r0.fn;
@@
- int fn(struct inode * dir, struct qstr * name, struct nfs_fh * fhandle, struct nfs_fattr * fattr, struct nfs4_label * label)
+ int fn(struct inode * dir, const struct qstr * name, struct nfs_fh * fhandle, struct nfs_fattr * fattr, struct nfs4_label * label)
 { ... }
//# pattern-8, witnesses: 3
@@
identifier dir;
identifier fn;
identifier name;
@@
- int fn(struct inode * dir, struct qstr * name)
+ int fn(struct inode * dir, const struct qstr * name)
 { ... }
//# pattern-6, witnesses: 2
@@
identifier dir;
identifier fn;
identifier name;
@@
 int fn(struct inode * dir, const struct qstr * name)
 { ... }
