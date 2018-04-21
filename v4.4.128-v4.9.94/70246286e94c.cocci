//# pattern-3, witnesses: 11
@@
expression list listE0;
@@
- bio_rw(listE0)
+ bio_data_dir(listE0)
//# pattern-6, witnesses: 2
@@
identifier bio;
identifier flags;
identifier npages;
identifier rqd;
identifier rrpc;
typedef uint8_t;
@@
 int rrpc_setup_rq(struct rrpc * rrpc, struct bio * bio, struct nvm_rq * rqd, unsigned long flags, uint8_t npages)
 {
     <...
- bio_rw(bio) == WRITE
+ bio_op(bio) == REQ_OP_WRITE
     ...>
 }
