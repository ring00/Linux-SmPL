//# pattern-1, witnesses: 2
@@
expression E0;
@@
- cancel_work_sync(&E0->buf.work)
+ tty_buffer_cancel_work(E0)
