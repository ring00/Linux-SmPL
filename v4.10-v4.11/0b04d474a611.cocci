//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- drm_mm_scan_init(&scan, E0, E1, 0, 0)
+ drm_mm_scan_init(&scan, E0, E1, 0, 0, 0)
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- drm_mm_scan_init_with_range(&scan, mm, size, alignment, E0, range_start, range_end)
+ drm_mm_scan_init_with_range(&scan, mm, size, alignment, E0, range_start, range_end, mode->create_flags)
