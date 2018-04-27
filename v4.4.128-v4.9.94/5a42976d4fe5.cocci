//# pattern-2, witnesses: 2
@@
@@
- rxrpc_kernel_abort_call(afs_socket, call->rxcall, RX_USER_ABORT)
+ rxrpc_kernel_abort_call(afs_socket, call->rxcall, RX_USER_ABORT, ENOMEM, "KOO")
