//# pattern-6, witnesses: 2
@r0@
identifier i, fn;
@@
struct fib_rules_ops i = {
    .action = fn,
};
@@
expression E2;
expression F1;
expression V0;
identifier arg;
identifier flags;
identifier flp;
identifier r0.fn;
identifier rule;
@@
 int fn(struct fib_rule * rule, struct flowi * flp, int flags, struct fib_lookup_arg * arg)
 {
     <...
- V0 = F1(E2, rule->table);
+ u32 tb_id = tb_id;
+ tb_id = fib_rule_get_table(rule, arg);
+ V0 = F1(E2, tb_id);
     ...>
 }
