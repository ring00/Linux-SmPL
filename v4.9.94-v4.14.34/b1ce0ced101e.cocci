//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct nft_expr_ops i = {
    .init = fn,
};
@@
expression EC0;
expression ME1;
identifier ctx;
identifier expr;
identifier tb;
@@
 int nft_counter_init(const struct nft_ctx * ctx, const struct nft_expr * expr, const struct nlattr *const * tb)
 {
     <...
- struct nft_counter_percpu * this_cpu = this_cpu;
- this_cpu = this_cpu_ptr;
- if (tb[EC0]) {
- ME1 = ;
- }
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- struct nft_counter_percpu * cpu_stats = cpu_stats;
- cpu_stats = netdev_alloc_pcpu_stats;
