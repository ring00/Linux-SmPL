//# pattern-1, witnesses: 23
@@
expression E0;
@@
- E0->nr_luns
+ E0->all_luns
//# pattern-10, witnesses: 12
@@
expression E0;
@@
- E0->luns_per_chnl
+ E0->nr_luns
//# pattern-5, witnesses: 9
@@
expression E0;
@@
- E0->sec_per_blk
+ E0->sec_per_chk
//# pattern-8, witnesses: 6
@@
expression E0;
@@
- E0->blks_per_lun
+ E0->nr_chks
