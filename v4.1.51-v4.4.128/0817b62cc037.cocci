//# pattern-19, witnesses: 2
@r0@
identifier i, fn;
@@
struct clk_ops i = {
    .determine_rate = fn,
};
@@
identifier best_parent_clk;
identifier best_parent_rate;
identifier hw;
identifier max_rate;
identifier min_rate;
identifier r0.fn;
identifier rate;
@@
- long fn(struct clk_hw * hw, unsigned long rate, unsigned long min_rate, unsigned long max_rate, unsigned long * best_parent_rate, struct clk_hw ** best_parent_clk)
+ int fn(struct clk_hw * hw, struct clk_rate_request * req)
 {
     <...
- __clk_round_rate(parent, rate)
+ __clk_round_rate(parent, req->rate)
     ...>
 }
//# pattern-56, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier hw;
identifier r2.fn;
identifier req;
@@
 int fn(struct clk_hw * hw, struct clk_rate_request * req)
 {
     <...
- clk_mux_determine_rate_flags(hw, rate, min_rate, max_rate, best_parent_rate, best_parent_p, E0)
+ clk_mux_determine_rate_flags(hw, req, E0)
     ...>
 }
//# pattern-64, witnesses: 2
@@
expression E0;
identifier fn;
identifier hw;
identifier req;
@@
 int fn(struct clk_hw * hw, struct clk_rate_request * req)
 {
     <...
- _freq_tbl_determine_rate(hw, rcg->freq_tbl, rate, min_rate, max_rate, p_rate, p, E0->parent_map)
+ _freq_tbl_determine_rate(hw, rcg->freq_tbl, req, E0->parent_map)
     ...>
 }
