//# pattern-21, witnesses: 6
@@
expression E0;
@@
- E0->rx_work
+ E0->work
//# pattern-19, witnesses: 5
@@
expression E0;
@@
- E0->rx_need_bytes
+ E0->need_bytes
//# pattern-28, witnesses: 5
@@
expression E0;
@@
- E0->rx_skb_head
+ E0->skb_head
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- E0.rx_bytes
+ E0.bytes
//# pattern-29, witnesses: 4
@@
expression E0;
@@
- E0.rx_msgs
+ E0.msgs
//# pattern-7, witnesses: 3
@@
expression E0;
@@
- E0->rx_stopped
+ E0->stopped
//# pattern-18, witnesses: 3
@@
expression E0;
@@
- E0->rx_paused
+ E0->paused
//# pattern-6, witnesses: 2
@@
@@
- struct strp_rx_msg * rxm = rxm;
- rxm = strp_rx_msg(skb);
- if (len > rxm->full_len) {
- len = rxm->full_len;
- }
+ struct strp_msg * stm = stm;
+ stm = strp_msg(skb);
+ if (len > stm->full_len) {
+ len = stm->full_len;
+ }
//# pattern-11, witnesses: 2
@@
@@
- rxm->offset
+ stm->offset
//# pattern-22, witnesses: 2
@@
expression E0;
@@
- E0->rx_msg_timer
+ E0->msg_timer
