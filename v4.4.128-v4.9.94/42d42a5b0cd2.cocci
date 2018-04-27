//# pattern-1, witnesses: 2
@@
identifier fn;
identifier transport;
@@
 void fn(struct sock_xprt * transport)
 {
     <...
- if (skb == NULL) {
- }
+ if (skb != NULL) {
+ }
+ if (!test_and_clear_bit(XPRT_SOCK_DATA_READY, &transport->sock_state)) {
+ }
     ...>
 }
