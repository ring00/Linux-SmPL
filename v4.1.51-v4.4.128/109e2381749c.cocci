//# pattern-4, witnesses: 2
@@
expression E0;
identifier conn;
identifier login;
@@
 int iscsi_target_do_tx_login_io(struct iscsi_conn * conn, struct iscsi_login * login)
 {
     <...
- struct iscsi_session * sess = conn->sess;
- E0;
     ...>
 }
