//# pattern-2, witnesses: 5
@@
expression E2;
expression V0;
expression V1;
@@
- struct iov_iter  = V0;
- iov_iter_init(&V1, E2, m->msg_iov, m->msg_iovlen, total_len);
//# pattern-6, witnesses: 5
@@
@@
- msg->msg_iov
+ msg->msg_iter.iov
