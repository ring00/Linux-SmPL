//# pattern-17, witnesses: 6
@@
expression ME0;
@@
- kfree(ME0);
//# pattern-12, witnesses: 3
@@
expression E0;
@@
- E0 = NULL;
//# pattern-13, witnesses: 3
@@
expression E0;
@@
- struct config_group ** ports_group = ports_group;
- ports_group = kcalloc(ports_num + 1, sizeof(unsigned long), GFP_KERNEL);
- E0;
//# pattern-34, witnesses: 3
@@
expression ME4;
type T0;
type T2;
expression V1;
expression V3;
@@
- T0  = V1;
- T2  = V3;
+ configfs_remove_default_groups(&ME4);
//# pattern-1, witnesses: 2
@@
expression ME0;
@@
- struct config_item * df_item = df_item;
- struct config_group * stats_cg = stats_cg;
- int i = i;
- stats_cg = &ME0;
- kfree(stats_cg->default_groups);
+ configfs_remove_default_groups(&ME0);
//# pattern-8, witnesses: 2
@@
expression ME5;
type T0;
type T2;
expression V1;
expression V3;
expression V4;
@@
- T0  = V1;
- T2  = V3;
- int i = i;
- V4 = &ME5;
+ configfs_remove_default_groups(&ME5);
//# pattern-28, witnesses: 2
@@
expression ME2;
expression ME5;
expression V0;
expression V1;
expression V3;
expression V4;
expression V6;
@@
- struct config_item * df_item = df_item;
- struct config_group *  = V0;
- int i = i;
- V1 = &ME2.stat_group;
- kfree(V3->default_groups);
- V4 = &ME5;
- kfree(V6->default_groups);
+ configfs_remove_default_groups(&ME2.stat_group);
+ configfs_remove_default_groups(&ME5);
