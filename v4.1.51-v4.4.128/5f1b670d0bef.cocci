//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- if (setup_clone(clone, rq, tio, E0)) {
- return E1;
- }
+ setup_clone(clone, rq, tio);
