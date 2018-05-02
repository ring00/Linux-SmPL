//# pattern-4, witnesses: 2
@@
identifier dp;
identifier io;
identifier op;
identifier op_flags;
identifier region;
identifier where;
@@
 void do_region(int op, int op_flags, unsigned int region, struct dm_io_region * where, struct dpages * dp, struct io * io)
 {
     <...
- op == REQ_OP_DISCARD
+ op == REQ_OP_DISCARD || op == REQ_OP_WRITE_ZEROES
     ...>
 }
