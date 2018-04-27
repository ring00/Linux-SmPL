//# pattern-1, witnesses: 2
@@
expression E1;
expression EC0;
typedef bool;
identifier call;
identifier fn;
@@
 bool fn(struct rxrpc_call * call)
 {
     <...
- int m = atomic_read(&call->skb_count);
- if (rxrpc_queue_work(&call->processor)) {
- trace_rxrpc_call(call, EC0, E1, m, here, NULL);
- }
+ if (rxrpc_queue_work(&call->processor)) {
+ trace_rxrpc_call(call, EC0, E1, here, NULL);
+ }
     ...>
 }
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- int m = E0;
- trace_rxrpc_call(call, E1, n, m, here, E2);
+ trace_rxrpc_call(call, E1, n, here, E2);
//# pattern-4, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression V0;
@@
- trace_rxrpc_call(V0, E1, E2, E3, here, E4)
+ trace_rxrpc_call(V0, E1, E2, here, E4)
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- int n = n;
- m = E0;
- if (n == 0) {
- WARN_ON(m != 0);
- }
+ int n = n;
+ if (n == 0) {
+ }
//# pattern-6, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- int n = n;
- m = E0;
- trace_rxrpc_call(call, E1, n, m, here, E2);
+ int n = n;
+ trace_rxrpc_call(call, E1, n, here, E2);
