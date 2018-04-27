//# pattern-8, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
identifier gfp;
typedef gfp_t;
identifier key;
identifier rx;
identifier service_id;
identifier trans;
typedef u16;
@@
 struct rxrpc_conn_bundle * rxrpc_get_bundle(struct rxrpc_sock * rx, struct rxrpc_transport * trans, struct key * key, u16 service_id, gfp_t gfp)
 {
     <...
- if (E0 && E1) {
- atomic_inc(&E2->usage);
- }
     ...>
 }
//# pattern-17, witnesses: 3
@@
@@
- RXRPC_UNCONNECTED
+ RXRPC_UNBOUND
//# pattern-15, witnesses: 2
@@
@@
- if (rx->sk.__sk_common.skc_state != RXRPC_UNCONNECTED) {
- }
- if (rx->sk.__sk_common.skc_state != RXRPC_UNCONNECTED) {
- }
+ if (rx->sk.__sk_common.skc_state != RXRPC_UNBOUND) {
+ }
+ if (rx->sk.__sk_common.skc_state != RXRPC_UNBOUND) {
+ }
//# pattern-18, witnesses: 2
@@
expression E1;
expression ME0;
expression ME2;
@@
- if (ME0) {
- E1;
- ME2 = NULL;
- }
