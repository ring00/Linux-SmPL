//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression ME0;
expression S1;
identifier driver;
identifier owner;
@@
 int i2c_register_driver(struct module * owner, struct i2c_driver * driver)
 {
     <...
- if (ME0) {
- printk(S1, driver->driver.name);
- }
     ...>
 }
