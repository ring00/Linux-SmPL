//# pattern-2, witnesses: 12
@@
expression E0;
@@
- E0->irqdomain
+ E0->irq.domain
//# pattern-1, witnesses: 6
@@
expression ME0;
@@
- ME0.irqdomain
+ ME0.irq.domain
//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier first_irq;
identifier gpiochip;
identifier handler;
typedef irq_flow_handler_t;
identifier irqchip;
identifier lock_key;
identifier nested;
identifier type;
@@
 int gpiochip_irqchip_add_key(struct gpio_chip * gpiochip, struct irq_chip * irqchip, unsigned int first_irq, irq_flow_handler_t handler, unsigned int type, bool nested, struct lock_class_key * lock_key)
 {
     <...
- gpiochip->irqdomain
+ gpiochip->irq.domain
     ...>
 }
