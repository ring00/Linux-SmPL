//# pattern-1, witnesses: 8
@@
expression E0;
@@
- zynq_gpio_get_bank_pin(E0, &bank_num, &bank_pin_num)
+ zynq_gpio_get_bank_pin(E0, &bank_num, &bank_pin_num, gpio)
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- E0 < ZYNQ_GPIO_MAX_BANK
+ E0 < gpio->p_data->max_bank
