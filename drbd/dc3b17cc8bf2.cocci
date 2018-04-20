//# pattern-1, witnesses: 32
@@
expression E0;
@@
- &E0->backing_dev_info
+ E0->backing_dev_info
//# pattern-2, witnesses: 6
@@
expression E0;
expression E1;
@@
- E0->backing_dev_info.congested_fn = E1
+ E0->backing_dev_info->congested_fn = E1
//# pattern-3, witnesses: 5
@@
expression E0;
expression E1;
@@
- E0->backing_dev_info.ra_pages = E1
+ E0->backing_dev_info->ra_pages = E1
//# pattern-5, witnesses: 5
@@
expression E0;
@@
- E0->backing_dev_info.capabilities
+ E0->backing_dev_info->capabilities
//# pattern-6, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0->backing_dev_info.congested_data = E1
+ E0->backing_dev_info->congested_data = E1
//# pattern-4, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->queue->backing_dev_info.ra_pages < E1
+ E0->queue->backing_dev_info->ra_pages < E1
//# pattern-8, witnesses: 3
@@
expression E0;
@@
- E0->backing_dev_info.dev
+ E0->backing_dev_info->dev
//# pattern-10, witnesses: 2
@@
expression E0;
@@
- E0->queue->backing_dev_info.wb
+ E0->queue->backing_dev_info->wb
//# pattern-11, witnesses: 2
@@
expression E0;
@@
- q->backing_dev_info.io_pages = E0
+ q->backing_dev_info->io_pages = E0
//# pattern-12, witnesses: 2
@@
@@
- &q->backing_dev_info.laptop_mode_wb_timer
+ &q->backing_dev_info->laptop_mode_wb_timer
