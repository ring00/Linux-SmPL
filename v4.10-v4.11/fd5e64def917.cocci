//# pattern-2, witnesses: 3
@@
@@
- ~CMD_T_BUSY | CMD_T_SENT
+ ~CMD_T_SENT
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- CMD_T_ACTIVE | CMD_T_BUSY | E0
+ CMD_T_ACTIVE | E0
