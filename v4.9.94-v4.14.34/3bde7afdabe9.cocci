//# pattern-1, witnesses: 2
@@
expression E2;
expression E3;
expression ME1;
expression V0;
@@
- nfs_pageio_init(pgio, inode, pg_ops, compl_ops, &V0, ME1, E2, E3)
+ nfs_pageio_init(pgio, inode, pg_ops, compl_ops, &V0, ME1, E2)
