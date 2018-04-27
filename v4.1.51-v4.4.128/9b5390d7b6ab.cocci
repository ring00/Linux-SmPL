//# pattern-2, witnesses: 14
@@
expression E0;
@@
- E0->readlock
+ E0->iolock
//# pattern-3, witnesses: 4
@@
expression E0;
@@
- E0->readlock
+ E0->bindlock
