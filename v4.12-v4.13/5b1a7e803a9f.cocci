//# pattern-2, witnesses: 4
@@
expression ME0;
identifier PV1;
expression S2;
@@
- ME0 = device_property_read_bool(&PV1->dev, S2);
//# pattern-1, witnesses: 2
@@
expression E0;
expression E3;
expression E4;
expression E5;
identifier PV1;
identifier PV2;
@@
- mcp23s08_probe_one(E0, &PV1->dev, PV2, E3, E4, pdata, E5)
+ mcp23s08_probe_one(E0, &PV1->dev, PV2, E3, E4, pdata->base, E5)
