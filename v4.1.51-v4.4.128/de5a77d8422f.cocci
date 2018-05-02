//# pattern-1, witnesses: 2
@@
expression E0;
expression ME1;
@@
- if (E0) {
- nr_pages = min(nr_pages, ME1);
- return BP_DONE;
- }
