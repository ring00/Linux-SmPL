//# pattern-4, witnesses: 3
@@
expression F0;
identifier channel;
identifier fn;
@@
 void fn(struct vmbus_channel * channel)
 {
     <...
- struct hv_per_cpu_context * hv_cpu = hv_cpu;
- hv_cpu = per_cpu_ptr();
- F0(&hv_cpu->event_dpc);
+ F0(&channel->callback_event);
     ...>
 }
