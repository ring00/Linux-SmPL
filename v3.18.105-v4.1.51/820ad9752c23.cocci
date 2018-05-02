//# pattern-3, witnesses: 3
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier dev;
identifier flags;
identifier gpiod;
identifier name;
identifier parent_name;
@@
- struct clk * clk_register_gpio_gate(struct device * dev, const char * name, const char * parent_name, struct gpio_desc * gpiod, unsigned long flags)
+ struct clk * clk_register_gpio_gate(struct device * dev, const char * name, const char * parent_name, unsigned int gpio, bool active_low, unsigned long flags)
 {
     <...
- desc_to_gpio(gpiod)
+ gpio
     ...>
 }
