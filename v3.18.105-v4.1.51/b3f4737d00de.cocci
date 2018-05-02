//# pattern-1, witnesses: 8
@@
expression E2;
expression E3;
expression IL1;
expression V0;
@@
- sensor_hub_input_attr_get_raw_value(V0->common_attributes.hsdev, IL1, E2, E3)
+ sensor_hub_input_attr_get_raw_value(V0->common_attributes.hsdev, IL1, E2, E3, SENSOR_HUB_SYNC)
