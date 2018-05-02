//# pattern-3, witnesses: 2
@r0@
identifier fn;
expression P0, P2;
@@
of_clk_add_provider(P0, fn, P2)
@@
identifier _data;
typedef bool;
identifier clkspec;
typedef u8;
@@
- struct clk * of_clk_gpio_gate_delayed_register_get(struct of_phandle_args * clkspec, void * _data)
+ struct clk * of_clk_gpio_gate_delayed_register_get(const char * name, const char ** parent_names, u8 num_parents, unsigned int gpio, bool active_low)
 {
     <...
- struct clk_gpio_gate_delayed_register_data * data = _data;
- struct clk * clk = clk;
- clk = clk_register_gpio_gate(NULL, clk_name, parent_name, gpio, of_flags & OF_GPIO_ACTIVE_LOW, 0);
     ...>
 }
//# pattern-12, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier active_low;
typedef bool;
identifier dev;
identifier flags;
identifier gpio;
identifier name;
identifier parent_name;
@@
- struct clk * clk_register_gpio_gate(struct device * dev, const char * name, const char * parent_name, unsigned int gpio, bool active_low, unsigned long flags)
+ struct clk * clk_register_gpio_gate(struct device * dev, const char * name, const char * parent_name, unsigned int gpio, bool active_low, unsigned long flags)
 {
     <...
- struct clk_gpio * clk_gpio = NULL;
- if (dev) {
- clk_gpio = devm_kzalloc(dev, sizeof(unsigned long), GFP_KERNEL);
- }
     ...>
 }
//# pattern-15, witnesses: 2
@r2@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
identifier active_low;
typedef bool;
identifier dev;
identifier flags;
identifier gpio;
identifier name;
identifier parent_name;
@@
 struct clk * clk_register_gpio_gate(struct device * dev, const char * name, const char * parent_name, unsigned int gpio, bool active_low, unsigned long flags)
 {
     <...
- struct clk_init_data init = ;
- ME0 = ;
     ...>
 }
//# pattern-16, witnesses: 2
@r3@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E1;
expression ME0;
identifier active_low;
typedef bool;
identifier dev;
identifier flags;
identifier gpio;
identifier name;
identifier parent_name;
@@
 struct clk * clk_register_gpio_gate(struct device * dev, const char * name, const char * parent_name, unsigned int gpio, bool active_low, unsigned long flags)
 {
     <...
- struct clk_init_data init = ;
- ME0 = E1;
     ...>
 }
//# pattern-23, witnesses: 2
@@
@@
- struct clk_gpio_gate_delayed_register_data * data = data;
- data = kzalloc(sizeof(unsigned long), GFP_KERNEL);
