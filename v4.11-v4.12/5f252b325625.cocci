//# pattern-1, witnesses: 4
@@
expression E0;
@@
- ktime_to_timespec(E0)
+ ktime_to_timespec64(E0)
//# pattern-4, witnesses: 4
@@
expression list listE0;
@@
- timespec_to_ktime(listE0)
+ timespec64_to_ktime(listE0)
