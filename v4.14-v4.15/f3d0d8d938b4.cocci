//# pattern-1, witnesses: 5
@@
expression IL1;
expression ME0;
identifier dev;
identifier plat;
@@
 int gpio_nand_get_config_of(const struct device * dev, struct gpio_nand_platdata * plat)
 {
     <...
- ME0 = of_get_gpio(dev->of_node, IL1);
     ...>
 }
