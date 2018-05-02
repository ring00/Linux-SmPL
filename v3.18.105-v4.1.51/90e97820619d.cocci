//# pattern-3, witnesses: 4
@@
@@
- &rentry->res
+ rentry->res
//# pattern-4, witnesses: 3
@@
@@
- rentry->res.start
+ rentry->res->start
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- rentry->res = E0
+ *rentry->res = E0
