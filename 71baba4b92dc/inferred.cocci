//# pattern-2, witnesses: 33
@@
@@
- __GFP_WAIT
+ __GFP_RECLAIM
//# pattern-4, witnesses: 4
@@
expression E0;
@@
- E0.ignore_gfp_wait
+ E0.ignore_gfp_reclaim
//# pattern-3, witnesses: 3
@@
@@
- __GFP_WAIT
+ __GFP_DIRECT_RECLAIM
