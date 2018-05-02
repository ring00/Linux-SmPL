//# pattern-4, witnesses: 7
@@
@@
- return NULL;
+ return ERR_PTR(-ENOMEM);
//# pattern-3, witnesses: 2
@@
expression list listE0;
@@
- IS_ERR_OR_NULL(listE0)
+ IS_ERR(listE0)
