//# pattern-3, witnesses: 2
@@
@@
- spin_lock(&inode->i_lock);
- _ ++NFS_I(inode)->nrequests;
- spin_unlock(&inode->i_lock);
+ atomic_long_inc(&NFS_I(inode)->nrequests);
