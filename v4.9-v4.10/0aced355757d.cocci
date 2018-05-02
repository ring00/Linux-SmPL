//# pattern-1, witnesses: 4
@@
expression E1;
expression V0;
expression V2;
@@
- tps65218_reg_read(V0, E1, &V2)
+ regmap_read(V0->regmap, E1, &V2)
