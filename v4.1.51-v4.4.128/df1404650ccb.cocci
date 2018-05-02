//# pattern-4, witnesses: 3
@@
expression E0;
@@
- E0 & FIF_OTHER_BSS | FIF_PROMISC_IN_BSS
+ E0 & FIF_OTHER_BSS
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- FIF_PROMISC_IN_BSS | FIF_OTHER_BSS | E0
+ FIF_OTHER_BSS | E0
