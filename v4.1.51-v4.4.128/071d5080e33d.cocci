//# pattern-1, witnesses: 12
@@
@@
- tp->snd_cwnd <= tp->snd_ssthresh
+ tcp_in_slow_start(tp)
