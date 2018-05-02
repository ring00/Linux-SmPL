//# pattern-1, witnesses: 2
@@
identifier ctrl;
identifier fn;
identifier v4l2_flash;
@@
 int fn(struct v4l2_flash * v4l2_flash, struct v4l2_ctrl * ctrl)
 {
     <...
- &v4l2_flash->iled_cdev->led_cdev
+ v4l2_flash->iled_cdev
     ...>
 }
