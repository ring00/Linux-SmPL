//# pattern-19, witnesses: 2
@@
@@
- up_write(&cmd->root_lock)
+ WRITE_UNLOCK(cmd->root_lock)
