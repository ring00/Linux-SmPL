//# pattern-1, witnesses: 15
@@
expression E0;
@@
- file_inode(E0)->i_mapping
+ E0->f_mapping
//# pattern-2, witnesses: 2
@@
@@
- file_inode(file)->i_mapping
+ mapping
