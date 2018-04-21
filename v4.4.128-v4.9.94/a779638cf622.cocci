//# pattern-4, witnesses: 5
@@
@@
- buf->ops = NULL;
//# pattern-3, witnesses: 4
@@
expression E0;
expression list listE1;
@@
- E0->release(listE1)
+ pipe_buf_release(listE1)
