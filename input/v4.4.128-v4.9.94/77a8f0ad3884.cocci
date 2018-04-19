//# pattern-4, witnesses: 3
@@
@@
- encoder->pdata
+ encoder
//# pattern-8, witnesses: 2
@@
expression ME0;
@@
- enum of_gpio_flags flags = flags;
- ME0 = flags & OF_GPIO_ACTIVE_LOW;
//# pattern-9, witnesses: 2
@@
expression IL1;
expression ME0;
@@
- enum of_gpio_flags flags = flags;
- ME0 = of_get_gpio_flags(np, IL1, &flags);
