//# pattern-1, witnesses: 5
@r0@
identifier fn;
expression P0, P1, P2;
@@
gpiochip_set_chained_irqchip(P0, P1, P2, fn)
@@
identifier desc;
identifier irq;
identifier r0.fn;
@@
- void fn(unsigned int irq, struct irq_desc * desc)
+ void fn(struct irq_desc * desc)
 { ... }
//# pattern-4, witnesses: 3
@r1@
identifier fn;
expression P0, P2;
@@
irq_set_chained_handler_and_data(P0, fn, P2)
@@
identifier desc;
identifier r1.fn;
@@
 void fn(struct irq_desc * desc)
 { ... }
