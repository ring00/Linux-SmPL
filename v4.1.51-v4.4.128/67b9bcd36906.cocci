//# pattern-1, witnesses: 2
@@
expression BO0;
expression E2;
expression E3;
statement S1;
@@
- if (BO0 || JEDEC_MFR(info) == SNOR_MFR_WINBOND) { S1 }
+ if (E2 BO0 E3) { S1 }
