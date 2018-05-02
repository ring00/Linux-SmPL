//# pattern-1, witnesses: 4
@@
expression E0;
@@
- struct completion wait = DECLARE_COMPLETION_ONSTACK(wait);
- rqd->end_io = pblk_end_io_sync;
- rqd->private = &wait;
- ret = pblk_submit_io(pblk, E0);
- if (!wait_for_completion_io_timeout(&wait, msecs_to_jiffies(PBLK_COMMAND_TIMEOUT_MS))) {
- }
- reinit_completion(&wait);
+ ret = pblk_submit_io_sync(pblk, E0);
//# pattern-7, witnesses: 2
@@
@@
- struct completion wait = DECLARE_COMPLETION_ONSTACK(wait);
- rqd.end_io = pblk_end_io_sync;
- rqd.private = &wait;
- ret = pblk_submit_io(pblk, &rqd);
- if (!wait_for_completion_io_timeout(&wait, msecs_to_jiffies(PBLK_COMMAND_TIMEOUT_MS))) {
- pr_err;
- }
+ ret = pblk_submit_io_sync(pblk, &rqd);
