//# pattern-10, witnesses: 6
@@
identifier s;
@@
- struct cros_ec_command s = {
+ struct cros_ec_command * s = {
 };
//# pattern-9, witnesses: 4
@@
expression E0;
@@
- E0->indata
+ E0->data
//# pattern-20, witnesses: 4
@@
expression E0;
@@
- E0->outdata
+ E0->data
