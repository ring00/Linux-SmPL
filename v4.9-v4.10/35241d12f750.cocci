//# pattern-14, witnesses: 8
@@
@@
- mutex_unlock(&genpd->lock)
+ genpd->lock_ops->unlock(genpd)
//# pattern-3, witnesses: 6
@@
@@
- mutex_lock(&genpd->lock)
+ genpd->lock_ops->lock(genpd)
//# pattern-6, witnesses: 6
@@
@@
- mutex_unlock(&genpd->lock)
+ genpd->lock_ops->unlock(genpd)
//# pattern-4, witnesses: 3
@@
@@
- mutex_lock(&genpd->lock)
+ genpd->lock_ops->lock(genpd)
//# pattern-5, witnesses: 2
@@
@@
- mutex_lock(&genpd->lock)
+ genpd->lock_ops->lock(genpd)
//# pattern-7, witnesses: 2
@@
identifier fn;
identifier genpd;
identifier subdomain;
@@
 int fn(struct generic_pm_domain * genpd, struct generic_pm_domain * subdomain)
 {
     <...
- mutex_unlock(&subdomain->lock)
+ subdomain->lock_ops->unlock(subdomain)
     ...>
 }
//# pattern-8, witnesses: 2
@@
identifier fn;
identifier genpd;
identifier subdomain;
@@
 int fn(struct generic_pm_domain * genpd, struct generic_pm_domain * subdomain)
 {
     <...
- mutex_lock_nested(&genpd->lock, SINGLE_DEPTH_NESTING)
+ genpd->lock_ops->lock_nested(genpd, 1)
     ...>
 }
//# pattern-9, witnesses: 2
@@
identifier fn;
identifier genpd;
identifier subdomain;
@@
 int fn(struct generic_pm_domain * genpd, struct generic_pm_domain * subdomain)
 {
     <...
- mutex_lock(&subdomain->lock)
+ subdomain->lock_ops->lock(subdomain)
     ...>
 }
