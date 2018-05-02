//# pattern-7, witnesses: 2
@@
@@
- if (gpio_is_valid(sensor->hwcfg->xshutdown)) {
- gpio_set_value(sensor->hwcfg->xshutdown, 0);
- }
+ gpiod_set_value(sensor->xshutdown, 0);
