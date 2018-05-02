//# pattern-1, witnesses: 3
@@
expression F1;
expression ME0;
@@
- ME0.bind_mw = F1;
//# pattern-13, witnesses: 3
@@
expression list listE0;
@@
- ib_dealloc_mw(listE0)
+ uverbs_dealloc_mw(listE0)
