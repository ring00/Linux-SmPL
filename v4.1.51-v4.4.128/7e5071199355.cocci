//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
expression IL2;
@@
- tps6105x_mask_and_set(tps6105x, TPS6105X_REG_0, E0, E1 << IL2)
+ regmap_update_bits(tps6105x->regmap, TPS6105X_REG_0, E0, E1 << IL2)
//# pattern-3, witnesses: 3
@@
@@
- tps6105x_get(tps6105x, TPS6105X_REG_0, &regval)
+ regmap_read(tps6105x->regmap, TPS6105X_REG_0, &regval)
