//# pattern-1, witnesses: 2
@@
identifier s;
@@
- struct (anonymous struct at ../drivers/md/dm-ioctl.c:1632:15) s = {
+ struct (anonymous struct at ../drivers/md/dm-ioctl.c:1640:15) s = {
-    .flags = IOCTL_FLAGS_NO_PARAMS,
+    .flags = IOCTL_FLAGS_NO_PARAMS | IOCTL_FLAGS_ISSUE_GLOBAL_EVENT,
 };
