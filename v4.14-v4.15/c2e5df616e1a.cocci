//# pattern-1, witnesses: 2
@r0@
identifier fn;
expression P0, P1;
@@
sprintf(P0, P1, fn)
@@
identifier channel;
identifier monitor_page;
identifier r0.fn;
typedef u32;
@@
- u32 fn(struct vmbus_channel * channel, struct hv_monitor_page * monitor_page)
+ u32 fn(const struct vmbus_channel * channel, const struct hv_monitor_page * monitor_page)
 { ... }
