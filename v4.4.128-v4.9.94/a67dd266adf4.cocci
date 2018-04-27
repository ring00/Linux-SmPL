//# pattern-21, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier net;
identifier r0.fn;
identifier table;
@@
- void fn(struct net * net, struct xt_table * table)
+ void fn(struct net * net, struct xt_table * table, const struct nf_hook_ops * ops)
 { ... }
