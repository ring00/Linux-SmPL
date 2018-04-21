//# pattern-1, witnesses: 23
@@
expression E0;
@@
- E0->d_name.name
+ E0
//# pattern-4, witnesses: 15
@@
expression E0;
expression E1;
@@
- DPRINTK(, E0, E1->d_name.len)
+ DPRINTK(, E0)
//# pattern-7, witnesses: 3
@@
expression E0;
expression E1;
@@
- pr_debug(, , E0->i_ino, E1->i_ino, dentry->d_name.len)
+ pr_debug(, , E0->i_ino, E1->i_ino)
//# pattern-12, witnesses: 3
@@
@@
- pr_debug(, , dir->i_ino, dentry->d_name.len, dentry->d_name.name)
+ pr_debug(, , dir->i_ino, dentry)
//# pattern-8, witnesses: 2
@@
@@
- pr_debug(, fp->f_path.dentry->d_name.name)
+ pr_debug(, fp)
//# pattern-10, witnesses: 2
@@
@@
- pr_debug(, , dentry->d_name.len)
+ pr_debug(, )
//# pattern-15, witnesses: 2
@@
@@
- DPRINTK(, dentry->d_name.len)
+ DPRINTK()
