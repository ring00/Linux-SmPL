//# pattern-1, witnesses: 20
@@
expression E0;
expression E1;
@@
- target_put_sess_cmd(E0, E1)
+ target_put_sess_cmd(E1)
//# pattern-2, witnesses: 2
@@
@@
- target_get_sess_cmd(se_sess, se_cmd)
+ target_get_sess_cmd(se_cmd, flags & TARGET_SCF_ACK_KREF)
//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier buf;
identifier cmd;
identifier conn;
identifier r0.fn;
@@
 int fn(struct iscsi_conn * conn, struct iscsi_cmd * cmd, unsigned char * buf)
 {
     <...
- target_get_sess_cmd(conn->sess->se_sess, &cmd->se_cmd, true)
+ target_get_sess_cmd(&cmd->se_cmd, true)
     ...>
 }
