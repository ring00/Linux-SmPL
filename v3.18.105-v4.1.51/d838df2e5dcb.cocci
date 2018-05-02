//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression EC0;
identifier buf_type;
identifier iov;
identifier iov_size;
identifier qpair;
identifier r0.fn;
@@
- ssize_t fn(struct vmci_qp * qpair, void * iov, size_t iov_size, int buf_type)
+ ssize_t fn(struct vmci_qp * qpair, struct msghdr * msg, size_t iov_size, int buf_type)
 {
     <...
- qp_dequeue_locked(qpair->produce_q, qpair->consume_q, qpair->consume_q_size, iov, iov_size, qp_memcpy_from_queue_iov, EC0)
+ qp_dequeue_locked(qpair->produce_q, qpair->consume_q, qpair->consume_q_size, msg, iov_size, qp_memcpy_from_queue_iov, EC0)
     ...>
 }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct vsock_transport i = {
    .stream_dequeue = fn,
};
@@
identifier flags;
identifier len;
identifier msg;
identifier vsk;
@@
 ssize_t vmci_transport_stream_dequeue(struct vsock_sock * vsk, struct msghdr * msg, size_t len, int flags)
 {
     <...
- msg->msg_iov
+ msg
     ...>
 }
