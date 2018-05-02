//# pattern-2, witnesses: 5
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier hw;
identifier r0.fn;
@@
- unsigned long fn(struct clk_hw * hw)
+ unsigned long fn(const struct clk_hw * hw)
 { ... }
