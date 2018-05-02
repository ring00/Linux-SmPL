//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
expression V2;
@@
- E0 = E1->planes[V2]
+ E0 = E1->planes[V2].ptr
