//# pattern-16, witnesses: 4
@@
expression E0;
@@
- char [32] b = b;
- strlcpy(s->s_id, bdevname(E0, b), sizeof(unsigned long));
+ snprintf(s->s_id, sizeof(unsigned long), "%pg", E0);
//# pattern-10, witnesses: 2
@@
expression E0;
identifier block;
identifier inode;
identifier offsets;
@@
 int block_to_path(struct inode * inode, long block, int * offsets)
 {
     <...
- char [32] b = b;
- if (block < 0) {
- printk("MINIX-fs: block_to_path: block %ld < 0 on dev %s\n", block, bdevname(E0->s_bdev, b));
- }
+ if (block < 0) {
+ printk("MINIX-fs: block_to_path: block %ld < 0 on dev %pg\n", block, E0->s_bdev);
+ }
     ...>
 }
