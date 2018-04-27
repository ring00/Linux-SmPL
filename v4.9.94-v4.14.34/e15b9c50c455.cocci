//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (INVALID_TARGET) { S0 }
+ if (ebt_invalid_target(info->target)) { S0 }
//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (tmp < -NUM_STANDARD_TARGETS || tmp >= 0) { S0 }
+ if (ebt_invalid_target(tmp)) { S0 }
