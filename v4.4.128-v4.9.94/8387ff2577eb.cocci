//# pattern-4, witnesses: 6
@@
identifier dentry;
identifier fn;
identifier qstr;
@@
 int fn(const struct dentry * dentry, struct qstr * qstr)
 {
     <...
- init_name_hash
+ init_name_hash(dentry)
     ...>
 }
//# pattern-6, witnesses: 6
@@
expression E0;
expression E1;
@@
- d_hash(E0, E1)
+ d_hash(E1)
//# pattern-3, witnesses: 4
@@
expression V0;
expression V1;
@@
- full_name_hash(V0.name, V1.len)
+ full_name_hash(parent, V0.name, V1.len)
//# pattern-2, witnesses: 3
@@
expression E0;
expression E1;
@@
- full_name_hash(E0, E1)
+ full_name_hash(dentry, E0, E1)
//# pattern-1, witnesses: 2
@@
@@
- name.hash = full_name_hash(name.name, name.len);
//# pattern-11, witnesses: 2
@@
expression F0;
identifier dentry;
identifier fn;
identifier qstr;
@@
 int fn(const struct dentry * dentry, struct qstr * qstr)
 {
     <...
- __affs_hash_dentry(qstr, F0, affs_nofilenametruncate(dentry))
+ __affs_hash_dentry(dentry, qstr, F0, affs_nofilenametruncate(dentry))
     ...>
 }
