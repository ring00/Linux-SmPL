//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct clk_ops i = {
    .recalc_rate = fn,
};
@@
expression E1;
expression E2;
expression V0;
identifier hw;
identifier parent_rate;
identifier r0.fn;
@@
 unsigned long fn(struct clk_hw * hw, unsigned long parent_rate)
 {
     <...
- divider_recalc_rate(hw, parent_rate, V0, E1, E2)
+ divider_recalc_rate(hw, parent_rate, V0, E1, E2, divider->width)
     ...>
 }
