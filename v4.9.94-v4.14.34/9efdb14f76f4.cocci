//# pattern-3, witnesses: 4
@@
expression E0;
@@
- IP_NF_ASSERT(E0)
+ WARN_ON(!E0)
//# pattern-1, witnesses: 3
@@
@@
- BUGPRINT;
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier r0.fn;
identifier skb;
identifier state;
identifier table;
@@
 unsigned int fn(struct sk_buff * skb, const struct nf_hook_state * state, struct xt_table * table)
 {
     <...
- IP_NF_ASSERT(table->valid_hooks & 1 << hook)
+ WARN_ON(!table->valid_hooks & 1 << hook)
     ...>
 }
