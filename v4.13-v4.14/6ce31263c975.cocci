//# pattern-1, witnesses: 2
@@
expression E0;
@@
- BUG_ON(!E0);
+ WARN_ON(!E0);
