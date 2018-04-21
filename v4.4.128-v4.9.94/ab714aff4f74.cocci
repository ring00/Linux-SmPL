//# pattern-1, witnesses: 2
@@
@@
- handle->h_lockdep_map
+ journal->j_trans_commit_map
//# pattern-3, witnesses: 2
@@
@@
- lock_map_release
+ rwsem_release
