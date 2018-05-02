//# pattern-35, witnesses: 6
@@
expression E0;
@@
- E0->tpg_lun_lock
+ E0->tpg_lun_mutex
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- E0->lun->unpacked_lun
+ E0->login_lun
//# pattern-7, witnesses: 2
@@
identifier tport;
@@
 int sbp_update_unit_directory(struct sbp_tport * tport)
 {
     <...
- &tport->tpg->se_tpg.tpg_lun_lock;
     ...>
 }
//# pattern-13, witnesses: 2
@@
identifier acl;
identifier tpg;
@@
 void core_tpg_add_node_to_devs(struct se_node_acl * acl, struct se_portal_group * tpg)
 {
     <...
- &tpg->tpg_lun_lock;
     ...>
 }
