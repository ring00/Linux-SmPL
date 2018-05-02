//# pattern-1, witnesses: 9
@@
expression E0;
@@
- E0->ops
+ E0
//# pattern-2, witnesses: 2
@r0@
identifier i, fn;
@@
struct iommu_ops i = {
    .map_sg = fn,
};
@@
identifier domain;
identifier iova;
identifier nents;
identifier prot;
identifier sg;
@@
 size_t default_iommu_map_sg(struct iommu_domain * domain, unsigned long iova, struct scatterlist * sg, unsigned int nents, int prot)
 {
     <...
- domain->ops
+ domain
     ...>
 }
