//# pattern-1, witnesses: 2
@@
identifier cmd;
identifier fn;
@@
 void fn(struct qla_tgt_cmd * cmd)
 {
     <...
- queue_work(tcm_qla2xxx_free_wq, &cmd->work)
+ queue_work_on(smp_processor_id, tcm_qla2xxx_free_wq, &cmd->work)
     ...>
 }
