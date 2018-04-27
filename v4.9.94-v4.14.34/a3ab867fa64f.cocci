//# pattern-3, witnesses: 6
@@
@@
- free
+ list
//# pattern-4, witnesses: 6
@@
expression E0;
@@
- E0->dto_q
+ E0->list
//# pattern-5, witnesses: 5
@@
expression list listE0;
@@
- list_del_init(listE0)
+ list_del(listE0)
//# pattern-2, witnesses: 4
@@
expression ME0;
@@
- list_entry(ME0.next, )
+ list_first_entry(&ME0, )
