//# pattern-1, witnesses: 35
@@
expression E0;
@@
- E0->d_u.d_child
+ E0->d_child
//# pattern-6, witnesses: 15
@@
expression E0;
@@
- E0->d_alias
+ E0->d_u.d_alias
//# pattern-2, witnesses: 12
@@
expression E0;
@@
- list_entry(E0)
+ list_entry(E0, )
//# pattern-3, witnesses: 2
@@
@@
- &dentry->d_alias
+ &dentry->d_u.d_alias
