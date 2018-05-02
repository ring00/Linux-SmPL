//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0->timestamp_flags & V4L2_BUF_FLAG_TIMESTAMP_MASK != V4L2_BUF_FLAG_TIMESTAMP_COPY
+ !E0->copy_timestamp
