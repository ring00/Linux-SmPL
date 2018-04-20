//# pattern-1, witnesses: 2
@@
expression ME0;
@@
- rwsem_acquire_read(&ME0->s_writers.lock_map[SB_FREEZE_FS - 1], 0, 1, _THIS_IP_)
+ __sb_writers_acquired(ME0, SB_FREEZE_FS)
//# pattern-2, witnesses: 2
@@
expression ME0;
@@
- rwsem_release(&ME0->s_writers.lock_map[SB_FREEZE_FS - 1], 1, _THIS_IP_)
+ __sb_writers_release(ME0, SB_FREEZE_FS)
