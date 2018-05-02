//# pattern-2, witnesses: 3
@@
identifier s;
@@
 struct oom_control s = {
-    .force_kill = false,
 };
//# pattern-1, witnesses: 2
@@
identifier oc;
identifier task;
identifier totalpages;
@@
 enum oom_scan_t oom_scan_process_thread(struct oom_control * oc, struct task_struct * task, unsigned long totalpages)
 {
     <...
- !oc->force_kill
+ oc->order != -1
     ...>
 }
