//# pattern-3, witnesses: 3
@@
expression V0;
@@
- V0 = -ENOMEM;
//# pattern-2, witnesses: 2
@@
expression S1;
expression V0;
expression V2;
@@
- V0 = kobject_create_and_add(S1, fs_kobj);
- if (!V2) {
- return -ENOMEM;
- }
+ err = sysfs_create_mount_point(fs_kobj, S1);
+ if (err) {
+ return err;
+ }
//# pattern-5, witnesses: 2
@@
expression S1;
expression V0;
expression V2;
@@
- V0 = kobject_create_and_add(S1, kernel_kobj);
- if (!V2) {
- return -EINVAL;
- }
+ retval = sysfs_create_mount_point(kernel_kobj, S1);
+ if (retval) {
+ return retval;
+ }
//# pattern-8, witnesses: 2
@@
expression S1;
expression V0;
expression V2;
expression V3;
@@
- V0 = kobject_create_and_add(S1, V2);
- if (!V3) {
- }
+ err = sysfs_create_mount_point(V2, S1);
+ if (err) {
+ }
