//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier input_table;
identifier net;
identifier ops;
@@
- struct ebt_table * ebt_register_table(struct net * net, const struct ebt_table * input_table, const struct nf_hook_ops * ops)
+ int ebt_register_table(struct net * net, const struct ebt_table * input_table, const struct nf_hook_ops * ops, struct ebt_table ** res)
 {
     <...
- return ERR_PTR(E0);
+ return E0;
     ...>
 }
