//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier cmd;
identifier wait_for_tasks;
@@
 int transport_generic_free_cmd(struct se_cmd * cmd, int wait_for_tasks)
 {
     <...
- unsigned long flags = flags;
- if (!cmd->se_cmd_flags & SCF_SE_LUN_CMD) {
- }
+ if (!cmd->se_cmd_flags & SCF_SE_LUN_CMD) {
+ }
     ...>
 }
//# pattern-13, witnesses: 2
@@
@@
- &se_cmd->t_state_lock;
