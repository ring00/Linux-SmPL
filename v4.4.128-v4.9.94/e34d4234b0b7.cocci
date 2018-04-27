//# pattern-5, witnesses: 5
@@
@@
- rxrpc_get_call(call);
//# pattern-11, witnesses: 5
@@
expression V0;
@@
- rxrpc_put_call(V0);
+ rxrpc_put_call(V0);
//# pattern-23, witnesses: 4
@@
@@
- rxrpc_put_call(continue_call);
+ rxrpc_put_call(continue_call);
//# pattern-3, witnesses: 3
@@
@@
- rxrpc_get_call(call)
+ rxrpc_get_call(call)
//# pattern-2, witnesses: 2
@@
@@
- rxrpc_put_call(call);
- rxrpc_put_call(call);
+ rxrpc_put_call(call);
+ rxrpc_put_call(call);
//# pattern-4, witnesses: 2
@@
@@
- atomic_inc(&call->skb_count)
+ rxrpc_get_call_for_skb(call, skb)
//# pattern-9, witnesses: 2
@@
@@
- rxrpc_get_call(call);
+ rxrpc_see_call(call);
+ rxrpc_get_call(call);
//# pattern-14, witnesses: 2
@@
@@
- atomic_inc(&call->skb_count)
+ rxrpc_get_call_for_skb(call, skb)
