//# pattern-2, witnesses: 10
@@
expression F1;
identifier s;
@@
 struct target_core_fabric_ops s = {
-    .get_fabric_proto_ident = F1,
 };
//# pattern-3, witnesses: 4
@@
expression E0;
@@
- E0 = tpg->se_tpg_tfo->get_fabric_proto_ident(tpg) << 4
+ E0 = tpg->proto_id << 4
//# pattern-6, witnesses: 2
@@
@@
- dest_tf_ops->get_fabric_proto_ident(dest_se_tpg)
+ dest_se_tpg->proto_id
