//# pattern-4, witnesses: 12
@@
identifier s;
@@
 u8 [22] s = {
 };
//# pattern-3, witnesses: 11
@@
@@
- di->chip == BQ27000 || di->chip == BQ27010
+ di->opts & BQ27XXX_O_ZERO
//# pattern-6, witnesses: 2
@@
identifier di;
identifier fn;
@@
 void fn(struct bq27xxx_device_info * di)
 {
     <...
- di->chip == BQ27000 || di->chip == BQ27010
+ di->opts & BQ27XXX_O_ZERO
     ...>
 }
//# pattern-7, witnesses: 2
@@
identifier di;
identifier fn;
@@
 void fn(struct bq27xxx_device_info * di)
 {
     <...
- di->chip == BQ27000 || di->chip == BQ27010
+ di->opts & BQ27XXX_O_ZERO
     ...>
 }
