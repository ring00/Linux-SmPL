//# pattern-1, witnesses: 4
@@
expression E0;
expression E1;
expression E3;
expression ME2;
@@
- vb2_dvb_register_bus(&E0, THIS_MODULE, E1, &ME2->dev, adapter_nr, E3)
+ vb2_dvb_register_bus(&E0, THIS_MODULE, E1, &ME2->dev, NULL, adapter_nr, E3)
