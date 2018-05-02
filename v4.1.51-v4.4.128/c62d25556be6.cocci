//# pattern-1, witnesses: 11
@@
expression E0;
expression E1;
@@
- mapping_gfp_mask(E0) & E1
+ mapping_gfp_constraint(E0, E1)
//# pattern-2, witnesses: 6
@@
expression E0;
@@
- GFP_KERNEL & mapping_gfp_mask(E0)
+ mapping_gfp_constraint(E0, GFP_KERNEL)
