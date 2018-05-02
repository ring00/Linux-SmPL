//# pattern-1, witnesses: 40
@@
expression E0;
expression E1;
@@
- E0->job_done(E1)
+ fc_bsg_jobdone(E1, bsg_reply->result, bsg_reply->reply_payload_rcv_len)
//# pattern-3, witnesses: 3
@@
@@
- fc_bsg_jobdone(job)
+ fc_bsg_jobdone(job, bsg_reply->result, bsg_reply->reply_payload_rcv_len)
