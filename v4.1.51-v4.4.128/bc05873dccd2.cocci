//# pattern-1, witnesses: 2
@@
identifier mapping;
identifier pages_dirtied;
identifier wb;
@@
 void balance_dirty_pages(struct address_space * mapping, struct bdi_writeback * wb, unsigned long pages_dirtied)
 {
     <...
- writeback_in_progress(bdi)
+ writeback_in_progress(wb)
     ...>
 }
