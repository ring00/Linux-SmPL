//# pattern-27, witnesses: 2
@@
statement S0;
@@
- if (maint_io.offset % 4 || maint_io.length == 0 || maint_io.length % 4) { S0 }
+ if (maint_io.offset % 4 || maint_io.length == 0 || maint_io.length % 4 || maint_io.length + maint_io.offset > RIO_MAINT_SPACE_SZ) { S0 }
