//# pattern-20, witnesses: 2
@r0@
identifier i, fn;
@@
struct tcp_congestion_ops i = {
    .pkts_acked = fn,
};
@@
expression V0;
identifier pkts_acked;
identifier r0.fn;
identifier rtt;
typedef s32;
identifier sk;
typedef u32;
@@
- void fn(struct sock * sk, u32 pkts_acked, s32 rtt)
+ void fn(struct sock * sk, const struct ack_sample * sample)
 {
     <...
- V0->pkts_acked = pkts_acked
+ V0->pkts_acked = sample->pkts_acked
     ...>
 }
//# pattern-21, witnesses: 2
@r1@
identifier i, fn;
@@
struct tcp_congestion_ops i = {
    .pkts_acked = fn,
};
@@
identifier r1.fn;
identifier sample;
identifier sk;
@@
 void fn(struct sock * sk, const struct ack_sample * sample)
 {
     <...
- usecs_to_jiffies(rtt)
+ usecs_to_jiffies(sample->rtt_us)
     ...>
 }
//# pattern-23, witnesses: 2
@r2@
identifier i, fn;
@@
struct tcp_congestion_ops i = {
    .pkts_acked = fn,
};
@@
identifier sample;
identifier sk;
@@
 void tcp_cdg_acked(struct sock * sk, const struct ack_sample * sample)
 {
     <...
- ca->rtt.minrtt_us
+ ca->rtt.minsample->rtt_us
     ...>
 }
