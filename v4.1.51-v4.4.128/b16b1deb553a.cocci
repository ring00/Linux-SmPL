//# pattern-4, witnesses: 2
@@
identifier get_block;
identifier handler;
identifier inode;
identifier page;
identifier wbc;
@@
 int __block_write_full_page(struct inode * inode, struct page * page, get_block_t * get_block, struct writeback_control * wbc, bh_end_io_t * handler)
 {
     <...
- struct cgroup_subsys_state * blkcg_css = inode_to_wb_blkcg_css(inode);
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- submit_bh_blkcg(listE0)
+ submit_bh_wbc(listE0)
