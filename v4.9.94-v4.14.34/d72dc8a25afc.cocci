//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
expression V2;
@@
- nr_pages = pagevec_lookup(&pvec, E0, index, E1);
- index = pvec.pages[V2 - 1]->index + 1;
+ nr_pages = pagevec_lookup(&pvec, E0, &index, E1);
