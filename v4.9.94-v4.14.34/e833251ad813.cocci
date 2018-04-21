//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- rxrpc_kernel_send_data(afs_socket, E0, E1, E2)
+ rxrpc_kernel_send_data(afs_socket, E0, E1, E2, afs_notify_end_request_tx)
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- rxrpc_kernel_send_data(afs_socket, call->rxcall, &msg, E0)
+ rxrpc_kernel_send_data(afs_socket, call->rxcall, &msg, E0, afs_notify_end_reply_tx)
