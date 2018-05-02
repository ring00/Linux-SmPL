//# pattern-3, witnesses: 5
@@
expression E0;
expression ME1;
@@
- configfs_depend_item(E0, &ME1.cg_item)
+ target_depend_item(&ME1.cg_item)
//# pattern-4, witnesses: 4
@@
expression E0;
expression ME1;
@@
- configfs_undepend_item(E0->se_tpg_tfo->tf_subsys, &ME1.cg_item)
+ target_undepend_item(&ME1.cg_item)
//# pattern-5, witnesses: 2
@@
expression E0;
expression V1;
@@
- E0->tf_subsys = V1;
