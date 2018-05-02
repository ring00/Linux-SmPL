//# pattern-4, witnesses: 2
@@
identifier fn;
identifier hdq_data;
@@
 int fn(struct hdq_data * hdq_data)
 {
     <...
- OMAP_HDQ_CTRL_STATUS_CLOCKENABLE | OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK
+ OMAP_HDQ_CTRL_STATUS_CLOCKENABLE | OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK | hdq_data->mode
     ...>
 }
