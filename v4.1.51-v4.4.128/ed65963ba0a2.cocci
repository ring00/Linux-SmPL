//# pattern-3, witnesses: 3
@@
expression V0;
@@
- V0->vif.type
+ V0->wpan_dev.iftype
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0->vif_data_size = sizeof(unsigned long);
//# pattern-2, witnesses: 2
@@
@@
- sdata->vif.type
+ wpan_dev->iftype
