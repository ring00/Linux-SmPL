//# pattern-6, witnesses: 2
@@
expression V0;
expression V1;
identifier fn;
identifier trend;
identifier trip;
identifier tz;
@@
 int fn(struct thermal_zone_device * tz, int trip, enum thermal_trend * trend)
 {
     <...
- long  = V0;
- if (V1 > 0) {
- *trend = THERMAL_TREND_RAISING;
- }
     ...>
 }
