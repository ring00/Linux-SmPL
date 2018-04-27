//# pattern-2, witnesses: 2
@@
@@
- tp->snd_una = ack;
+ tcp_snd_una_update(tp, ack);
