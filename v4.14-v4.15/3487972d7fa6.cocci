//# pattern-1, witnesses: 2
@@
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- dev->power.direct_complete = true;
+ dev_pm_skip_next_resume_phases(dev);
     ...>
 }
