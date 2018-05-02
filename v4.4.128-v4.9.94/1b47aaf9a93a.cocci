//# pattern-3, witnesses: 5
@@
expression E0;
expression list listE1;
@@
- E0->destroy(listE1)
+ kfree(listE1)
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0->destroy = kfree;
