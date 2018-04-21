//# pattern-1, witnesses: 6
@@
expression E0;
expression E2;
expression V1;
@@
- pagevec_lookup_range(&pvec, E0, &V1, E2, PAGEVEC_SIZE)
+ pagevec_lookup_range(&pvec, E0, &V1, E2)
//# pattern-2, witnesses: 2
@@
expression E0;
expression V1;
@@
- pagevec_lookup(&pvec, E0, &V1, PAGEVEC_SIZE)
+ pagevec_lookup(&pvec, E0, &V1)
