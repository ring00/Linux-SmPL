//# pattern-1, witnesses: 15
@@
expression E0;
expression E1;
@@
- ll_rw_block(READ, E0, E1)
+ ll_rw_block(REQ_OP_READ, 0, E0, E1)
//# pattern-3, witnesses: 4
@@
expression E0;
expression E1;
@@
- ll_rw_block(E0, 1, E1)
+ ll_rw_block(REQ_OP_READ, E0, 1, E1)
//# pattern-4, witnesses: 3
@@
expression V0;
@@
- ll_rw_block(WRITE, 1, &V0)
+ ll_rw_block(REQ_OP_WRITE, 0, 1, &V0)
//# pattern-6, witnesses: 3
@@
expression E0;
@@
- ll_rw_block(READ | REQ_META | REQ_PRIO, 1, &E0)
+ ll_rw_block(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &E0)
//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bhs;
identifier nr;
identifier rw;
@@
- void ll_rw_block(int rw, int nr, struct buffer_head ** bhs)
+ void ll_rw_block(int op, int op_flags, int nr, struct buffer_head ** bhs)
 {
     <...
- submit_bh(rw, 0, bh)
+ submit_bh(op, op_flags, bh)
     ...>
 }
