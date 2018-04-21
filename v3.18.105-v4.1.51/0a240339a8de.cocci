//# pattern-2, witnesses: 5
@@
identifier s;
@@
 const struct quotactl_ops s = {
-    .get_info = dquot_get_dqinfo,
+    .get_state = dquot_get_state,
 };
