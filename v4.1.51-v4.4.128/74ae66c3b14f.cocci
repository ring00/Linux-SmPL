//# pattern-2, witnesses: 2
@@
identifier s;
@@
- const struct attribute_group *[3] s = {
+ const struct attribute_group *[4] s = {
+    . = &nd_numa_attribute_group,
 };
