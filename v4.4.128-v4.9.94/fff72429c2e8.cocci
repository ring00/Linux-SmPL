//# pattern-1, witnesses: 20
@@
expression E0;
@@
- rxrpc_put_call(E0)
+ rxrpc_put_call(E0, rxrpc_call_put)
//# pattern-7, witnesses: 8
@@
@@
- rxrpc_get_call(call)
+ rxrpc_get_call(call, rxrpc_call_got)
//# pattern-8, witnesses: 2
@@
@@
- rxrpc_get_call(call)
+ rxrpc_get_call(call, rxrpc_call_got_userid)
