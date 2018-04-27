//# pattern-1, witnesses: 21
@@
expression E0;
expression E1;
@@
- E0 & mapping_gfp_mask(E1)
+ mapping_gfp_constraint(E1, E0)
