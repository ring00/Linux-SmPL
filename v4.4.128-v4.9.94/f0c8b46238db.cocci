//# pattern-2, witnesses: 9
@@
expression E0;
@@
- E0->c_lru_list_lock
+ E0->c_list_lock
//# pattern-4, witnesses: 9
@@
@@
- e_lru_list
+ e_list
//# pattern-6, witnesses: 4
@@
expression E0;
@@
- E0->c_lru_list
+ E0->c_list
