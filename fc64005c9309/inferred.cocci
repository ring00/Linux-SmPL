//# pattern-1, witnesses: 23
@@
expression E0;
@@
- d_inode(E0)->i_sb
+ E0->d_sb
//# pattern-2, witnesses: 5
@@
identifier PV0;
@@
- PV0->d_inode->i_sb
+ PV0->d_sb
//# pattern-3, witnesses: 4
@@
@@
- sb = d_inode(direntry)->i_sb;
- if (sb == NULL) {
- return -EIO;
- };
+ sb = direntry->d_sb;
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- d_backing_inode(E0)->i_sb
+ E0->d_sb
