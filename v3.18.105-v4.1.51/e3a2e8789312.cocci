//# pattern-2, witnesses: 6
@@
expression list listE0;
@@
- gpio_unlock_as_irq(listE0)
+ gpiochip_unlock_as_irq(listE0)
//# pattern-1, witnesses: 5
@@
expression list listE0;
@@
- gpio_lock_as_irq(listE0)
+ gpiochip_lock_as_irq(listE0)
