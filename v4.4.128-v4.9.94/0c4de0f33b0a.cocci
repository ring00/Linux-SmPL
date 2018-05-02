//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->bio = E1->biotail = NULL;
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0->__sector = -1;
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0->__data_len = 0;
