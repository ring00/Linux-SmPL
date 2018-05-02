//# pattern-4, witnesses: 7
@r0@
identifier i, fn;
@@
struct proto_ops i = {
    .recvmsg = fn,
};
@@
identifier flags;
identifier len;
identifier msg;
identifier r0.fn;
identifier sock;
identifier unused;
@@
- int fn(struct kiocb * unused, struct socket * sock, struct msghdr * msg, size_t len, int flags)
+ int fn(struct socket * sock, struct msghdr * msg, size_t len, int flags)
 { ... }
//# pattern-1, witnesses: 6
@r1@
identifier i, fn;
@@
struct proto_ops i = {
    .sendmsg = fn,
};
@@
identifier iocb;
identifier len;
identifier msg;
identifier r1.fn;
identifier sock;
@@
- int fn(struct kiocb * iocb, struct socket * sock, struct msghdr * msg, size_t len)
+ int fn(struct socket * sock, struct msghdr * msg, size_t len)
 { ... }
//# pattern-6, witnesses: 6
@r2@
identifier i, fn;
@@
struct proto_ops i = {
    .sendmsg = fn,
};
@@
identifier len;
identifier msg;
identifier r2.fn;
identifier sock;
@@
 int fn(struct socket * sock, struct msghdr * msg, size_t len)
 { ... }
//# pattern-5, witnesses: 4
@r3@
identifier i, fn;
@@
struct proto_ops i = {
    .recvmsg = fn,
};
@@
identifier flags;
identifier msg;
identifier r3.fn;
identifier size;
identifier sock;
@@
 int fn(struct socket * sock, struct msghdr * msg, size_t size, int flags)
 { ... }
//# pattern-3, witnesses: 2
@r4@
identifier i, fn;
@@
struct proto_ops i = {
    .recvmsg = fn,
};
@@
identifier flags;
identifier msg;
identifier r4.fn;
identifier size;
identifier sock;
@@
 int fn(struct socket * sock, struct msghdr * msg, size_t size, int flags)
 {
     <...
- bt_sock_stream_recvmsg(iocb, sock, msg, size, flags)
+ bt_sock_stream_recvmsg(sock, msg, size, flags)
     ...>
 }
//# pattern-7, witnesses: 2
@@
expression E0;
@@
- sock->ops->recvmsg(NULL, sock, &msg, E0, MSG_DONTWAIT | MSG_TRUNC)
+ sock->ops->recvmsg(sock, &msg, E0, MSG_DONTWAIT | MSG_TRUNC)
//# pattern-9, witnesses: 2
@r5@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier flags;
identifier msg;
identifier r5.fn;
identifier size;
identifier sock;
@@
 int fn(struct socket * sock, struct msghdr * msg, size_t size, int flags)
 { ... }
