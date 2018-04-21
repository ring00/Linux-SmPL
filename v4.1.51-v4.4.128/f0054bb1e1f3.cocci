//# pattern-3, witnesses: 2
@@
expression EC0;
@@
- __bdi_start_writeback(bdi, nr_pages, EC0, reason)
+ __wb_start_writeback(&bdi->wb, nr_pages, EC0, reason)
//# pattern-8, witnesses: 2
@@
@@
- bdi_queue_work(sb->s_bdi, &work)
+ wb_queue_work(&sb->s_bdi->wb, &work)
//# pattern-9, witnesses: 2
@@
@@
- bdi_wakeup_thread(bdi)
+ wb_wakeup(&bdi->wb)
