//# pattern-1, witnesses: 4
@@
expression E0;
@@
- E0.ph
+ E0.ph_prepare
//# pattern-2, witnesses: 2
@@
@@
- SWITCHDEV_TRANS_COMMIT
+ false
//# pattern-3, witnesses: 2
@@
@@
- SWITCHDEV_TRANS_PREPARE
+ true
