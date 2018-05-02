//# pattern-3, witnesses: 2
@@
identifier fn;
identifier iommu;
identifier link;
@@
 void fn(struct iommu_device * iommu, struct device * link)
 {
     <...
- &iommu->dev.kobj
+ &iommu->dev->kobj
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier iommu;
identifier link;
@@
 int iommu_device_link(struct iommu_device * iommu, struct device * link)
 {
     <...
- &iommu->dev.kobj
+ &iommu->dev->kobj
     ...>
 }
