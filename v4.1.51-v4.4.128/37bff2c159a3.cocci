//# pattern-1, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
of_gpio_clk_setup(P0, P1, fn)
@@
identifier active_low;
typedef bool;
identifier gpio;
identifier name;
identifier num_parents;
identifier parent_names;
identifier r0.fn;
typedef u8;
@@
- struct clk * fn(const char * name, const char ** parent_names, u8 num_parents, unsigned int gpio, bool active_low)
+ struct clk * fn(const char * name, const char *const * parent_names, u8 num_parents, unsigned int gpio, bool active_low)
 { ... }
