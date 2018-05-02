//# pattern-6, witnesses: 2
@@
identifier flags;
identifier rlun;
identifier rrpc;
@@
 struct rrpc_block * rrpc_get_blk(struct rrpc * rrpc, struct rrpc_lun * rlun, unsigned long flags)
 {
     <...
- struct nvm_lun * lun = rlun->parent;
- &lun->lock;
     ...>
 }
