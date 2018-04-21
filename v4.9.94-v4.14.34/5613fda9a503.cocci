//# pattern-1, witnesses: 2
@@
expression ME1;
expression V0;
typedef bool;
identifier sig;
identifier tsk;
@@
 bool do_notify_parent(struct task_struct * tsk, int sig)
 {
     <...
- cputime_to_clock_t(V0 + ME1)
+ cputime_to_clock_t(V0 + nsecs_to_cputime)
     ...>
 }
