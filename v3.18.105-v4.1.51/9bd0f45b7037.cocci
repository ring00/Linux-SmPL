//# pattern-12, witnesses: 3
@@
@@
- locks_delete_lock_ctx(fl, &dispose)
+ locks_delete_lock_ctx(fl, &ctx->flc_posix_cnt, &dispose)
