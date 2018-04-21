//# pattern-2, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- get_user_pages(E0, E1, E2, 0, E3, NULL)
+ get_user_pages(E0, E1, , E3, NULL)
