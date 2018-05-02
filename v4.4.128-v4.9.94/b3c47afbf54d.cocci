//# pattern-4, witnesses: 11
@@
@@
- bcma_cc_write32
+ bcma_pmu_write32
//# pattern-1, witnesses: 9
@@
@@
- bcma_cc_read32
+ bcma_pmu_read32
//# pattern-9, witnesses: 3
@@
@@
- bcma_cc_maskset32
+ bcma_pmu_maskset32
//# pattern-2, witnesses: 2
@@
expression E1;
expression E3;
expression IL0;
expression IL2;
@@
- bcma_cc_write32(cc, IL0, E1);
- bcma_cc_write32(cc, IL2, E3);
+ bcma_pmu_write32(cc, IL0, E1);
+ bcma_pmu_write32(cc, IL2, E3);
//# pattern-10, witnesses: 2
@@
@@
- bcma_cc_mask32
+ bcma_pmu_mask32
