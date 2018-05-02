//# pattern-1, witnesses: 2
@@
expression E0;
identifier fn;
identifier lpass;
@@
 void fn(struct exynos_lpass * lpass)
 {
     <...
- regmap_write(lpass->pmu, EXYNOS5433_PAD_RETENTION_AUD_OPTION, E0);
     ...>
 }
