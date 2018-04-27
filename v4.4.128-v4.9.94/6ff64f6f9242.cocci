//# pattern-3, witnesses: 7
@@
identifier s;
@@
 struct switchdev_obj s = {
+    .orig_dev = dev,
 };
//# pattern-1, witnesses: 3
@@
identifier s;
@@
 struct switchdev_attr s = {
+    .orig_dev = dev,
 };
//# pattern-11, witnesses: 2
@@
identifier s;
@@
 struct switchdev_attr s = {
+    .orig_dev = p->dev,
 };
//# pattern-12, witnesses: 2
@@
identifier s;
@@
 struct switchdev_obj s = {
 };
