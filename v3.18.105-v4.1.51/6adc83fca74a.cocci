//# pattern-3, witnesses: 3
@@
expression ME0;
expression ME1;
@@
- sensor_hub_get_feature(st->hsdev, ME0.report_id, ME1.index, &value)
+ sensor_hub_get_feature(st->hsdev, ME0.report_id, ME1.index, sizeof(unsigned long), &value)
