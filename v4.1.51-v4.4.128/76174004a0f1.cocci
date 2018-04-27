//# pattern-2, witnesses: 2
@@
@@
- tp->snd_cwnd < tp->snd_ssthresh
+ tcp_in_slow_start(tp)
