//# pattern-2, witnesses: 53
@@
expression E1;
identifier PV0;
@@
- seq_put_decimal_ull(PV0, , E1)
+ seq_put_decimal_ull(PV0, " ", E1)
//# pattern-4, witnesses: 14
@@
expression E0;
identifier m;
identifier ns;
identifier pid;
identifier task;
identifier whole;
@@
 int do_task_stat(struct seq_file * m, struct pid_namespace * ns, struct pid * pid, struct task_struct * task, int whole)
 {
     <...
- seq_put_decimal_ll(m, , E0)
+ seq_put_decimal_ll(m, " ", E0)
     ...>
 }
