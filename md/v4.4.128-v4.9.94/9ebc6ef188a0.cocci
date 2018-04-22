//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- get_seconds(listE0)
+ ktime_get_real_seconds(listE0)
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 = mddev->utime
//+ E0 = clamp_t(, mddev->utime, 0)
+ E0 = clamp_t(time64_t, mddev->utime, 0, U32_MAX)
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0 = mddev->ctime
//+ E0 = clamp_t(, mddev->ctime, 0)
+ E0 = clamp_t(time64_t, mddev->ctime, 0, U32_MAX)
