//# pattern-9, witnesses: 2
@@
identifier s;
@@
- struct mlxreg_hotplug_device [2] s = {
+ struct i2c_board_info [2] s = {
-    . = ,
-    . = ,
 };
//# pattern-25, witnesses: 2
@@
expression E0;
@@
- E0->dwork
+ E0->dwork_irq
