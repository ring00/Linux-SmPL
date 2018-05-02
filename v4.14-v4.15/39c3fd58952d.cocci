//# pattern-3, witnesses: 2
@@
expression E0;
@@
- irq_set_lockdep_class(E0, &irq_nested_lock_class)
+ irq_set_lockdep_class(E0, &irq_nested_lock_class, &irq_nested_request_class)
//# pattern-4, witnesses: 2
@@
@@
- irq_set_lockdep_class(irq, &gpio_lock_class)
+ irq_set_lockdep_class(irq, &gpio_lock_class, &gpio_request_class)
