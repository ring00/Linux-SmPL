//# pattern-3, witnesses: 2
@@
@@
- tsc200x_set_reset(ts, false);
- usleep_range(100, 500);
- tsc200x_set_reset(ts, true);
+ tsc200x_reset(ts);
