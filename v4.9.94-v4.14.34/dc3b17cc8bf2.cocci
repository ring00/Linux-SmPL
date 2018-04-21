//# pattern-1, witnesses: 19
@@
expression E0;
@@
- &E0->backing_dev_info
+ E0->backing_dev_info
//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->backing_dev_info.congested_fn = E1
+ E0->backing_dev_info->congested_fn = E1
//# pattern-3, witnesses: 3
@@
expression E0;
@@
- E0->backing_dev_info.capabilities
+ E0->backing_dev_info->capabilities
//# pattern-5, witnesses: 3
@@
expression E0;
@@
- E0->backing_dev_info.dev
+ E0->backing_dev_info->dev
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- q->backing_dev_info.io_pages = E0
+ q->backing_dev_info->io_pages = E0
//# pattern-10, witnesses: 2
@@
@@
- &q->backing_dev_info.laptop_mode_wb_timer
+ &q->backing_dev_info->laptop_mode_wb_timer
//# pattern-13, witnesses: 2
@@
expression E0;
@@
- q->backing_dev_info.ra_pages = E0
+ q->backing_dev_info->ra_pages = E0
