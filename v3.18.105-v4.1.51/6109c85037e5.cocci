//# pattern-1, witnesses: 30
@@
@@
- inode->i_lock
+ ctx->flc_lock
//# pattern-2, witnesses: 22
@@
@@
- inode->i_lock
+ flctx->flc_lock
