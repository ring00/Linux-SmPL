//# pattern-4, witnesses: 10
@@
expression F1;
identifier s;
@@
 struct target_core_fabric_ops s = {
-    .get_task_tag = F1,
 };
//# pattern-5, witnesses: 8
@@
expression E0;
@@
- E0->tag
+ E0->cmd.tag
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->se_tfo->get_task_tag(E1)
+ E0->tag
//# pattern-7, witnesses: 2
@@
@@
- pr_debug(, , __LINE__)
+ pr_debug(, , __LINE__)
//# pattern-12, witnesses: 2
@@
@@
- pr_debug(, cmd->t_task_cdb[0])
+ pr_debug(, cmd->t_task_cdb[0])
