//# pattern-4, witnesses: 2
@@
@@
- irq_create_affinity_masks(dev->irq_affinity, nvec)
+ irq_create_affinity_masks(nvec, &default_affd)
