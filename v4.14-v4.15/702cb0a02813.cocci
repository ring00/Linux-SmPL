//# pattern-3, witnesses: 4
@@
typedef bool;
identifier domain;
identifier early;
identifier fn;
identifier irq_data;
@@
- int fn(struct irq_domain * domain, struct irq_data * irq_data, bool early)
+ int fn(struct irq_domain * domain, struct irq_data * irq_data, bool reserve)
 { ... }
//# pattern-6, witnesses: 2
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
identifier reserve;
@@
 int fn(struct irq_domain * domain, struct irq_data * irq_data, bool reserve)
 { ... }
