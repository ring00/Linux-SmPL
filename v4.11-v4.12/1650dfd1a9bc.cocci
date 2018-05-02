//# pattern-2, witnesses: 2
@@
expression EC1;
expression V0;
identifier iommu;
@@
 void init_iommu_perf_ctr(struct amd_iommu * iommu)
 {
     <...
- (0 != iommu_pc_get_set_reg_val(iommu, 0, 0, 0, &V0, EC1))
+ (iommu_pc_get_set_reg(iommu, 0, 0, 0, &V0, EC1))
     ...>
 }
