//# pattern-2, witnesses: 11
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
expression E7;
expression list listE0;
@@
- get_user_pages8(get_current(listE0), E1, E2, E3, E4, E5, E6, E7)
+ get_user_pages6(E2, E3, E4, E5, E6, E7)
//# pattern-1, witnesses: 5
@@
expression E1;
expression E2;
expression E3;
expression E4;
expression E6;
expression IL5;
expression list listE0;
@@
- get_user_pages_unlocked7(get_current(listE0), E1, E2, E3, E4, IL5, E6)
+ get_user_pages_unlocked5(E2, E3, E4, IL5, E6)
