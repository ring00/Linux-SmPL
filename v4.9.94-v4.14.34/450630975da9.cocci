//# pattern-1, witnesses: 27
@@
expression E0;
@@
- E0->f_inode
+ file_inode(E0)
//# pattern-3, witnesses: 2
@@
expression V0;
@@
- V0->f_inode->i_mapping
+ V0->f_mapping
