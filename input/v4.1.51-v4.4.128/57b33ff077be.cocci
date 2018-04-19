//# pattern-19, witnesses: 9
@@
@@
- cros_ec_cmd_xfer(ec, msg)
+ cros_ec_cmd_xfer(ec->ec_dev, msg)
//# pattern-3, witnesses: 7
@@
identifier s;
@@
- struct cros_ec_device * s = {
+ struct cros_ec_dev * s = {
 };
//# pattern-26, witnesses: 4
@@
expression list listE0;
@@
- alloc_lightbar_cmd_msg(listE0)
+ alloc_lightbar_cmd_msg(ec)
//# pattern-5, witnesses: 3
@@
expression ME0;
@@
- ec_dev->ec_name = ME0;
