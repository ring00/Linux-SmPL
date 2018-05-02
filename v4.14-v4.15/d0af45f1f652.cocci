//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0 && genpd_dev_active_wakeup(genpd, dev)
+ E0 && genpd_is_active_wakeup(genpd->flags)
