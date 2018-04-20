unknown kind: ConditionalOperator
unknown kind: DoStmt
unknown kind: ConditionalOperator
unknown kind: DoStmt
//# pattern-1, witnesses: 11
@@
expression E0;
@@
- submit_bh(READ, E0)
+ submit_bh(REQ_OP_READ, 0, E0)
//# pattern-6, witnesses: 11
@@
expression E0;
@@
- submit_bh(WRITE, E0)
+ submit_bh(REQ_OP_WRITE, 0, E0)
//# pattern-33, witnesses: 4
@@
expression E0;
@@
- submit_bh(E0, bh)
+ submit_bh(REQ_OP_WRITE, E0, bh)
//# pattern-12, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- submit_bh(E0 | E1, E2)
+ submit_bh(REQ_OP_READ, E0 | E1, E2)
//# pattern-21, witnesses: 3
@@
@@
- submit_bh(READ | REQ_META | REQ_PRIO, bh)
+ submit_bh(REQ_OP_READ, REQ_META | REQ_PRIO, bh)
//# pattern-31, witnesses: 3
@@
@@
- WRITE
+ 0
//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bh;
identifier r0.fn;
identifier rw;
@@
- int fn(struct buffer_head * bh, int rw)
+ int fn(struct buffer_head * bh, int op_flags)
 {
     <...
- submit_bh(rw, bh)
+ submit_bh(REQ_OP_WRITE, op_flags, bh)
     ...>
 }
//# pattern-11, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
@@
- nilfs_btnode_submit_block(E0, E1, E2, READ, E3, &E4)
+ nilfs_btnode_submit_block(E0, E1, E2, REQ_OP_READ, 0, E3, &E4)
//# pattern-14, witnesses: 2
@@
expression E0;
@@
- btrfsic_submit_bh(E0, bh)
+ btrfsic_submit_bh(REQ_OP_WRITE, E0, bh)
//# pattern-30, witnesses: 2
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
- int write_op = ;
+ int write_flags = ;
     ...>
 }
