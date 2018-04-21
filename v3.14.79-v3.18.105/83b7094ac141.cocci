//# pattern-1, witnesses: 6
@@
expression E0;
@@
- E0->dqi_maxilimit
+ E0->dqi_max_ino_limit
//# pattern-4, witnesses: 2
@@
expression ME0;
identifier di;
identifier dquot;
@@
 int do_set_dqblk(struct dquot * dquot, struct qc_dqblk * di)
 {
     <...
- stoqb(ME0) > dqi->dqi_maxblimit
+ ME0 > dqi->dqi_max_spc_limit
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->dqi_maxblimit
+ E0->dqi_max_spc_limit
