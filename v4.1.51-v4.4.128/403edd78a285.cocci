//# pattern-3, witnesses: 18
@@
expression list listE0;
@@
- spin_unlock_irq(listE0)
+ mutex_unlock(listE0)
//# pattern-6, witnesses: 18
@@
expression E0;
@@
- E0->acl_node_lock
+ E0->acl_node_mutex
//# pattern-2, witnesses: 15
@@
expression E0;
@@
- spin_lock_irq(&E0->acl_node_lock)
+ mutex_lock
//# pattern-1, witnesses: 2
@@
identifier dev;
identifier lun;
identifier tpg;
@@
 int core_dev_add_lun(struct se_portal_group * tpg, struct se_device * dev, struct se_lun * lun)
 {
     <...
- &tpg->acl_node_lock;
     ...>
 }
//# pattern-5, witnesses: 2
@@
identifier lun;
identifier tpg;
@@
 void core_clear_lun_from_tpg(struct se_lun * lun, struct se_portal_group * tpg)
 {
     <...
- &tpg->acl_node_lock;
     ...>
 }
