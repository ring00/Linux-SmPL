//# pattern-1, witnesses: 3
@@
@@
- if (group->noiommu && !capable(CAP_SYS_RAWIO)) {
- }
//# pattern-4, witnesses: 3
@@
expression E0;
@@
- vfio_iommu_group_put(E0, &pdev->dev)
+ iommu_group_put(E0)
//# pattern-5, witnesses: 2
@@
@@
- if (group->noiommu) {
- }
//# pattern-6, witnesses: 2
@@
identifier arg;
identifier container;
identifier fn;
@@
 long fn(struct vfio_container * container, unsigned long arg)
 { ... }
