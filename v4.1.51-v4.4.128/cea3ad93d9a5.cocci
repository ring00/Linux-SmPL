//# pattern-2, witnesses: 2
@@
identifier fn;
identifier genpd;
@@
 int fn(struct generic_pm_domain * genpd)
 {
     <...
- if (genpd->cpuidle_data) {
- }
     ...>
 }
