//# pattern-3, witnesses: 5
@@
expression E1;
expression ME0;
@@
- ME0(host->dev, E1)
+ ME0(host->dev)
//# pattern-2, witnesses: 2
@@
expression ME0;
identifier dev;
identifier fn;
@@
- int fn(struct device * dev)
+ int fn(struct device * dev)
 {
     <...
- ME0(dev, host->slot_id)
+ ME0(dev)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E1;
expression IL0;
identifier host;
identifier vdd;
@@
 int omap_hsmmc_switch_opcond(struct omap_hsmmc_host * host, int vdd)
 {
     <...
- host->pdata->set_power(host->dev, host->slot_id, IL0, E1)
+ host->pdata->set_power(host->dev, IL0, E1)
     ...>
 }
