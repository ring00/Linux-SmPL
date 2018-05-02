//# pattern-7, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
expression IL1;
identifier domain;
identifier iova;
identifier size;
@@
- size_t iommu_unmap(struct iommu_domain * domain, unsigned long iova, size_t size)
+ size_t iommu_unmap(struct iommu_domain * domain, unsigned long iova, size_t size)
 {
     <...
- if (unlikely(E0)) {
- return -IL1;
- }
     ...>
 }
