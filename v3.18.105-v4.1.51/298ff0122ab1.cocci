//# pattern-1, witnesses: 2
@@
statement S0;
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- if (device_may_wakeup(dev)) { S0 }
+ if (rtc_data->irq && device_may_wakeup(dev)) { S0 }
     ...>
 }
