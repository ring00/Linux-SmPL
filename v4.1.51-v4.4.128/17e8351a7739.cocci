//# pattern-5, witnesses: 5
@@
identifier fn;
identifier temperature;
identifier thermal;
@@
- int fn(struct thermal_zone_device * thermal, unsigned long * temperature)
+ int fn(struct thermal_zone_device * thermal, int * temperature)
 { ... }
//# pattern-3, witnesses: 2
@@
identifier dev;
identifier fn;
identifier temp;
@@
- int fn(void * dev, long * temp)
+ int fn(void * dev, int * temp)
 { ... }
//# pattern-4, witnesses: 2
@@
identifier fn;
identifier temp;
identifier thermal;
identifier trip;
@@
- int fn(struct thermal_zone_device * thermal, int trip, unsigned long * temp)
+ int fn(struct thermal_zone_device * thermal, int trip, int * temp)
 { ... }
//# pattern-11, witnesses: 2
@r0@
identifier i, fn;
@@
struct thermal_zone_of_device_ops i = {
    .get_temp = fn,
};
@@
identifier dev;
identifier r0.fn;
identifier temp;
@@
 int fn(void * dev, int * temp)
 { ... }
//# pattern-12, witnesses: 2
@r1@
identifier i, fn;
@@
struct thermal_zone_device_ops i = {
    .get_temp = fn,
};
@@
identifier r1.fn;
identifier temp;
identifier thermal;
@@
 int fn(struct thermal_zone_device * thermal, int * temp)
 { ... }
