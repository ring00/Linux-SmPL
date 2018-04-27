//# pattern-1, witnesses: 6
@@
expression E1;
expression IL0;
expression V2;
identifier fn;
identifier kern;
identifier net;
identifier protocol;
identifier sock;
@@
 int fn(struct net * net, struct socket * sock, int protocol, int kern)
 {
     <...
- sk_alloc(net, IL0, E1, &V2)
+ sk_alloc(net, IL0, E1, &V2, kern)
     ...>
 }
//# pattern-5, witnesses: 4
@@
expression E0;
expression E2;
expression E3;
expression IL1;
@@
- sk_alloc(E0, IL1, E2, E3)
+ sk_alloc(E0, IL1, E2, E3, 0)
//# pattern-10, witnesses: 2
@r0@
identifier i, fn;
@@
struct net_proto_family i = {
    .create = fn,
};
@@
expression IL0;
identifier kern;
identifier net;
identifier protocol;
identifier r0.fn;
identifier sock;
@@
 int fn(struct net * net, struct socket * sock, int protocol, int kern)
 {
     <...
- vcc_create(net, sock, protocol, IL0)
+ vcc_create(net, sock, protocol, IL0, kern)
     ...>
 }
