//# pattern-1, witnesses: 4
@@
expression V0;
@@
- V0->affinity
+ irq_data_get_affinity_mask(V0)
//# pattern-2, witnesses: 2
@@
@@
- irq_get_irq_data(irq)->affinity
+ irq_get_affinity_mask(irq)
