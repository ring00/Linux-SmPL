//# pattern-1, witnesses: 11
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
expression E6;
@@
- get_user_pages(current, E0, E1, E2, E3, E4, E5, E6)
+ get_user_pages(E1, E2, E3, E4, E5, E6)
//# pattern-2, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E5;
expression IL4;
@@
- get_user_pages_unlocked(current, E0, E1, E2, E3, IL4, E5)
+ get_user_pages_unlocked(E1, E2, E3, IL4, E5)
