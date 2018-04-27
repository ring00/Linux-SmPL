//# pattern-1, witnesses: 2
@@
expression V0;
@@
- V0->rtt_min[0].rtt = ~0;
+ minmax_reset(&V0->rtt_min, tcp_time_stamp, ~0);
