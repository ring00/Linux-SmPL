//# pattern-3, witnesses: 3
@@
identifier s;
@@
 struct svc_version s = {
-    .vs_hidden = 1,
+    .vs_hidden = true,
 };
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct svc_version s = {
-    .vs_hidden = 0,
 };
