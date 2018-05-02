//# pattern-2, witnesses: 3
@@
expression E0;
@@
- vhost_kvzalloc(E0)
+ kvzalloc(E0, GFP_KERNEL)
