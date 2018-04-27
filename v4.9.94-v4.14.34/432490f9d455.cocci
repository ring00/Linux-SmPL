//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct raw_hashinfo s = {
 };
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 struct proto s = {
+    .diag_destroy = raw_abort,
 };
