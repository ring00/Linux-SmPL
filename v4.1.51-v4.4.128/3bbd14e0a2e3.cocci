//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier net;
identifier r0.fn;
identifier reg;
@@
 int fn(struct net * net, const struct nf_hook_ops * reg)
 {
     <...
- struct list_head * nf_hook_list = nf_hook_list;
- nf_hook_list = find_nf_hook_list(net, reg);
+ struct list_head * hook_list = hook_list;
+ hook_list = nf_find_hook_list(net, reg);
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier net;
identifier r1.fn;
identifier reg;
@@
 int fn(struct net * net, const struct nf_hook_ops * reg)
 {
     <...
- struct list_head * nf_hook_list = nf_hook_list;
- nf_hook_list = find_nf_hook_list(net, reg);
- if (!nf_hook_list) {
- }
+ struct list_head * hook_list = hook_list;
+ hook_list = nf_find_hook_list(net, reg);
+ if (!hook_list) {
+ }
     ...>
 }
