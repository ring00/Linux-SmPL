//# pattern-1, witnesses: 7
@r0@
identifier i, fn;
@@
struct irq_domain_ops i = {
    .activate = fn,
};
@@
typedef bool;
identifier domain;
identifier irq_data;
identifier r0.fn;
@@
- void fn(struct irq_domain * domain, struct irq_data * irq_data)
+ int fn(struct irq_domain * domain, struct irq_data * irq_data, bool early)
 {
     ...
+ return 0;
 }
