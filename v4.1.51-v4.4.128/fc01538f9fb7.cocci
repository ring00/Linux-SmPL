//# pattern-2, witnesses: 2
@@
@@
- int twrefcnt = 0;
- if (tw) {
- twrefcnt = inet_twsk_unhash(tw);
- }
- if (twrefcnt) {
- inet_twsk_put(tw);
- }
+ if (tw) {
+ sk_nulls_del_node_init_rcu(tw);
+ }
