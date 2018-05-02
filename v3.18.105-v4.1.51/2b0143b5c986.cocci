//# pattern-1, witnesses: 74
@@
expression E0;
@@
- E0->d_inode
+ d_inode(E0)
//# pattern-3, witnesses: 5
@@
expression E0;
identifier PV1;
@@
- E0->d_inode
+ d_inode(*PV1)
//# pattern-4, witnesses: 3
@@
identifier PV0;
@@
- PV0->d_inode
+ d_really_is_positive(PV0)
