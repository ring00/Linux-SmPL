//# pattern-1, witnesses: 4
@@
@@
- ret = mmc_gpio_alloc(host);
- if (ret < 0) {
- return ret;
- }
//# pattern-2, witnesses: 4
@@
@@
- ctx = host->slot.handler_priv;
//# pattern-3, witnesses: 2
@@
@@
- &host->slot.lock;
