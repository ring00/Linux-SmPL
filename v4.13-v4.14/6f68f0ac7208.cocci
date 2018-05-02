//# pattern-1, witnesses: 2
@@
@@
- if (down_interruptible(&hdev->driver_lock)) {
- return -EINTR;
- }
- if (down_interruptible(&hdev->driver_input_lock)) {
- }
+ if (down_interruptible(&hdev->driver_input_lock)) {
+ }
