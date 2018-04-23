//# pattern-5, witnesses: 7
@@
expression BO0;
expression E1;
expression E2;
@@
- BO0 || nf_ct_is_untracked(ct)
+ E1 BO0 E2
//# pattern-2, witnesses: 5
@@
expression E0;
@@
- if (nf_ct_is_untracked(ct)) {
- return E0;
- }
//# pattern-1, witnesses: 4
@@
statement S0;
@@
- if (ct && !nf_ct_is_untracked(ct)) { S0 }
+ if (ct) { S0 }
