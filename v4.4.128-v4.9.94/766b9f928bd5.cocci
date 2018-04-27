//# pattern-10, witnesses: 3
@@
expression list listE0;
@@
- timespec_to_ktime(listE0)
+ timespec64_to_ktime(listE0)
//# pattern-11, witnesses: 3
@@
expression list listE0;
@@
- ktime_get_ts(listE0)
+ ktime_get_ts64(listE0)
