//# pattern-5, witnesses: 2
@@
expression E0;
expression EC1;
@@
- unlikely(!inc_valid_node_count(sbi, E0, EC1))
+ unlikely(inc_valid_node_count(sbi, E0, EC1))
//# pattern-18, witnesses: 2
@@
expression EC1;
identifier PV0;
identifier blkaddr;
typedef bool;
identifier do_replace;
identifier dst;
identifier dst_inode;
identifier full;
identifier len;
identifier src;
identifier src_inode;
@@
 int __clone_blkaddrs(struct inode * src_inode, struct inode * dst_inode, block_t * blkaddr, int * do_replace, unsigned long src, unsigned long dst, unsigned long len, bool full)
 {
     <...
- f2fs_i_blocks_write(PV0, 1, EC1)
+ f2fs_i_blocks_write(PV0, 1, EC1, false)
     ...>
 }
