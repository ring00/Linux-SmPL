//# pattern-3, witnesses: 11
@@
expression E0;
@@
- E0->i
+ E0
//# pattern-11, witnesses: 8
@@
expression ME0;
@@
- ME0.i
+ ME0
//# pattern-7, witnesses: 2
@@
@@
- hlist_entry(srcu_dereference)
+ hlist_entry(srcu_dereference, )
