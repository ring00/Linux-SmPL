//# pattern-2, witnesses: 5
@@
@@
+ wbc_to_write_flags(wbc)
//# pattern-3, witnesses: 2
@@
@@
- if (wbc->sync_mode == WB_SYNC_ALL) {
- ioend->io_bio->bi_opf |= REQ_SYNC;
- }
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 = REQ_OP_WRITE
+ E0 = REQ_OP_WRITE | wbc_to_write_flags(wbc)
