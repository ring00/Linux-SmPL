//# pattern-5, witnesses: 9
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier attr_usage_id;
identifier hsdev;
identifier report_id;
typedef u32;
identifier usage_id;
@@
 int sensor_hub_input_attr_get_raw_value(struct hid_sensor_hub_device * hsdev, u32 usage_id, u32 attr_usage_id, u32 report_id)
 {
     <...
- data->pending
+ hsdev->pending
     ...>
 }
