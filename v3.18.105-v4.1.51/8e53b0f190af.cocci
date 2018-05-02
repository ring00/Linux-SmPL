//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier desc;
@@
- int gpiod_get_direction(const struct gpio_desc * desc)
+ int gpiod_get_direction(struct gpio_desc * desc)
 {
     <...
- E0->flags
+ desc->flags
     ...>
 }
