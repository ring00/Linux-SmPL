//# pattern-1, witnesses: 2
@@
@@
- HV_X64_MSR_SIMP
+ hv_set_simp
//# pattern-2, witnesses: 2
@@
@@
- rdmsrl(HV_X64_MSR_SIMP, simp.as_uint64)
+ hv_get_simp(simp.as_uint64)
