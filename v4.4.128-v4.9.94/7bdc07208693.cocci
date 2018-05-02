//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0 && dp->plat_data->dev_type == RK3288_DP
+ E0 && is_rockchip(dp->plat_data->dev_type)
