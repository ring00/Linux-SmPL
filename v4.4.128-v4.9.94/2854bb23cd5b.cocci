//# pattern-26, witnesses: 4
@@
expression E1;
expression ME0;
identifier cmd;
identifier conn;
@@
 int iscsit_send_reject(struct iscsi_cmd * cmd, struct iscsi_conn * conn)
 {
     <...
- struct kvec * iov = iov;
- u32 iov_count = 0;
- iov = &cmd->iov_misc[0];
- ME0 = E1;
     ...>
 }
//# pattern-1, witnesses: 2
@@
identifier cmd;
identifier conn;
identifier fn;
@@
 int fn(struct iscsi_cmd * cmd, struct iscsi_conn * conn)
 {
     <...
- return 0;
+ return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, NULL, NULL, 0);
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier cmd;
identifier conn;
identifier fn;
@@
 int fn(struct iscsi_cmd * cmd, struct iscsi_conn * conn)
 {
     <...
- cmd->iov_misc_count = 1;
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression E0;
identifier cmd;
identifier conn;
identifier fn;
@@
 int fn(struct iscsi_cmd * cmd, struct iscsi_conn * conn)
 {
     <...
- cmd->iov_misc[0].iov_len = E0;
     ...>
 }
//# pattern-8, witnesses: 2
@@
identifier cmd;
identifier conn;
identifier fn;
@@
 int fn(struct iscsi_cmd * cmd, struct iscsi_conn * conn)
 {
     <...
- cmd->iov_misc[0].iov_base = cmd->pdu;
     ...>
 }
