//# pattern-3, witnesses: 7
@@
@@
- if (!IS_ERR(acl)) {
- set_cached_acl(inode, type, acl);
- }
//# pattern-7, witnesses: 2
@@
expression ME1;
expression V0;
expression V2;
expression V3;
identifier inode;
@@
 void forget_all_cached_acls(struct inode * inode)
 {
     <...
- struct posix_acl * old_access = old_access;
- V0 = ME1;
- if (V2 != ACL_NOT_CACHED) {
- posix_acl_release(V3);
- }
     ...>
 }
//# pattern-11, witnesses: 2
@@
identifier acl;
identifier inode;
identifier type;
@@
 void set_cached_acl(struct inode * inode, int type, struct posix_acl * acl)
 {
     <...
- &inode->i_lock;
     ...>
 }
//# pattern-13, witnesses: 2
@@
expression E0;
expression ME1;
identifier inode;
@@
 void __destroy_inode(struct inode * inode)
 {
     <...
- E0 && ME1 != ACL_NOT_CACHED
+ E0 && !is_uncached_acl(ME1)
     ...>
 }
//# pattern-14, witnesses: 2
@@
@@
- acl == ACL_NOT_CACHED
+ is_uncached_acl(acl)
