//# pattern-1, witnesses: 2
@@
identifier gpio_range;
identifier owner;
identifier pctldev;
identifier pin;
@@
 int pin_request(struct pinctrl_dev * pctldev, int pin, const char * owner, struct pinctrl_gpio_range * gpio_range)
 {
     <...
- pctldev->desc
+ ops
     ...>
 }
