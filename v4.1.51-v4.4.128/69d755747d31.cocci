//# pattern-1, witnesses: 2
@@
expression S0;
@@
- snprintf(conn->local_ip, sizeof(unsigned long), S0, &sock_in6->sin6_addr.in6_u)
+ memcpy(&conn->local_sockaddr, &sock_in6)
//# pattern-3, witnesses: 2
@@
@@
- pr_err(, &np->np_sockaddr)
+ pr_err()
//# pattern-7, witnesses: 2
@@
expression ME0;
identifier conn;
identifier isert_conn;
identifier np;
@@
 void isert_set_conn_info(struct iscsi_np * np, struct iscsi_conn * conn, struct isert_conn * isert_conn)
 {
     <...
- conn->local_port = ntohs(ME0);
     ...>
 }
//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct iscsit_transport i = {
    .iscsit_accept_np = fn,
};
@@
expression ME0;
identifier conn;
identifier np;
@@
 int iscsit_accept_np(struct iscsi_np * np, struct iscsi_conn * conn)
 {
     <...
- conn->local_port = ntohs(ME0);
     ...>
 }
//# pattern-9, witnesses: 2
@@
@@
- pr_debug(, tpg->tpg_tiqn->tiqn, &np->np_sockaddr, np->np_port, tpg->tpgt)
+ pr_debug(, tpg->tpg_tiqn->tiqn, &np->np_sockaddr, tpg->tpgt)
//# pattern-11, witnesses: 2
@@
@@
- pr_debug(, &np->np_sockaddr, np->np_port)
+ pr_debug(, &np->np_sockaddr)
//# pattern-16, witnesses: 2
@@
identifier conn;
identifier np;
typedef u8;
identifier zero_tsih;
@@
 int iscsi_post_login_handler(struct iscsi_np * np, struct iscsi_conn * conn, u8 zero_tsih)
 {
     <...
- pr_debug(, conn->cid, conn->login_ip, conn->local_ip, conn->local_port)
+ pr_debug(, conn->cid, conn->login_ip, &conn->local_sockaddr)
     ...>
 }
