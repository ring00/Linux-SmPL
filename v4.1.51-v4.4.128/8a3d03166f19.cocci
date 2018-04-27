//# pattern-8, witnesses: 2
@r0@
identifier i, fn;
@@
struct notifier_block i = {
    .notifier_call = fn,
};
@@
expression IL0;
identifier event;
identifier ptr;
identifier r0.fn;
identifier this;
@@
 int fn(struct notifier_block * this, unsigned long event, void * ptr)
 {
     <...
- fib_disable_ip(dev, IL0)
+ fib_disable_ip(dev, event)
     ...>
 }
