//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct netlink_kernel_cfg i = {
    .bind = fn,
};
@@
identifier group;
identifier r0.fn;
@@
- int fn(int group)
+ int fn(struct net * net, int group)
 { ... }
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- netlink_undo_bind(E0, groups, nlk)
+ netlink_undo_bind(E0, groups, sk)
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- nlk->netlink_unbind(E0)
+ nlk->netlink_unbind(sock_net(sk), E0)
