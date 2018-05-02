//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
@@
- thermal_zone_bind_cooling_device(E0, E1, cdev, THERMAL_NO_LIMIT, THERMAL_NO_LIMIT)
+ thermal_zone_bind_cooling_device(E0, E1, cdev, THERMAL_NO_LIMIT, THERMAL_NO_LIMIT, THERMAL_WEIGHT_DEFAULT)
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- __bind(E0, tzp->tbp[i].trip_mask, E1, tzp->tbp[i].binding_limits)
+ __bind(E0, tzp->tbp[i].trip_mask, E1, tzp->tbp[i].binding_limits, tzp->tbp[i].weight)
