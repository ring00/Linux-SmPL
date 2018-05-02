//# pattern-1, witnesses: 3
@@
expression ME0;
@@
- ME0 = CURRENT_TIME;
+ ktime_get_real_ts(&ME0);
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct timespec s = {
 };
