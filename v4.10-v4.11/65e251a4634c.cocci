//# pattern-1, witnesses: 2
@@
expression E0;
@@
- of_iommu_get_ops(E0)
+ iommu_get_instance(&E0->fwnode)
