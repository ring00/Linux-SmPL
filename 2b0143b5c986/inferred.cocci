//# pattern-1, witnesses: 201
@@
expression E0;
@@
- E0->d_inode
+ d_inode(E0)
//# pattern-3, witnesses: 21
@@
expression E0;
@@
- E0->d_inode
+ d_really_is_positive(E0)
//# pattern-5, witnesses: 6
@@
expression E0;
statement S1;
@@
- if (!E0->d_inode) { S1 }
+ if (d_really_is_negative(E0)) { S1 }
//# pattern-6, witnesses: 5
@@
expression E0;
identifier PV1;
@@
- E0->d_inode
+ d_inode(*PV1)
//# pattern-9, witnesses: 3
@@
expression E0;
@@
- E0->d_inode == NULL
+ d_really_is_negative(E0)
//# pattern-10, witnesses: 3
@@
@@
- parent->d_inode
+ d_inode(parent)
//# pattern-11, witnesses: 3
@@
expression E0;
@@
- E0 || !parent->d_inode
+ E0 || d_really_is_negative(parent)
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct inode_operations i = {
    .atomic_open = fn,
};
@@
expression E0;
identifier dentry;
identifier dir;
identifier file;
identifier flags;
identifier mode;
identifier opened;
identifier r0.fn;
typedef umode_t;
@@
 int fn(struct inode * dir, struct dentry * dentry, struct file * file, unsigned int flags, umode_t mode, int * opened)
 {
     <...
- E0 || dentry->d_inode
+ E0 || d_really_is_positive(dentry)
     ...>
 }
