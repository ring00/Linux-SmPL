//# pattern-3, witnesses: 11
@@
@@
- host->pdata
+ host
//# pattern-1, witnesses: 4
@@
identifier fn;
identifier host;
@@
 int fn(struct omap_hsmmc_host * host)
 {
     <...
- host->pdata
+ host
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression F0;
@@
- struct omap_hsmmc_platform_data * mmc = host->pdata;
- F0(mmc->card_detect_irq);
+ F0(host->card_detect_irq);
//# pattern-11, witnesses: 2
@@
identifier dev;
identifier fn;
@@
- int fn(struct device * dev)
+ int fn(struct device * dev)
 { ... }
