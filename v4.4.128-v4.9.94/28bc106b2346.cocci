//# pattern-10, witnesses: 2
@@
expression E0;
expression EC2;
expression V1;
@@
- f2fs_replace_block(sbi, &dn, E0, V1, ni.version, EC2)
+ f2fs_replace_block(sbi, &dn, E0, V1, ni.version, EC2, false)
