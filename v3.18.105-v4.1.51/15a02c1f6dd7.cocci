//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct clk_ops i = {
    .determine_rate = fn,
};
@@
identifier best_parent_p;
identifier best_parent_rate;
identifier hw;
identifier rate;
@@
- long __clk_mux_determine_rate(struct clk_hw * hw, unsigned long rate, unsigned long * best_parent_rate, struct clk_hw ** best_parent_p)
+ long __clk_mux_determine_rate(struct clk_hw * hw, unsigned long rate, unsigned long * best_parent_rate, struct clk_hw ** best_parent_p)
 {
     <...
- struct clk * clk = hw->clk;
- int i = i;
- unsigned long parent_rate = parent_rate;
- if (clk->flags & CLK_SET_RATE_NO_REPARENT) {
- parent = clk->parent;
- if (clk->flags & CLK_SET_RATE_PARENT) {
- best = __clk_round_rate(parent, rate);
- }
- }
- num_parents = clk->num_parents;
     ...>
 }
