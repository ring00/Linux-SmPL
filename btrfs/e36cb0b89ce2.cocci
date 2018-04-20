//# pattern-2, witnesses: 38
@@
expression E0;
@@
- S_ISDIR(E0->d_inode->i_mode)
+ d_is_dir(E0)
//# pattern-5, witnesses: 7
@@
expression E0;
@@
- S_ISREG(E0->d_inode->i_mode)
+ d_is_reg(E0)
//# pattern-4, witnesses: 5
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .rename = fn,
};
@@
statement S0;
identifier new_dentry;
identifier new_dir;
identifier old_dentry;
identifier old_dir;
identifier r0.fn;
@@
 int fn(struct inode * old_dir, struct dentry * old_dentry, struct inode * new_dir, struct dentry * new_dentry)
 {
     <...
- if (S_ISDIR(new_dentry->d_inode->i_mode)) { S0 }
+ if (d_is_dir(new_dentry)) { S0 }
     ...>
 }
//# pattern-8, witnesses: 5
@@
expression E0;
@@
- S_ISLNK(E0->d_inode->i_mode)
+ d_is_symlink(E0)
//# pattern-3, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- S_ISDIR(ME0->d_inode->i_mode) != S_ISDIR(ME1->d_inode->i_mode)
+ d_is_dir(ME0) != d_is_dir(ME1)
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- E0 && S_ISLNK(dentry->d_inode->i_mode)
+ E0 && d_is_symlink(dentry)
//# pattern-10, witnesses: 2
@@
identifier PV0;
@@
- !S_ISDIR
+ !d_is_dir(PV0)
