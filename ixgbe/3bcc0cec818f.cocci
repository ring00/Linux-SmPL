//# pattern-2, witnesses: 7
@@
expression E0;
statement S1;
@@
- if (tc_no_actions(E0)) { S1 }
+ if (!tcf_exts_has_actions(E0)) { S1 }
//# pattern-1, witnesses: 3
@@
identifier PV0;
@@
- !tc_single_action(PV0->exts)
+ !tcf_exts_has_one_action(PV0->exts)
