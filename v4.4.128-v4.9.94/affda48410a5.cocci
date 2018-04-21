//# pattern-1, witnesses: 2
@@
expression list listE0;
@@
- fsnotify_d_move(listE0)
+ fsnotify_update_flags(listE0)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- __fsnotify_d_instantiate(listE0)
+ fsnotify_update_flags(listE0)
