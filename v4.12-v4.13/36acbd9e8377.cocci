//# pattern-1, witnesses: 2
@@
expression E0;
@@
- if (host->pdata->set_power) {
- return E0;
- }
//# pattern-2, witnesses: 2
@@
expression ME0;
expression ME1;
identifier host;
identifier power_on;
identifier vdd;
@@
 int omap_hsmmc_set_power(struct omap_hsmmc_host * host, int power_on, int vdd)
 {
     <...
- if (ME0) {
- ME1(host->dev, power_on, vdd);
- }
     ...>
 }
