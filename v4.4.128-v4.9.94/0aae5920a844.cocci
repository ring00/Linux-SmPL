//# pattern-1, witnesses: 3
@@
expression IL0;
@@
- fpriv->is_master = IL0;
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0->allowed_master
+ E0->is_master
