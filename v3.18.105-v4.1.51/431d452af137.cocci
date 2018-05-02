//# pattern-1, witnesses: 3
@@
statement S0;
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- if (pm_async_enabled && dev->power.async_suspend) { S0 }
+ if (is_async(dev)) { S0 }
     ...>
 }
