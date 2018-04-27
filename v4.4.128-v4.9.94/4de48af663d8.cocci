//# pattern-3, witnesses: 5
@@
expression E0;
expression E1;
@@
- rxrpc_kernel_abort_call(E0, E1)
+ rxrpc_kernel_abort_call(afs_socket, E0, E1)
//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- rxrpc_kernel_send_data(E0, E1, E2)
+ rxrpc_kernel_send_data(afs_socket, E0, E1, E2)
//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier abort_code;
identifier call;
typedef u32;
@@
- void rxrpc_kernel_abort_call(struct rxrpc_call * call, u32 abort_code)
+ void rxrpc_kernel_abort_call(struct socket * sock, struct rxrpc_call * call, u32 abort_code)
 {
     <...
- &call->socket->sk
+ sock->sk
     ...>
 }
//# pattern-7, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier call;
identifier len;
identifier msg;
@@
- int rxrpc_kernel_send_data(struct rxrpc_call * call, struct msghdr * msg, size_t len)
+ int rxrpc_kernel_send_data(struct socket * sock, struct rxrpc_call * call, struct msghdr * msg, size_t len)
 {
     <...
- &call->socket->sk
+ sock->sk
     ...>
 }
