//# pattern-4, witnesses: 3
@@
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- genpd_start_dev(genpd, dev, false)
+ genpd_start_dev(genpd, dev)
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier dev;
identifier fn;
@@
 int fn(struct device * dev)
 {
     <...
- genpd_stop_dev(genpd, dev, false)
+ genpd_stop_dev(genpd, dev)
     ...>
 }
