//# pattern-3, witnesses: 2
@@
expression E0;
@@
- truncate_hugepages(inode, E0)
+ remove_inode_hugepages(inode, E0, LLONG_MAX)
