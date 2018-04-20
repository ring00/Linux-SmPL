//# pattern-38, witnesses: 7
@@
expression E0;
@@
- E0->node.bytenr
+ E0->bytenr
//# pattern-41, witnesses: 5
@@
@@
- &head->node.refs
+ &head->refs
//# pattern-42, witnesses: 5
@@
@@
- btrfs_put_delayed_ref(&head->node)
+ btrfs_put_delayed_ref_head(head)
//# pattern-35, witnesses: 4
@@
expression E0;
@@
- &E0->node
+ E0
//# pattern-4, witnesses: 2
@@
identifier fs_info;
identifier head;
identifier trans;
@@
 int cleanup_ref_head(struct btrfs_trans_handle * trans, struct btrfs_fs_info * fs_info, struct btrfs_delayed_ref_head * head)
 {
     <...
- head->node.num_bytes
+ head->num_bytes
     ...>
 }
