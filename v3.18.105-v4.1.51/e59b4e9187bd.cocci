//# pattern-2, witnesses: 2
@@
identifier PV0;
identifier PV1;
expression V2;
@@
- struct dentry * de = de;
- de = debugfs_create_file(name, S_IRUSR, PV0->debugfs_root, PV1 + idx, &V2);
- if (de && de->d_inode) {
- de->d_inode->i_size = size_mb << 20;
- }
+ debugfs_create_file_size(name, S_IRUSR, PV0->debugfs_root, PV1 + idx, &V2, size_mb << 20);
