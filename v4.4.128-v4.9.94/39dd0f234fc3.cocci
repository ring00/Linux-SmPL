//# pattern-1, witnesses: 10
@@
expression E0;
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- return ;
+ return E0;
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression E0;
statement S1;
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- if (genpd->suspend_power_off || E0) { S1 }
+ if (dev->power.wakeup_path && genpd_dev_active_wakeup(genpd, dev)) { S1 }
     ...>
 }
