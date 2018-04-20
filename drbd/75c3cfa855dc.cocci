//# pattern-1, witnesses: 53
@@
expression E0;
@@
- E0->d_inode
+ d_inode(E0)
//# pattern-2, witnesses: 6
@@
expression E0;
@@
- E0->d_inode
+ d_really_is_positive(E0)
