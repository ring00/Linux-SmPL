//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (test_bit(MPATHF_BIO_BASED, &m->flags)) { S0 }
+ if (m->queue_mode == DM_TYPE_BIO_BASED) { S0 }
