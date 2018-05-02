//# pattern-2, witnesses: 5
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier new_driver;
identifier owner;
@@
 int phy_driver_register(struct phy_driver * new_driver, struct module * owner)
 {
     <...
- new_driver->driver
+ new_driver->mdiodrv.driver
     ...>
 }
