//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (pdata->f30_data && pdata->f30_data->disable) { S0 }
+ if (pdata->f30_data.disable) { S0 }
//# pattern-2, witnesses: 2
@@
expression V0;
@@
- if (pdata->sensor_pdata) {
- V0->sensor_pdata = *pdata->sensor_pdata;
- }
+ V0->sensor_pdata = pdata->sensor_pdata;
