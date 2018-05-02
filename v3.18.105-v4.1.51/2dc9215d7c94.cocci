//# pattern-2, witnesses: 10
@@
expression E0;
expression E1;
@@
- power_supply_register(&E0->dev, E1)
+ power_supply_register(&E0->dev, E1, NULL)
//# pattern-1, witnesses: 5
@@
expression E0;
expression ME1;
@@
- power_supply_register(E0, &ME1)
+ power_supply_register(E0, &ME1, &psy_cfg)
