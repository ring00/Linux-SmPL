//# pattern-2, witnesses: 25
@@
expression E0;
@@
- E0->d_u.d_child
+ E0->d_child
//# pattern-1, witnesses: 17
@@
expression E0;
@@
- E0->d_alias
+ E0->d_u.d_alias
//# pattern-3, witnesses: 8
@@
expression V0;
@@
- list_entry(V0)
+ list_entry(V0, )
//# pattern-4, witnesses: 4
@@
identifier PV0;
typedef bool;
identifier dentry;
identifier exchange;
identifier target;
@@
 void __d_move(struct dentry * dentry, struct dentry * target, bool exchange)
 {
     <...
- &PV0->d_u.d_child
+ &PV0->d_child
     ...>
 }
//# pattern-12, witnesses: 2
@@
@@
- WARN_ON(!hlist_unhashed(&dentry->d_alias));
