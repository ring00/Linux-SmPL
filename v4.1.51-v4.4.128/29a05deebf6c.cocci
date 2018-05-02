//# pattern-16, witnesses: 39
@@
expression E0;
expression list listE1;
@@
- spin_unlock_irq(&E0->device_list_lock)
+ rcu_read_unlock(listE1)
//# pattern-9, witnesses: 19
@@
expression E0;
expression list listE1;
@@
- spin_lock_irq(&E0->device_list_lock)
+ rcu_read_lock(listE1)
//# pattern-2, witnesses: 8
@@
@@
- deve = nacl->device_list[lacl->mapped_lun];
- if (!deve->se_lun || !deve->se_lun_acl) {
- }
+ deve = target_nacl_find_deve(nacl, lacl->mapped_lun);
+ if (!deve) {
+ }
//# pattern-3, witnesses: 7
@@
@@
- deve = nacl->device_list[lacl->mapped_lun];
- if (!deve->se_lun || !deve->se_lun_acl) {
- }
+ deve = target_nacl_find_deve(nacl, lacl->mapped_lun);
+ if (!deve) {
+ }
//# pattern-18, witnesses: 3
@@
identifier cmd;
identifier fn;
typedef sense_reason_t;
@@
 sense_reason_t fn(struct se_cmd * cmd)
 {
     <...
- cmd->se_deve->mapped_lun
+ cmd->orig_fe_lun
     ...>
 }
//# pattern-20, witnesses: 3
@@
expression E0;
@@
- atomic_dec_mb(&E0->pr_ref_count)
+ kref_put(&E0->pr_kref, target_pr_kref_release)
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- E0->pr_ref_count
+ E0->pr_kref
//# pattern-34, witnesses: 2
@@
expression E0;
@@
- E0 = deve->se_lun
+ E0 = rcu_dereference(deve->se_lun)
