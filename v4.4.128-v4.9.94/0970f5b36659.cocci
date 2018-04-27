//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->pending_data_ready
+ E0->data_ready_signalled
//# pattern-6, witnesses: 2
@@
@@
- sctp_sk(sk)
+ sp
