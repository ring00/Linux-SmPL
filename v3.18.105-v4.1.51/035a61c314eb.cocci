//# pattern-12, witnesses: 3
@@
expression list listE0;
@@
- clk_disable(listE0)
+ clk_core_disable(listE0)
//# pattern-17, witnesses: 3
@@
identifier clk;
identifier fn;
@@
 void fn(struct clk * clk)
 { ... }
//# pattern-18, witnesses: 3
@@
expression list listE0;
@@
- __clk_get_rate(listE0)
+ clk_core_get_rate_nolock(listE0)
//# pattern-24, witnesses: 3
@@
expression E0;
@@
- E0->clk
+ E0->core
//# pattern-40, witnesses: 3
@@
expression list listE0;
@@
- __clk_lookup(listE0)
+ clk_core_lookup(listE0)
//# pattern-47, witnesses: 3
@@
expression list listE0;
@@
- clk_prepare_lock(listE0);
//# pattern-15, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clk;
identifier degrees;
@@
- int clk_set_phase(struct clk * clk, int degrees)
+ int clk_set_phase(struct clk * clk, int degrees)
 {
     <...
- clk->ops
+ clk->core->ops
     ...>
 }
//# pattern-19, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clk;
identifier nb;
identifier r1.fn;
@@
 int fn(struct clk * clk, struct notifier_block * nb)
 {
     <...
- clk->notifier_count
+ clk->core->notifier_count
     ...>
 }
//# pattern-21, witnesses: 2
@@
expression list listE0;
@@
- clk_enable(listE0)
+ clk_core_enable(listE0)
//# pattern-33, witnesses: 2
@@
expression list listE0;
@@
- __clk_round_rate(listE0)
+ clk_core_round_rate_nolock(listE0)
//# pattern-46, witnesses: 2
@@
expression list listE0;
@@
- clk_prepare_unlock(listE0);
//# pattern-61, witnesses: 2
@@
expression list listE0;
@@
- clk_get_rate(listE0)
+ clk_core_get_rate(listE0)
//# pattern-64, witnesses: 2
@@
expression list listE0;
@@
- __clk_unprepare(listE0)
+ clk_core_unprepare(listE0)
//# pattern-76, witnesses: 2
@@
expression list listE0;
@@
- __clk_reparent(listE0)
+ clk_core_reparent(listE0)
//# pattern-83, witnesses: 2
@@
expression list listE0;
@@
- clk_get_accuracy(listE0)
+ clk_core_get_accuracy(listE0)
//# pattern-86, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clk;
identifier parent;
@@
- int clk_set_parent(struct clk * clk, struct clk * parent)
+ int clk_set_parent(struct clk * clk, struct clk * parent)
 {
     <...
- int ret = 0;
- int p_index = 0;
- if (clk->flags & CLK_SET_PARENT_GATE && clk->prepare_count) {
- ret = -EBUSY;
- }
- if (parent) {
- p_index = clk_fetch_parent_index(clk, parent);
- p_rate = parent->rate;
- if (p_index < 0) {
- pr_debug(, , parent->name);
- ret = p_index;
- }
- }
- ret = __clk_speculate_rates(clk, p_rate);
     ...>
 }
//# pattern-103, witnesses: 2
@r3@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier clk;
@@
- void clk_unregister(struct clk * clk)
+ void clk_unregister(struct clk * clk)
 {
     <...
- clk->name
+ clk->core->name
     ...>
 }
//# pattern-111, witnesses: 2
@@
expression list listE0;
@@
- clk_get_phase(listE0)
+ clk_core_get_phase(listE0)
