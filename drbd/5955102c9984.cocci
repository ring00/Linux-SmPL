//# pattern-1, witnesses: 89
@@
expression E0;
@@
- mutex_unlock(&E0->i_mutex)
+ inode_unlock(E0)
//# pattern-2, witnesses: 54
@@
expression E0;
@@
- mutex_lock(&E0->i_mutex)
+ inode_lock(E0)
//# pattern-3, witnesses: 5
@@
expression E0;
expression EC1;
@@
- mutex_lock_nested(&E0->i_mutex, EC1)
+ inode_lock_nested(E0, EC1)
//# pattern-9, witnesses: 5
@@
expression E0;
@@
- mutex_trylock(&E0->i_mutex)
+ inode_trylock(E0)
//# pattern-4, witnesses: 2
@@
@@
- mutex_is_locked(&inode->i_mutex)
+ inode_is_locked(inode)
//# pattern-5, witnesses: 2
@@
@@
- libcfs_debug_msg(&__msg_data, "ASSERTION( %s ) failed: \n", "!mutex_trylock(&clobj->cob_inode->i_mutex)")
+ libcfs_debug_msg(&__msg_data, "ASSERTION( %s ) failed: \n", "!inode_trylock(clobj->cob_inode)")
