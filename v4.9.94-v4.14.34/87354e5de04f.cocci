//# pattern-1, witnesses: 2
@@
expression E0;
expression ME1;
@@
- if (E0) {
- mapping_set_error(ME1, -EIO);
- }
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- set_buffer_write_io_error(listE0)
+ mark_buffer_write_io_error(listE0)
