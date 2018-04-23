//# pattern-1, witnesses: 5
@@
expression E0;
@@
- entry->hook == E0
+ entry->state.hook == E0
//# pattern-5, witnesses: 5
@@
@@
- entry->pf
+ entry->state.pf
//# pattern-7, witnesses: 3
@@
@@
- entry->outdev
+ entry->state.out
//# pattern-12, witnesses: 3
@@
@@
- entry->indev
+ entry->state.in
