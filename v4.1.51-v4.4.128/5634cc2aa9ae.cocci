//# pattern-2, witnesses: 8
@@
@@
- wb->bdi
+ wb
//# pattern-1, witnesses: 2
@@
expression E0;
identifier mapping;
identifier pages_dirtied;
identifier wb;
@@
 void balance_dirty_pages(struct address_space * mapping, struct bdi_writeback * wb, unsigned long pages_dirtied)
 {
     <...
- trace_balance_dirty_pages(bdi, sdtc->thresh, sdtc->bg_thresh, sdtc->dirty, sdtc->wb_thresh, sdtc->wb_dirty, dirty_ratelimit, task_ratelimit, pages_dirtied, period, E0, start_time)
+ trace_balance_dirty_pages(wb, sdtc->thresh, sdtc->bg_thresh, sdtc->dirty, sdtc->wb_thresh, sdtc->wb_dirty, dirty_ratelimit, task_ratelimit, pages_dirtied, period, E0, start_time)
     ...>
 }
