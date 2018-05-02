//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier bus;
@@
 struct iommu_domain * iommu_domain_alloc(struct bus_type * bus)
 {
     <...
- const struct iommu_ops * ops = ops;
- ops = bus->iommu_ops;
- if (ops->domain_alloc) {
- domain = ops->domain_alloc(IOMMU_DOMAIN_UNMANAGED);
- }
+ domain = bus->iommu_ops->domain_alloc(IOMMU_DOMAIN_UNMANAGED);
     ...>
 }
