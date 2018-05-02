//# pattern-6, witnesses: 2
@@
expression ME0;
expression ME1;
@@
- regmap_write(chip->regmap, MT6397_INT_CON0, ME0[0]);
- regmap_write(chip->regmap, MT6397_INT_CON1, ME1[1]);
+ regmap_write(chip->regmap, chip->int_con[0], ME0[0]);
+ regmap_write(chip->regmap, chip->int_con[1], ME1[1]);
