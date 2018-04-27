//# pattern-14, witnesses: 3
@r0@
identifier i, fn;
@@
struct file_operations i = {
    .open = fn,
};
@@
expression F0;
identifier file;
identifier inode;
identifier r0.fn;
@@
 int fn(struct inode * inode, struct file * file)
 {
     <...
- single_open(file, F0, NULL)
+ single_open_net(inode, file, F0)
     ...>
 }
