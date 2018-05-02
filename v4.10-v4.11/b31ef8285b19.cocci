//# pattern-9, witnesses: 3
@@
@@
- release_idr(&thermal_tz_idr, &thermal_idr_lock, tz->id)
+ ida_simple_remove(&thermal_tz_ida, tz->id)
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0->idr
+ E0->ida
//# pattern-3, witnesses: 2
@@
@@
- release_idr(&thermal_cdev_idr, &thermal_idr_lock, cdev->id)
+ ida_simple_remove(&thermal_cdev_ida, cdev->id)
