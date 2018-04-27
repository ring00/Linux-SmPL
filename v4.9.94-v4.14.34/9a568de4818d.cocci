//# pattern-12, witnesses: 9
@@
expression E0;
@@
- skb_mstamp_get(&E0->tcp_mstamp)
+ tcp_mstamp_refresh(E0)
//# pattern-5, witnesses: 8
@@
expression list listE0;
@@
- tcp_time_stamp
+ tcp_time_stamp_raw(listE0)
//# pattern-19, witnesses: 5
@@
expression ME0;
@@
- ME0.v64
+ ME0
//# pattern-1, witnesses: 3
@@
@@
- tcp_time_stamp
+ tcp_time_stamp(tp)
//# pattern-6, witnesses: 3
@@
@@
- &skb->skb_mstamp
+ skb->skb_mstamp
//# pattern-3, witnesses: 2
@@
@@
- scb->tx.delivered_mstamp.v64
+ scb->tx.delivered_mstamp
//# pattern-11, witnesses: 2
@@
expression ME0;
@@
- skb_mstamp_us_delta(&tp->tcp_mstamp, &ME0.time)
+ tcp_stamp_us_delta(tp->tcp_mstamp, ME0.time)
//# pattern-14, witnesses: 2
@@
expression E1;
expression ME0;
@@
- ME0.v64 = E1
+ ME0 = E1
//# pattern-27, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- skb_mstamp_us_delta(&ME0, &ME1)
+ tcp_stamp_us_delta(ME0, ME1)
//# pattern-29, witnesses: 2
@@
expression V0;
@@
- skb_mstamp_us_delta(&tp->tcp_mstamp, &V0->skb_mstamp)
+ tcp_stamp_us_delta(tp->tcp_mstamp, V0->skb_mstamp)
//# pattern-38, witnesses: 2
@@
expression ME0;
identifier acked;
identifier prior_fackets;
identifier prior_snd_una;
identifier sack;
identifier sk;
typedef u32;
@@
 int tcp_clean_rtx_queue(struct sock * sk, int prior_fackets, u32 prior_snd_una, int * acked, struct tcp_sacktag_state * sack)
 {
     <...
- skb_mstamp_us_delta(now, &ME0)
+ tcp_stamp_us_delta(tp->tcp_mstamp, ME0)
     ...>
 }
