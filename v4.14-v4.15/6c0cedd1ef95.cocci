//# pattern-3, witnesses: 3
@@
expression E0;
@@
- mmc_put_card(E0)
+ mmc_put_card(E0, NULL)
//# pattern-5, witnesses: 3
@@
expression E0;
@@
- mmc_get_card(E0)
+ mmc_get_card(E0, NULL)
