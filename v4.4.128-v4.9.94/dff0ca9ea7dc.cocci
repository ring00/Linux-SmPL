//# pattern-4, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier cdb;
identifier cmd;
typedef sense_reason_t;
@@
 sense_reason_t target_setup_cmd_from_cdb(struct se_cmd * cmd, unsigned char * cdb)
 {
     <...
- ret = target_scsi3_ua_check(cmd);
- ret = target_alua_state_check(cmd);
- ret = target_check_reservation(cmd);
- if (ret) {
- }
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- __target_execute_cmd(cmd)
+ __target_execute_cmd(cmd, true)
