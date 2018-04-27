//# pattern-1, witnesses: 21
@@
expression E0;
@@
- mutex_unlock(&E0->i_mutex)
+ inode_unlock(E0)
//# pattern-2, witnesses: 19
@@
expression E0;
@@
- mutex_lock(&E0->i_mutex)
+ inode_lock(E0)
