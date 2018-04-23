//# pattern-3, witnesses: 2
@@
expression BO1;
expression E0;
@@
- if (E0 != BO1) {
- PRINTK();
- return -ENOMEM;
- }
+ BUILD_BUG_ON;
