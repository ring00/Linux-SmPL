//# pattern-1, witnesses: 89
@@
expression E0;
@@
- mutex_unlock(&E0->i_mutex)
+ inode_unlock(E0)
//# pattern-2, witnesses: 52
@@
expression E0;
@@
- mutex_lock(&E0->i_mutex)
+ inode_lock(E0)
//# pattern-4, witnesses: 5
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
//# pattern-6, witnesses: 3
@@
expression S0;
expression S1;
@@
- libcfs_debug_msg(&__msg_data, "ASSERTION( %s ) failed: \n", S0)
+ libcfs_debug_msg(&__msg_data, "ASSERTION( %s ) failed: \n", S1)
//# pattern-3, witnesses: 2
@@
@@
- mutex_lock(&d_inode(dir)->i_mutex)
+ inode_lock(d_inode(dir))
//# pattern-5, witnesses: 2
@@
@@
- mutex_is_locked(&inode->i_mutex)
+ inode_is_locked(inode)
