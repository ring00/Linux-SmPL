//# pattern-2, witnesses: 9
@@
@@
- EPROTO
+ -EPROTO
//# pattern-4, witnesses: 6
@@
@@
- ECONNABORTED
+ -ECONNABORTED
//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
expression S2;
@@
- rxrpc_kernel_abort_call(afs_socket, E0, E1, -ret, S2)
+ rxrpc_kernel_abort_call(afs_socket, E0, E1, ret, S2)
//# pattern-1, witnesses: 2
@@
expression E0;
identifier call;
identifier msg;
@@
 int rxrpc_recvmsg_term(struct rxrpc_call * call, struct msghdr * msg)
 {
     <...
- E0 = call->error
+ E0 = -call->error
     ...>
 }
//# pattern-6, witnesses: 2
@@
@@
- rxrpc_abort_connection(conn, -ret, abort_code)
+ rxrpc_abort_connection(conn, ret, abort_code)
//# pattern-7, witnesses: 2
@@
@@
- ECONNRESET
+ -ECONNRESET
//# pattern-8, witnesses: 2
@@
@@
- ENOMEM
+ -ENOMEM
//# pattern-10, witnesses: 2
@@
@@
- EBADMSG
+ -EBADMSG
