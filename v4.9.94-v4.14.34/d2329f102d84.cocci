//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
identifier PV2;
@@
- tcp_rack_advance(tp, sacked, E0, E1, &PV2->ack_time)
+ tcp_rack_advance(tp, sacked, E0, E1)
