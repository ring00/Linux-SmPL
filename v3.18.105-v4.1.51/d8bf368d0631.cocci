//# pattern-1, witnesses: 3
@@
expression IL0;
@@
- IRQF_DISABLED | IL0
+ IL0
//# pattern-2, witnesses: 3
@@
@@
- IRQF_DISABLED
+ 0
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- E0 | IRQF_DISABLED
+ E0
