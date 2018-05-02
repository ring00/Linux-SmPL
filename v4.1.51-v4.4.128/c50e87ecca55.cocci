//# pattern-4, witnesses: 2
@@
expression IL0;
identifier conn;
identifier fn;
identifier login;
@@
 int fn(struct iscsi_conn * conn, struct iscsi_login * login)
 {
     <...
- iscsi_encode_text_output(IL0 | PHASE_DECLARATIVE, SENDER_TARGET, login->rsp_buf, &login->rsp_length, conn->param_list)
+ iscsi_encode_text_output(IL0 | PHASE_DECLARATIVE, SENDER_TARGET, login->rsp_buf, &login->rsp_length, conn->param_list, conn->tpg->tpg_attrib.login_keys_workaround)
     ...>
 }
