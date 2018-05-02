//# pattern-6, witnesses: 9
@@
@@
- __GFP_WAIT
+ __GFP_DIRECT_RECLAIM
//# pattern-1, witnesses: 7
@@
expression E0;
@@
- E0 & __GFP_WAIT
+ gfpflags_allow_blocking(E0)
//# pattern-2, witnesses: 2
@@
identifier s;
@@
 bool s = {
 };
