//# pattern-1, witnesses: 10
@@
expression F1;
expression F2;
expression F3;
identifier s;
@@
 struct target_core_fabric_ops s = {
-    .tpg_get_pr_transport_id = F1,
-    .tpg_get_pr_transport_id_len = F2,
-    .tpg_parse_pr_out_transport_id = F3,
 };
//# pattern-9, witnesses: 2
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
