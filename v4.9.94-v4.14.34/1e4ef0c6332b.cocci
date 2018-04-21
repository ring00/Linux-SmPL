//# pattern-2, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression EC0;
@@
- __send_cap(mdsc, cap, EC0, E1, E2, E3, E4, E5, oldest_flush_tid)
+ __send_cap(mdsc, cap, EC0, false, E1, E2, E3, E4, E5, oldest_flush_tid)
