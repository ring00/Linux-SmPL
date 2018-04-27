//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier l4proto;
identifier net;
identifier num_proto;
identifier r0.fn;
@@
- void fn(struct net * net, struct nf_conntrack_l4proto ** l4proto, unsigned int num_proto)
+ void fn(struct net * net, struct nf_conntrack_l4proto *const * l4proto, unsigned int num_proto)
 { ... }
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier l4proto;
identifier r1.fn;
@@
- void fn(struct nf_conntrack_l4proto * l4proto)
+ void fn(const struct nf_conntrack_l4proto * l4proto)
 { ... }
//# pattern-10, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier l4proto;
identifier net;
identifier r2.fn;
@@
- int fn(struct net * net, struct nf_conntrack_l4proto * l4proto)
+ int fn(struct net * net, const struct nf_conntrack_l4proto * l4proto)
 { ... }
