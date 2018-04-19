//# pattern-3, witnesses: 4
@@
identifier s;
@@
- const struct reg_default [4] s = {
+ const struct reg_sequence [4] s = {
 };
//# pattern-18, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier map;
identifier num_regs;
identifier r0.fn;
identifier regs;
@@
- int fn(struct regmap * map, const struct reg_default * regs, int num_regs)
+ int fn(struct regmap * map, const struct reg_sequence * regs, int num_regs)
 { ... }
//# pattern-6, witnesses: 2
@@
identifier s;
@@
- const struct reg_default [9] s = {
+ const struct reg_sequence [9] s = {
 };
//# pattern-19, witnesses: 2
@@
identifier s;
@@
- const struct reg_default [7] s = {
+ const struct reg_sequence [7] s = {
 };
