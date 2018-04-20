//# pattern-1, witnesses: 19
@@
expression E0;
@@
- E0->backing_dev_info
+ inode_to_bdi(E0->host)
//# pattern-3, witnesses: 10
@@
expression E0;
@@
- E0->backing_dev_info
+ inode_to_bdi(inode)
//# pattern-4, witnesses: 4
@@
expression E0;
@@
- E0->i_mapping->backing_dev_info
+ inode_to_bdi(E0)
