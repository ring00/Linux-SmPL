//# pattern-7, witnesses: 6
@@
expression E0;
expression EC1;
@@
- dec_bdi_stat(E0, EC1)
+ dec_wb_stat(&E0->wb, EC1)
//# pattern-5, witnesses: 4
@@
expression EC0;
@@
- bdi_stat(bdi, EC0)
+ wb_stat(wb, EC0)
//# pattern-1, witnesses: 2
@@
expression EC0;
@@
- __inc_bdi_stat(bdi, EC0)
+ __inc_wb_stat(&bdi->wb, EC0)
//# pattern-4, witnesses: 2
@@
expression EC0;
identifier bdi;
identifier bdi_dirty;
identifier bdi_thresh;
identifier bg_thresh;
identifier dirty;
identifier start_time;
identifier thresh;
@@
 void __bdi_update_bandwidth(struct backing_dev_info * bdi, unsigned long thresh, unsigned long bg_thresh, unsigned long dirty, unsigned long bdi_thresh, unsigned long bdi_dirty, unsigned long start_time)
 {
     <...
- bdi->bdi_stat[EC0]
+ bdi->wb.stat[EC0]
     ...>
 }
//# pattern-14, witnesses: 2
@@
@@
- inc_bdi_stat(inode_to_bdi(inode), BDI_WRITEBACK)
+ inc_wb_stat(&inode_to_bdi(inode)->wb, WB_WRITEBACK)
//# pattern-16, witnesses: 2
@@
@@
- bdi_writeout_inc(bdi)
+ wb_writeout_inc(&bdi->wb)
