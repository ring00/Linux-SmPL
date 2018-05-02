//# pattern-1, witnesses: 9
@r0@
identifier i, fn;
@@
struct watchdog_ops i = {
    .restart = fn,
};
@@
identifier r0.fn;
identifier wdog;
@@
- int fn(struct watchdog_device * wdog)
+ int fn(struct watchdog_device * wdog, unsigned long action, void * data)
 { ... }
//# pattern-3, witnesses: 3
@r1@
identifier i, fn;
@@
struct watchdog_ops i = {
    .restart = fn,
};
@@
identifier action;
identifier data;
identifier r1.fn;
identifier wdt_dev;
@@
 int fn(struct watchdog_device * wdt_dev, unsigned long action, void * data)
 { ... }
