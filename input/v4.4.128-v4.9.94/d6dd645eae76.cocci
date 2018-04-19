//# pattern-2, witnesses: 12
@@
expression ME0;
expression list listE1;
@@
- v4l2_get_timestamp(&ME0.timestamp);
+ ME0.vb2_buf.timestamp = ktime_get_ns(listE1);
//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- v4l2_get_timestamp(&vbuf->timestamp);
+ vb->timestamp = ktime_get_ns(listE0);
