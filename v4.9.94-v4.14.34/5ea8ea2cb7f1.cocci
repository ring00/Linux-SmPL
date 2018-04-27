//# pattern-1, witnesses: 3
@@
statement S0;
@@
- if (sk_acceptq_is_full(sk) && inet_csk_reqsk_queue_young(sk) > 1) { S0 }
+ if (sk_acceptq_is_full(sk)) { S0 }
