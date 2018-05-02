//# pattern-2, witnesses: 4
@@
expression V1;
identifier s;
@@
- struct configfs_attribute *[31] s = {
+ struct configfs_attribute *[30] s = {
-    . = &V1.attr,
 };
