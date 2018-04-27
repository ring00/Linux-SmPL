//# pattern-4, witnesses: 3
@@
identifier queue;
@@
 void reqsk_queue_destroy(struct request_sock_queue * queue)
 {
     <...
- listen_sock_qlen(lopt)
+ reqsk_queue_len(queue)
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- atomic_inc(listE0)
+ atomic_dec(listE0)
