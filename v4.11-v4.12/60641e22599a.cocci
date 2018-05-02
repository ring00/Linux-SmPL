//# pattern-1, witnesses: 2
@@
statement S0;
identifier fn;
identifier mfc_dev;
@@
 void fn(struct s5p_mfc_dev * mfc_dev)
 {
     <...
- if (exynos_is_iommu_available(dev)) { S0 }
+ if (exynos_is_iommu_available(dev) || !IS_TWOPORT(mfc_dev)) { S0 }
     ...>
 }
