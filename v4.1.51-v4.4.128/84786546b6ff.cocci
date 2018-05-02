//# pattern-7, witnesses: 3
@@
expression V0;
@@
- spin_lock_init(&V0->lun_acl_lock);
//# pattern-8, witnesses: 3
@@
expression V0;
@@
- INIT_LIST_HEAD(&V0->lun_acl_list);
//# pattern-2, witnesses: 2
@@
identifier lacl;
identifier lun;
identifier tpg;
@@
 int core_dev_del_initiator_node_lun_acl(struct se_portal_group * tpg, struct se_lun * lun, struct se_lun_acl * lacl)
 {
     <...
- &lun->lun_acl_lock;
     ...>
 }
//# pattern-3, witnesses: 2
@@
@@
- &lun->lun_acl_count;
//# pattern-4, witnesses: 2
@@
@@
- &lacl->lacl_list;
//# pattern-5, witnesses: 2
@@
identifier lacl;
identifier lun;
identifier lun_access;
identifier tpg;
typedef u32;
@@
 int core_dev_add_initiator_node_lun_acl(struct se_portal_group * tpg, struct se_lun_acl * lacl, struct se_lun * lun, u32 lun_access)
 {
     <...
- &lun->lun_acl_lock;
     ...>
 }
