//# pattern-1, witnesses: 8
@@
expression E0;
expression E1;
expression E2;
expression IL3;
@@
- E0 = blk_execute_rq(E1, E2, rq, IL3);
+ blk_execute_rq(E1, E2, rq, IL3);
+ E0 = ;
//# pattern-7, witnesses: 2
@@
expression E0;
expression IL1;
@@
- if (blk_execute_rq(E0, NULL, rq, IL1)) {
- }
+ blk_execute_rq(E0, NULL, rq, IL1);
