//# pattern-2, witnesses: 28
@@
expression E0;
@@
- E0->d_u.d_child
+ E0->d_child
//# pattern-1, witnesses: 14
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
