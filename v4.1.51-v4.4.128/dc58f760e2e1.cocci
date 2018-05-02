//# pattern-5, witnesses: 2
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
- conn->login_port = ntohs(ME0);
     ...>
 }
//# pattern-11, witnesses: 2
@@
identifier conn;
identifier np;
typedef u8;
identifier zero_tsih;
@@
 int iscsi_post_login_handler(struct iscsi_np * np, struct iscsi_conn * conn, u8 zero_tsih)
 {
     <...
- pr_debug(, conn->cid, conn->login_ip, &conn->local_sockaddr)
+ pr_debug(, conn->cid, &conn->login_sockaddr, &conn->local_sockaddr)
     ...>
 }
