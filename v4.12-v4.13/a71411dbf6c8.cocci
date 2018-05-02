//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression IL2;
expression ME0;
expression ME1;
expression ME3;
identifier chip;
identifier data;
identifier irq;
identifier irq_base;
identifier irq_flags;
identifier map;
@@
 int regmap_add_irq_chip(struct regmap * map, int irq, int irq_flags, int irq_base, const struct regmap_irq_chip * chip, struct regmap_irq_chip_data ** data)
 {
     <...
- if (ME0) {
- ret = regmap_update_bits(map, reg, ME1[i], IL2);
- }
+ if (ME0) {
+ ret = regmap_irq_update_bits(d, reg, ME3[i], IL2);
+ }
     ...>
 }
