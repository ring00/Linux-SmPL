//# pattern-1, witnesses: 2
@@
identifier mapping;
identifier pages_dirtied;
identifier wb;
@@
 void balance_dirty_pages(struct address_space * mapping, struct bdi_writeback * wb, unsigned long pages_dirtied)
 {
     <...
- bdi_start_background_writeback(bdi)
+ wb_start_background_writeback(wb)
     ...>
 }
