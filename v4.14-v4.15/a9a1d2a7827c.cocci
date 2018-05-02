//# pattern-2, witnesses: 13
@@
expression list listE0;
@@
- pinctrl_free_gpio(listE0)
+ pinctrl_gpio_free(listE0)
//# pattern-1, witnesses: 12
@@
expression list listE0;
@@
- pinctrl_request_gpio(listE0)
+ pinctrl_gpio_request(listE0)
