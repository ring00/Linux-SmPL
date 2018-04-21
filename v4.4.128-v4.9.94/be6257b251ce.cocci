//# pattern-2, witnesses: 3
@@
identifier s;
@@
 const struct dquot_operations s = {
+    .get_next_id = dquot_get_next_id,
 };
//# pattern-1, witnesses: 2
@@
identifier s;
@@
 const struct quotactl_ops s = {
+    .get_nextdqblk = dquot_get_next_dqblk,
 };
