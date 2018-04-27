//# pattern-2, witnesses: 6
@@
@@
- &queue->fastopenq->lock
+ &queue->fastopenq.lock
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0->icsk_accept_queue.fastopenq
+ &E0->icsk_accept_queue.fastopenq
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- queue->fastopenq->rskq_rst_head = E0
+ queue->fastopenq.rskq_rst_head = E0
