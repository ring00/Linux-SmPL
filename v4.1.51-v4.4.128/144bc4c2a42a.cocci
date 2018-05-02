//# pattern-1, witnesses: 5
@@
expression F1;
expression F2;
identifier s;
@@
 const struct target_core_fabric_ops s = {
-    .tpg_alloc_fabric_acl = F1,
-    .tpg_release_fabric_acl = F2,
+    .node_acl_size = sizeof(unsigned long),
 };
//# pattern-3, witnesses: 5
@@
expression F1;
expression F2;
identifier s;
@@
 struct target_core_fabric_ops s = {
-    .tpg_alloc_fabric_acl = F1,
-    .tpg_release_fabric_acl = F2,
 };
//# pattern-4, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- E0->tpg_release_fabric_acl(E1, E2)
+ kfree(E2)
//# pattern-2, witnesses: 2
@@
expression ME0;
identifier tfo;
@@
 int target_fabric_tf_ops_check(const struct target_core_fabric_ops * tfo)
 {
     <...
- if (!ME0) {
- pr_err;
- return -EINVAL;
- }
     ...>
 }
