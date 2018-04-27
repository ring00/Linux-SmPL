//# pattern-1, witnesses: 4
@@
expression E1;
expression IL0;
@@
- iov_iter_init(&msg->msg_iter, WRITE, iov, IL0, E1)
+ iov_iter_kvec(&msg->msg_iter, WRITE | ITER_KVEC, iov, IL0, E1)
