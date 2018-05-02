//# pattern-2, witnesses: 9
@@
expression E0;
expression E2;
expression F3;
expression V1;
@@
- gpiochip_irqchip_add(E0, &V1, E2, F3, IRQ_TYPE_NONE)
+ gpiochip_irqchip_add_nested(E0, &V1, E2, F3, IRQ_TYPE_NONE)
//# pattern-4, witnesses: 6
@@
expression E0;
expression E2;
expression V1;
@@
- gpiochip_set_chained_irqchip(E0, &V1, E2, NULL)
+ gpiochip_set_nested_irqchip(E0, &V1, E2)
//# pattern-6, witnesses: 3
@@
expression E0;
@@
- E0->irq_parent
+ E0->irq_chained_parent
