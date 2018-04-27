//# pattern-1, witnesses: 9
@@
@@
- bdi->state
+ bdi->wb.state
//# pattern-8, witnesses: 7
@@
@@
- BDI_async_congested
+ WB_async_congested
//# pattern-7, witnesses: 5
@@
@@
- BDI_registered
+ WB_registered
//# pattern-4, witnesses: 3
@@
@@
- BDI_sync_congested
+ WB_sync_congested
//# pattern-5, witnesses: 3
@@
@@
- BDI_writeback_running
+ WB_writeback_running
//# pattern-3, witnesses: 2
@r0@
identifier fn;
@@
trace_writeback_pages_written(fn)
@@
identifier wb;
@@
 long wb_do_writeback(struct bdi_writeback * wb)
 {
     <...
- wb->bdi
+ wb
     ...>
 }
