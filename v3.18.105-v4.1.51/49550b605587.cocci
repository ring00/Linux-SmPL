//# pattern-2, witnesses: 3
@@
expression E0;
@@
- set_tsk_thread_flag(E0, TIF_MEMDIE)
+ mark_tsk_oom_victim(E0)
//# pattern-3, witnesses: 2
@@
@@
- set_thread_flag(TIF_MEMDIE)
+ mark_tsk_oom_victim(current)
