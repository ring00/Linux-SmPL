//# pattern-1, witnesses: 3
@@
@@
- struct wm97xx_pdata * wmdata = bat_ps->dev.parent->platform_data;
- struct wm97xx_batt_pdata * pdata = wmdata->batt_pdata;
+ struct wm97xx_batt_pdata * pdata = power_supply_get_drvdata(bat_ps);
