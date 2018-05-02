//# pattern-3, witnesses: 3
@@
@@
- struct lirc_dev * d = file->private_data;
+ struct rc_dev * rcdev = file->private_data;
+ struct lirc_dev * d = rcdev->lirc_dev;
//# pattern-9, witnesses: 2
@@
identifier dev;
identifier fn;
@@
 int fn(struct rc_dev * dev)
 {
     <...
- if (dev->driver_type == RC_DRIVER_IR_RAW_TX) {
- return 0;
- }
     ...>
 }
