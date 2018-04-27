//# pattern-1, witnesses: 3
@r0@
identifier i, fn;
@@
struct proto_ops i = {
    .accept = fn,
};
@@
typedef bool;
identifier flags;
identifier newsock;
identifier r0.fn;
identifier sock;
@@
- int fn(struct socket * sock, struct socket * newsock, int flags)
+ int fn(struct socket * sock, struct socket * newsock, int flags, bool kern)
 { ... }
//# pattern-3, witnesses: 3
@@
expression V0;
@@
- sock->ops->accept(sock, V0, O_NONBLOCK)
+ sock->ops->accept(sock, V0, O_NONBLOCK, false)
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct proto_ops i = {
    .accept = fn,
};
@@
typedef bool;
identifier flags;
identifier kern;
identifier newsock;
identifier r1.fn;
identifier sock;
@@
 int fn(struct socket * sock, struct socket * newsock, int flags, bool kern)
 { ... }
//# pattern-8, witnesses: 2
@r2@
identifier i, fn;
@@
struct proto_ops i = {
    .accept = fn,
};
@@
expression ME0;
typedef bool;
identifier flags;
identifier kern;
identifier newsock;
identifier r2.fn;
identifier sock;
@@
 int fn(struct socket * sock, struct socket * newsock, int flags, bool kern)
 {
     <...
- af_alg_accept(ME0, newsock)
+ af_alg_accept(ME0, newsock, kern)
     ...>
 }
//# pattern-10, witnesses: 2
@r3@
identifier i, fn;
@@
struct proto_ops i = {
    .accept = fn,
};
@@
expression E1;
expression F0;
typedef bool;
identifier flags;
identifier kern;
identifier newsock;
identifier r3.fn;
identifier sock;
@@
 int fn(struct socket * sock, struct socket * newsock, int flags, bool kern)
 {
     <...
- F0(sock_net(sk), newsock, E1, 0)
+ F0(sock_net(sk), newsock, E1, kern)
     ...>
 }
