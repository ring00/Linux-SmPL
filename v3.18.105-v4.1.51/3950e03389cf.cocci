//# pattern-4, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
expression ME1;
identifier r0.fn;
identifier st;
identifier val1;
identifier val2;
@@
 int fn(struct hid_sensor_common * st, int val1, int val2)
 {
     <...
- sensor_hub_set_feature(st->hsdev, ME0.report_id, ME1.index, value)
+ sensor_hub_set_feature(st->hsdev, ME0.report_id, ME1.index, sizeof(unsigned long), &value)
     ...>
 }
