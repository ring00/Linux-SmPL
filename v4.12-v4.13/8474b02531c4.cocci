//# pattern-10, witnesses: 6
@@
expression list listE0;
@@
- host1x_channel_free(listE0)
+ host1x_channel_put(listE0)
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- show_all(E0, &o)
+ show_all(E0, &o, true)
