//# pattern-1, witnesses: 2
@@
expression V0;
expression V1;
expression V2;
@@
- make_bad_inode(V0);
- unlock_new_inode(V1);
- iput(V2);
+ iget_failed(V0);
