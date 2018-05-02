//# pattern-3, witnesses: 3
@@
statement S0;
@@
- if (ret == -EAGAIN || ret == -ENOMEM) { S0 }
+ if (ret) { S0 }
//# pattern-1, witnesses: 2
@@
identifier cmd;
identifier fn;
typedef sense_reason_t;
@@
 sense_reason_t fn(struct se_cmd * cmd)
 {
     <...
- transport_handle_queue_full(cmd, cmd->se_dev)
+ transport_handle_queue_full(cmd, cmd->se_dev, ret, true)
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression EC0;
@@
- cmd->t_state = EC0;
//# pattern-6, witnesses: 2
@@
@@
+ int ret = ret;
+ ret = cmd->se_tfo->queue_status(cmd);
+ if (ret) {
+ transport_handle_queue_full(cmd, cmd->se_dev, ret, false);
+ }
