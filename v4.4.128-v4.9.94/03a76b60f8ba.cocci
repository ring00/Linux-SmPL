//# pattern-3, witnesses: 3
@@
expression E0;
@@
- iommu_group_put(E0)
+ vfio_iommu_group_put(E0, &pdev->dev)
