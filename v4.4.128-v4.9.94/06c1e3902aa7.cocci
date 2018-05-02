//# pattern-1, witnesses: 2
@@
@@
- -ENOMEM
+ PTR_ERR(bip)
//# pattern-2, witnesses: 2
@@
@@
- return NULL;
+ return ERR_PTR(-ENOMEM);
