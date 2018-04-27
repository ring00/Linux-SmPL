//# pattern-2, witnesses: 2
@@
expression V0;
@@
- tcp_prequeue_init(V0);
//# pattern-3, witnesses: 2
@@
expression E0;
identifier fn;
identifier skb;
@@
 int fn(struct sk_buff * skb)
 {
     <...
- if (E0) {
- if (!tcp_prequeue(sk, skb)) {
- }
- }
+ if (E0) {
+ }
     ...>
 }
