//# pattern-1, witnesses: 19
@@
@@
- iov_iter_count(&msg->msg_iter)
+ msg_data_left(msg)
//# pattern-3, witnesses: 2
@@
@@
- iov_iter_count(&msg.msg_iter)
+ msg_data_left(&msg)
