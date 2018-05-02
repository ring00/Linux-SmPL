//# pattern-2, witnesses: 2
@@
identifier fn;
identifier p;
identifier rx_buf;
@@
 int fn(struct sh_msiof_spi_priv * p, void * rx_buf)
 {
     <...
- int ret = ret;
- if (!ret) {
- }
+ bool slave = spi_controller_is_slave(p->master);
+ int ret = 0;
+ if (!slave) {
+ }
+ if (!ret && !slave) {
+ }
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression S0;
@@
- dev_err(&p->pdev->dev, S0);
//# pattern-6, witnesses: 2
@@
@@
- ret = -ETIMEDOUT;
